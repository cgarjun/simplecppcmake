cmake_minimum_required(VERSION 2.8)

project (HelloWorld)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror")

include_directories(${PROJECT_SOURCE_DIR}/src/include())

file(GLOB CPP_SOURCES ${PROJECT_SOURCE_DIR}/src/*.cpp)
message("SOURCE FILES: " ${CPP_SOURCES})

add_executable(HelloWorld ${CPP_SOURCES})