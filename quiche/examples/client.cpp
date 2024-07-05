// Copyright (C) 2018-2019, Cloudflare, Inc.
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
// IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
// LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
// NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#include <cinttypes>
#include <cstdio>
#include <cstdlib>
#include <cstdint>

#include <unistd.h>

#include <fcntl.h>
#include <cerrno>

#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

#include <vector>

#include <ev.h>
#include <quiche.h>
#include <string>
#include <thread>
#include <mutex>

#define LOCAL_CONN_ID_LEN 16

#define MAX_DATAGRAM_SIZE 1350

#define SEND_MESSAGE_AMOUNT 100000
std::vector<int> RecvData;
int sendCount = 0;

std::recursive_mutex lock;

struct conn_io {
    ev_timer timer;

    int sock;

    struct sockaddr_storage local_addr;
    socklen_t local_addr_len;

    quiche_conn *conn;
};

static void debug_log(const char *line, void *argp) {
    fprintf(stdout, "%s\n", line);
}

static void flush_egress(struct ev_loop *loop, struct conn_io *conn_io) {
    static uint8_t out[MAX_DATAGRAM_SIZE];

    quiche_send_info send_info;
	std::lock_guard<std::recursive_mutex> lg(lock);
    while (1) {
        ssize_t written = quiche_conn_send(conn_io->conn, out, sizeof(out),
                                           &send_info);

        if (written == QUICHE_ERR_DONE) {
            fprintf(stderr, "done writing\n");
            break;
        }

        if (written < 0) {
            fprintf(stderr, "failed to create packet: %zd\n", written);
            return;
        }

        ssize_t sent = sendto(conn_io->sock, out, written, 0,
                              (struct sockaddr *) &send_info.to,
                              send_info.to_len);

        if (sent != written) {
            perror("failed to send");
            return;
        }

        fprintf(stderr, "sent %zd bytes\n", sent);
    }

    double t = quiche_conn_timeout_as_nanos(conn_io->conn) / 1e9f;
    conn_io->timer.repeat = t;
    ev_timer_again(loop, &conn_io->timer);
}

static void recv_cb(EV_P_ ev_io *w, int revents) {
    static bool req_sent = false;
	static bool proto = false;

    struct conn_io *conn_io = static_cast<struct conn_io *>(w->data);

    static uint8_t buf[65535];

	std::lock_guard<std::recursive_mutex> lg(lock);
    while (1) {
        struct sockaddr_storage peer_addr;
        socklen_t peer_addr_len = sizeof(peer_addr);
        memset(&peer_addr, 0, peer_addr_len);

        ssize_t read = recvfrom(conn_io->sock, buf, sizeof(buf), 0,
                                (struct sockaddr *) &peer_addr,
                                &peer_addr_len);

        if (read < 0) {
            if ((errno == EWOULDBLOCK) || (errno == EAGAIN)) {
                fprintf(stderr, "recv would block\n");
                break;
            }

            perror("failed to read");
            return;
        }

        quiche_recv_info recv_info = {
            (struct sockaddr *) &peer_addr,
            peer_addr_len,

            (struct sockaddr *) &conn_io->local_addr,
            conn_io->local_addr_len,
        };

        ssize_t done = quiche_conn_recv(conn_io->conn, buf, read, &recv_info);

        if (done < 0) {
            fprintf(stderr, "failed to process packet\n");
            continue;
        }

        fprintf(stderr, "recv %zd bytes\n", done);
    }

    fprintf(stderr, "done reading\n");

    if (quiche_conn_is_closed(conn_io->conn)) {
        fprintf(stderr, "connection closed\n");

        ev_break(EV_A_ EVBREAK_ONE);
        return;
    }

	if(quiche_conn_is_established(conn_io->conn) && !proto) {
		const uint8_t *app_proto;
		size_t app_proto_len;

		quiche_conn_application_proto(conn_io->conn, &app_proto, &app_proto_len);

		fprintf(stderr, "connection established: %.*s\n",
				(int) app_proto_len, app_proto);

		proto = true;
	}

    if (quiche_conn_is_established(conn_io->conn) && !req_sent) {

		sendCount++;
		std::string msg = std::to_string(sendCount+10000000);
		const static auto *n = reinterpret_cast<const uint8_t*>(msg.c_str());
		static uint64_t stream_id = 4;
		auto res = quiche_conn_stream_send(conn_io->conn, stream_id, n, msg.size(), true);
		if (res < 0) {
            fprintf(stderr, "failed to send number request : %zd\n", res);
            return;
        }

		stream_id+=4;

		if(sendCount == SEND_MESSAGE_AMOUNT)
		{
			const static uint8_t r[] = "-\r\n";
			if (quiche_conn_stream_send(conn_io->conn, stream_id, r, sizeof(r), true) < 0) {
				fprintf(stderr, "failed to send number request\n");
				return;
			}
			req_sent = true;
		}

//        const static uint8_t r[] = "GET /index.html\r\n";
//        if (quiche_conn_stream_send(conn_io->conn, 4, r, sizeof(r), true) < 0) {
//            fprintf(stderr, "failed to send HTTP request\n");
//            return;
//        }
//
//        fprintf(stderr, "sent HTTP request\n");
//
//        req_sent = true;
    }


	if (quiche_conn_is_established(conn_io->conn)) {
        uint64_t s = 0;

        quiche_stream_iter *readable = quiche_conn_readable(conn_io->conn);

        while (quiche_stream_iter_next(readable, &s)) {
            fprintf(stderr, "stream %" PRIu64 " is readable\n", s);

            bool fin = false;
            ssize_t recv_len = quiche_conn_stream_recv(conn_io->conn, s,
                                                       buf, sizeof(buf),
                                                       &fin);
            if (recv_len < 0) {
                break;
            }

            printf("%.*s\n", (int) recv_len, buf);

			if(buf[0] == '-')
			{
				if (quiche_conn_close(conn_io->conn, true, 0, NULL, 0) < 0) {
                    fprintf(stderr, "failed to close connection\n");
                }
			}
			else
			{
				RecvData.push_back(std::stoi(reinterpret_cast<const char*>(buf)));
			}

//            if (fin) {
//                if (quiche_conn_close(conn_io->conn, true, 0, NULL, 0) < 0) {
//                    fprintf(stderr, "failed to close connection\n");
//                }
//            }
        }

        quiche_stream_iter_free(readable);
    }

    flush_egress(loop, conn_io);
}

static void timeout_cb(EV_P_ ev_timer *w, int revents) {
    struct conn_io *conn_io = static_cast<struct conn_io *>(w->data);

	std::lock_guard<std::recursive_mutex> lg(lock);
    quiche_conn_on_timeout(conn_io->conn);

    fprintf(stderr, "timeout\n");

    flush_egress(loop, conn_io);

    if (quiche_conn_is_closed(conn_io->conn)) {
        quiche_stats stats;
        quiche_path_stats path_stats;

        quiche_conn_stats(conn_io->conn, &stats);
        quiche_conn_path_stats(conn_io->conn, 0, &path_stats);

        fprintf(stderr, "connection closed, recv=%zu sent=%zu lost=%zu rtt=%" PRIu64 "ns\n",
                stats.recv, stats.sent, stats.lost, path_stats.rtt);

        ev_break(EV_A_ EVBREAK_ONE);
        return;
    }
}

void sendJob(struct conn_io *conn_io)
{
	static bool req_sent = false;
	while(!req_sent)
	{
		{
			std::lock_guard<std::recursive_mutex> lg(lock);
			if (quiche_conn_is_established(conn_io->conn) && !req_sent)
			{
				sendCount++;
				std::string msg = std::to_string(sendCount);
				const static auto *n = reinterpret_cast<const uint8_t*>(msg.c_str());
				static uint64_t stream_id = 4;
				auto res = quiche_conn_stream_send(conn_io->conn, stream_id, n, msg.size(), true);
				if (res < 0) {
					fprintf(stderr, "failed to send number request : %zd\n", res);
					break;
				}

				stream_id+=4;

				if(sendCount == SEND_MESSAGE_AMOUNT)
				{
					const static uint8_t r[] = "-\r\n";
					if (quiche_conn_stream_send(conn_io->conn, stream_id, r, sizeof(r), true) < 0) {
						fprintf(stderr, "failed to send number request\n");
						return;
					}
					req_sent = true;
				}
			}
		}
		usleep(100);
	}
}

int main(int argc, char *argv[]) {
//    const char *host = argv[1];
//    const char *port = argv[2];

	const char *host = "127.0.0.1";
	const char *port = "30050";

    const struct addrinfo hints = {
        .ai_family = PF_UNSPEC,
        .ai_socktype = SOCK_DGRAM,
        .ai_protocol = IPPROTO_UDP
    };

    //quiche_enable_debug_logging(debug_log, NULL);

    struct addrinfo *peer;
    if (getaddrinfo(host, port, &hints, &peer) != 0) {
        perror("failed to resolve host");
        return -1;
    }

    int sock = socket(peer->ai_family, SOCK_DGRAM, 0);
    if (sock < 0) {
        perror("failed to create socket");
        return -1;
    }

    if (fcntl(sock, F_SETFL, O_NONBLOCK) != 0) {
        perror("failed to make socket non-blocking");
        return -1;
    }

    quiche_config *config = quiche_config_new(0xbabababa);
    if (config == NULL) {
        fprintf(stderr, "failed to create config\n");
        return -1;
    }

    quiche_config_set_application_protos(config,
        (uint8_t *) "\x0ahq-interop\x05hq-29\x05hq-28\x05hq-27\x08http/0.9", 38);

    quiche_config_set_max_idle_timeout(config, 5000);
    quiche_config_set_max_recv_udp_payload_size(config, MAX_DATAGRAM_SIZE);
    quiche_config_set_max_send_udp_payload_size(config, MAX_DATAGRAM_SIZE);
    quiche_config_set_initial_max_data(config, 10000000);
    quiche_config_set_initial_max_stream_data_bidi_local(config, 1000000);
    quiche_config_set_initial_max_stream_data_uni(config, 1000000);
    quiche_config_set_initial_max_streams_bidi(config, 1000);
    quiche_config_set_initial_max_streams_uni(config, 1000);
    quiche_config_set_disable_active_migration(config, true);

    if (getenv("SSLKEYLOGFILE")) {
      quiche_config_log_keys(config);
    }

    uint8_t scid[LOCAL_CONN_ID_LEN];
    int rng = open("/dev/urandom", O_RDONLY);
    if (rng < 0) {
        perror("failed to open /dev/urandom");
        return -1;
    }

    ssize_t rand_len = read(rng, &scid, sizeof(scid));
    if (rand_len < 0) {
        perror("failed to create connection ID");
        return -1;
    }

    struct conn_io *conn_io = static_cast<struct conn_io *>(malloc(sizeof(*conn_io)));
    if (conn_io == NULL) {
        fprintf(stderr, "failed to allocate connection IO\n");
        return -1;
    }

    conn_io->local_addr_len = sizeof(conn_io->local_addr);
    if (getsockname(sock, (struct sockaddr *)&conn_io->local_addr,
                    &conn_io->local_addr_len) != 0)
    {
        perror("failed to get local address of socket");
        return -1;
    };

    quiche_conn *conn = quiche_connect(host, (const uint8_t *) scid, sizeof(scid),
                                       (struct sockaddr *) &conn_io->local_addr,
                                       conn_io->local_addr_len,
                                       peer->ai_addr, peer->ai_addrlen, config);

    if (conn == NULL) {
        fprintf(stderr, "failed to create connection\n");
        return -1;
    }

    conn_io->sock = sock;
    conn_io->conn = conn;

    ev_io watcher;

    struct ev_loop *loop = ev_default_loop(0);

    ev_io_init(&watcher, recv_cb, conn_io->sock, EV_READ);
    ev_io_start(loop, &watcher);
    watcher.data = conn_io;

    ev_init(&conn_io->timer, timeout_cb);
    conn_io->timer.data = conn_io;

    flush_egress(loop, conn_io);

	// std::thread th(sendJob, conn_io);

    ev_loop(loop, 0);

	// th.join();

    freeaddrinfo(peer);

    quiche_conn_free(conn);

    quiche_config_free(config);

	printf("Recv Size : %d\n", (int)RecvData.size());

    return 0;
}
