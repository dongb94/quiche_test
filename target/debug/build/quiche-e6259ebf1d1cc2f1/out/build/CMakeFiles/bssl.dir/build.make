# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mvs/quic/quiche/quiche/deps/boringssl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build

# Include any dependencies generated for this target.
include CMakeFiles/bssl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/bssl.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/bssl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bssl.dir/flags.make

CMakeFiles/bssl.dir/src/tool/args.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/args.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/args.cc
CMakeFiles/bssl.dir/src/tool/args.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bssl.dir/src/tool/args.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/args.cc.o -MF CMakeFiles/bssl.dir/src/tool/args.cc.o.d -o CMakeFiles/bssl.dir/src/tool/args.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/args.cc

CMakeFiles/bssl.dir/src/tool/args.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/args.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/args.cc > CMakeFiles/bssl.dir/src/tool/args.cc.i

CMakeFiles/bssl.dir/src/tool/args.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/args.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/args.cc -o CMakeFiles/bssl.dir/src/tool/args.cc.s

CMakeFiles/bssl.dir/src/tool/ciphers.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/ciphers.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/ciphers.cc
CMakeFiles/bssl.dir/src/tool/ciphers.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/bssl.dir/src/tool/ciphers.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/ciphers.cc.o -MF CMakeFiles/bssl.dir/src/tool/ciphers.cc.o.d -o CMakeFiles/bssl.dir/src/tool/ciphers.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/ciphers.cc

CMakeFiles/bssl.dir/src/tool/ciphers.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/ciphers.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/ciphers.cc > CMakeFiles/bssl.dir/src/tool/ciphers.cc.i

CMakeFiles/bssl.dir/src/tool/ciphers.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/ciphers.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/ciphers.cc -o CMakeFiles/bssl.dir/src/tool/ciphers.cc.s

CMakeFiles/bssl.dir/src/tool/client.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/client.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/client.cc
CMakeFiles/bssl.dir/src/tool/client.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/bssl.dir/src/tool/client.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/client.cc.o -MF CMakeFiles/bssl.dir/src/tool/client.cc.o.d -o CMakeFiles/bssl.dir/src/tool/client.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/client.cc

CMakeFiles/bssl.dir/src/tool/client.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/client.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/client.cc > CMakeFiles/bssl.dir/src/tool/client.cc.i

CMakeFiles/bssl.dir/src/tool/client.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/client.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/client.cc -o CMakeFiles/bssl.dir/src/tool/client.cc.s

CMakeFiles/bssl.dir/src/tool/const.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/const.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/const.cc
CMakeFiles/bssl.dir/src/tool/const.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/bssl.dir/src/tool/const.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/const.cc.o -MF CMakeFiles/bssl.dir/src/tool/const.cc.o.d -o CMakeFiles/bssl.dir/src/tool/const.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/const.cc

CMakeFiles/bssl.dir/src/tool/const.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/const.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/const.cc > CMakeFiles/bssl.dir/src/tool/const.cc.i

CMakeFiles/bssl.dir/src/tool/const.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/const.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/const.cc -o CMakeFiles/bssl.dir/src/tool/const.cc.s

CMakeFiles/bssl.dir/src/tool/digest.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/digest.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/digest.cc
CMakeFiles/bssl.dir/src/tool/digest.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/bssl.dir/src/tool/digest.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/digest.cc.o -MF CMakeFiles/bssl.dir/src/tool/digest.cc.o.d -o CMakeFiles/bssl.dir/src/tool/digest.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/digest.cc

CMakeFiles/bssl.dir/src/tool/digest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/digest.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/digest.cc > CMakeFiles/bssl.dir/src/tool/digest.cc.i

CMakeFiles/bssl.dir/src/tool/digest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/digest.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/digest.cc -o CMakeFiles/bssl.dir/src/tool/digest.cc.s

CMakeFiles/bssl.dir/src/tool/fd.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/fd.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/fd.cc
CMakeFiles/bssl.dir/src/tool/fd.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/bssl.dir/src/tool/fd.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/fd.cc.o -MF CMakeFiles/bssl.dir/src/tool/fd.cc.o.d -o CMakeFiles/bssl.dir/src/tool/fd.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/fd.cc

CMakeFiles/bssl.dir/src/tool/fd.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/fd.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/fd.cc > CMakeFiles/bssl.dir/src/tool/fd.cc.i

CMakeFiles/bssl.dir/src/tool/fd.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/fd.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/fd.cc -o CMakeFiles/bssl.dir/src/tool/fd.cc.s

CMakeFiles/bssl.dir/src/tool/file.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/file.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/file.cc
CMakeFiles/bssl.dir/src/tool/file.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/bssl.dir/src/tool/file.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/file.cc.o -MF CMakeFiles/bssl.dir/src/tool/file.cc.o.d -o CMakeFiles/bssl.dir/src/tool/file.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/file.cc

CMakeFiles/bssl.dir/src/tool/file.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/file.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/file.cc > CMakeFiles/bssl.dir/src/tool/file.cc.i

CMakeFiles/bssl.dir/src/tool/file.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/file.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/file.cc -o CMakeFiles/bssl.dir/src/tool/file.cc.s

CMakeFiles/bssl.dir/src/tool/generate_ech.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/generate_ech.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/generate_ech.cc
CMakeFiles/bssl.dir/src/tool/generate_ech.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/bssl.dir/src/tool/generate_ech.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/generate_ech.cc.o -MF CMakeFiles/bssl.dir/src/tool/generate_ech.cc.o.d -o CMakeFiles/bssl.dir/src/tool/generate_ech.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/generate_ech.cc

CMakeFiles/bssl.dir/src/tool/generate_ech.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/generate_ech.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/generate_ech.cc > CMakeFiles/bssl.dir/src/tool/generate_ech.cc.i

CMakeFiles/bssl.dir/src/tool/generate_ech.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/generate_ech.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/generate_ech.cc -o CMakeFiles/bssl.dir/src/tool/generate_ech.cc.s

CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/generate_ed25519.cc
CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.o -MF CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.o.d -o CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/generate_ed25519.cc

CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/generate_ed25519.cc > CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.i

CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/generate_ed25519.cc -o CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.s

CMakeFiles/bssl.dir/src/tool/genrsa.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/genrsa.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/genrsa.cc
CMakeFiles/bssl.dir/src/tool/genrsa.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/bssl.dir/src/tool/genrsa.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/genrsa.cc.o -MF CMakeFiles/bssl.dir/src/tool/genrsa.cc.o.d -o CMakeFiles/bssl.dir/src/tool/genrsa.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/genrsa.cc

CMakeFiles/bssl.dir/src/tool/genrsa.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/genrsa.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/genrsa.cc > CMakeFiles/bssl.dir/src/tool/genrsa.cc.i

CMakeFiles/bssl.dir/src/tool/genrsa.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/genrsa.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/genrsa.cc -o CMakeFiles/bssl.dir/src/tool/genrsa.cc.s

CMakeFiles/bssl.dir/src/tool/pkcs12.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/pkcs12.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/pkcs12.cc
CMakeFiles/bssl.dir/src/tool/pkcs12.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/bssl.dir/src/tool/pkcs12.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/pkcs12.cc.o -MF CMakeFiles/bssl.dir/src/tool/pkcs12.cc.o.d -o CMakeFiles/bssl.dir/src/tool/pkcs12.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/pkcs12.cc

CMakeFiles/bssl.dir/src/tool/pkcs12.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/pkcs12.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/pkcs12.cc > CMakeFiles/bssl.dir/src/tool/pkcs12.cc.i

CMakeFiles/bssl.dir/src/tool/pkcs12.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/pkcs12.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/pkcs12.cc -o CMakeFiles/bssl.dir/src/tool/pkcs12.cc.s

CMakeFiles/bssl.dir/src/tool/rand.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/rand.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/rand.cc
CMakeFiles/bssl.dir/src/tool/rand.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/bssl.dir/src/tool/rand.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/rand.cc.o -MF CMakeFiles/bssl.dir/src/tool/rand.cc.o.d -o CMakeFiles/bssl.dir/src/tool/rand.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/rand.cc

CMakeFiles/bssl.dir/src/tool/rand.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/rand.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/rand.cc > CMakeFiles/bssl.dir/src/tool/rand.cc.i

CMakeFiles/bssl.dir/src/tool/rand.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/rand.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/rand.cc -o CMakeFiles/bssl.dir/src/tool/rand.cc.s

CMakeFiles/bssl.dir/src/tool/server.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/server.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/server.cc
CMakeFiles/bssl.dir/src/tool/server.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/bssl.dir/src/tool/server.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/server.cc.o -MF CMakeFiles/bssl.dir/src/tool/server.cc.o.d -o CMakeFiles/bssl.dir/src/tool/server.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/server.cc

CMakeFiles/bssl.dir/src/tool/server.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/server.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/server.cc > CMakeFiles/bssl.dir/src/tool/server.cc.i

CMakeFiles/bssl.dir/src/tool/server.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/server.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/server.cc -o CMakeFiles/bssl.dir/src/tool/server.cc.s

CMakeFiles/bssl.dir/src/tool/sign.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/sign.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/sign.cc
CMakeFiles/bssl.dir/src/tool/sign.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/bssl.dir/src/tool/sign.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/sign.cc.o -MF CMakeFiles/bssl.dir/src/tool/sign.cc.o.d -o CMakeFiles/bssl.dir/src/tool/sign.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/sign.cc

CMakeFiles/bssl.dir/src/tool/sign.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/sign.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/sign.cc > CMakeFiles/bssl.dir/src/tool/sign.cc.i

CMakeFiles/bssl.dir/src/tool/sign.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/sign.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/sign.cc -o CMakeFiles/bssl.dir/src/tool/sign.cc.s

CMakeFiles/bssl.dir/src/tool/speed.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/speed.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/speed.cc
CMakeFiles/bssl.dir/src/tool/speed.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/bssl.dir/src/tool/speed.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/speed.cc.o -MF CMakeFiles/bssl.dir/src/tool/speed.cc.o.d -o CMakeFiles/bssl.dir/src/tool/speed.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/speed.cc

CMakeFiles/bssl.dir/src/tool/speed.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/speed.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/speed.cc > CMakeFiles/bssl.dir/src/tool/speed.cc.i

CMakeFiles/bssl.dir/src/tool/speed.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/speed.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/speed.cc -o CMakeFiles/bssl.dir/src/tool/speed.cc.s

CMakeFiles/bssl.dir/src/tool/tool.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/tool.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/tool.cc
CMakeFiles/bssl.dir/src/tool/tool.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/bssl.dir/src/tool/tool.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/tool.cc.o -MF CMakeFiles/bssl.dir/src/tool/tool.cc.o.d -o CMakeFiles/bssl.dir/src/tool/tool.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/tool.cc

CMakeFiles/bssl.dir/src/tool/tool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/tool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/tool.cc > CMakeFiles/bssl.dir/src/tool/tool.cc.i

CMakeFiles/bssl.dir/src/tool/tool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/tool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/tool.cc -o CMakeFiles/bssl.dir/src/tool/tool.cc.s

CMakeFiles/bssl.dir/src/tool/transport_common.cc.o: CMakeFiles/bssl.dir/flags.make
CMakeFiles/bssl.dir/src/tool/transport_common.cc.o: /mvs/quic/quiche/quiche/deps/boringssl/src/tool/transport_common.cc
CMakeFiles/bssl.dir/src/tool/transport_common.cc.o: CMakeFiles/bssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/bssl.dir/src/tool/transport_common.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bssl.dir/src/tool/transport_common.cc.o -MF CMakeFiles/bssl.dir/src/tool/transport_common.cc.o.d -o CMakeFiles/bssl.dir/src/tool/transport_common.cc.o -c /mvs/quic/quiche/quiche/deps/boringssl/src/tool/transport_common.cc

CMakeFiles/bssl.dir/src/tool/transport_common.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bssl.dir/src/tool/transport_common.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mvs/quic/quiche/quiche/deps/boringssl/src/tool/transport_common.cc > CMakeFiles/bssl.dir/src/tool/transport_common.cc.i

CMakeFiles/bssl.dir/src/tool/transport_common.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bssl.dir/src/tool/transport_common.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mvs/quic/quiche/quiche/deps/boringssl/src/tool/transport_common.cc -o CMakeFiles/bssl.dir/src/tool/transport_common.cc.s

# Object files for target bssl
bssl_OBJECTS = \
"CMakeFiles/bssl.dir/src/tool/args.cc.o" \
"CMakeFiles/bssl.dir/src/tool/ciphers.cc.o" \
"CMakeFiles/bssl.dir/src/tool/client.cc.o" \
"CMakeFiles/bssl.dir/src/tool/const.cc.o" \
"CMakeFiles/bssl.dir/src/tool/digest.cc.o" \
"CMakeFiles/bssl.dir/src/tool/fd.cc.o" \
"CMakeFiles/bssl.dir/src/tool/file.cc.o" \
"CMakeFiles/bssl.dir/src/tool/generate_ech.cc.o" \
"CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.o" \
"CMakeFiles/bssl.dir/src/tool/genrsa.cc.o" \
"CMakeFiles/bssl.dir/src/tool/pkcs12.cc.o" \
"CMakeFiles/bssl.dir/src/tool/rand.cc.o" \
"CMakeFiles/bssl.dir/src/tool/server.cc.o" \
"CMakeFiles/bssl.dir/src/tool/sign.cc.o" \
"CMakeFiles/bssl.dir/src/tool/speed.cc.o" \
"CMakeFiles/bssl.dir/src/tool/tool.cc.o" \
"CMakeFiles/bssl.dir/src/tool/transport_common.cc.o"

# External object files for target bssl
bssl_EXTERNAL_OBJECTS =

bssl: CMakeFiles/bssl.dir/src/tool/args.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/ciphers.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/client.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/const.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/digest.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/fd.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/file.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/generate_ech.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/generate_ed25519.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/genrsa.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/pkcs12.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/rand.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/server.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/sign.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/speed.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/tool.cc.o
bssl: CMakeFiles/bssl.dir/src/tool/transport_common.cc.o
bssl: CMakeFiles/bssl.dir/build.make
bssl: libssl.a
bssl: libcrypto.a
bssl: CMakeFiles/bssl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX executable bssl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bssl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bssl.dir/build: bssl
.PHONY : CMakeFiles/bssl.dir/build

CMakeFiles/bssl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bssl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bssl.dir/clean

CMakeFiles/bssl.dir/depend:
	cd /mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mvs/quic/quiche/quiche/deps/boringssl /mvs/quic/quiche/quiche/deps/boringssl /mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build /mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build /mvs/quic/quiche/target/debug/build/quiche-e6259ebf1d1cc2f1/out/build/CMakeFiles/bssl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bssl.dir/depend

