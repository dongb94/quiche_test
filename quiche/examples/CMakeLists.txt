cmake_minimum_required(VERSION 3.18)

project(
        QUICHE
        VERSION 0.1
        DESCRIPTION "MVS quiche TEST"
        LANGUAGES CXX)

add_library(QUICHE STATIC IMPORTED)
set_target_properties(QUICHE PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/lib/libquiche.a LINK_FLAGS "-Wl,--no-as-needed")

add_executable(client ./client.cpp)
add_executable(server ./server.cpp)

target_link_libraries(client PRIVATE QUICHE ev)
target_link_libraries(server PRIVATE QUICHE ev)

message(STATUS "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_include_directories(client PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_include_directories(server PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_compile_options(client PRIVATE -Wall)
target_compile_options(server PRIVATE -Wall)