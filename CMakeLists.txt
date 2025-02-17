cmake_minimum_required(VERSION 3.30)
project(clox C)

set(CMAKE_C_STANDARD 11)

include_directories(include)

add_executable(clox src/main.c)
