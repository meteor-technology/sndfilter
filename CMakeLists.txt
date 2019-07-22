cmake_minimum_required(VERSION 3.14)
project(sndfilter)

set(CMAKE_CXX_STANDARD 14)

include_directories(src)

add_executable(sndfilter
        src/biquad.cpp
        src/biquad.h
        src/compressor.cpp
        src/compressor.h
        src/main.cpp
        src/mem.cpp
        src/mem.h
        src/reverb.cpp
        src/reverb.h
        src/snd.cpp
        src/snd.h
        src/wav.cpp
        src/wav.h)
