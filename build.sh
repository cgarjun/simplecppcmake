#!/usr/bin/env bash

CLEAN_MODE=$1

main()
{
    if [ "$CLEAN_MODE" == "clean" ]; then
        rm -rf CMakeCache.txt CMakeFiles Makefile cmake_install.cmake HelloWorld
    fi 
    cmake CMakeLists.txt
    make

    echo -e Executing Command
    echo -e ...
    echo -e ...
    echo -e ...

    ./HelloWorld

    echo -e ...
    echo -e ...

  
    if [ "$CLEAN_MODE" == "wipe" ]; then
        rm -rf CMakeCache.txt CMakeFiles Makefile cmake_install.cmake
    fi 
}
main