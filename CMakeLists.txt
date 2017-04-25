cmake_minimum_required(VERSION 3.6)
project(Embedded_Systems_3)

set(CMAKE_CXX_STANDARD 14)

set(SOURCE_FILES src/main.cpp include/Printf.h src/Printf.cpp)
add_executable(Embedded_Systems_3 ${SOURCE_FILES} include/Printf.h src/Printf.cpp)