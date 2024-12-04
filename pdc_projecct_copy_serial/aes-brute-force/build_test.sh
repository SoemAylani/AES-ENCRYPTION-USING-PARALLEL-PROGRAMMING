#!/bin/sh

baseDir=.
testDir=$baseDir/test
includeDir=$baseDir/include

# Use CXX if set, otherwise default to g++
if [ -z "${CXX+x}" ]; then CXX=g++; fi

# Compile with OpenMP and pthread support
$CXX -Ofast -Wall -march=native -std=c++11 -fopenmp \
    "$testDir/aes-brute-force.cpp" \
    -I "$includeDir" \
    -o aes-brute-force \
    -lpthread \
    "$@"
