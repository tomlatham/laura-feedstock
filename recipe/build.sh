#!/usr/bin/env bash

cmake -S . -B build \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_VERBOSE_MAKEFILE=ON \
    ${CMAKE_ARGS}

cmake --build build --target install "-j${CPU_COUNT}"
