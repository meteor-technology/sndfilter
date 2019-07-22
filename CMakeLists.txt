cmake_minimum_required(VERSION 3.14)
project(sndfilter)

set(CMAKE_CXX_STANDARD 14)

include_directories(src)

add_executable(sndfilter
        src/biquad.cpp
        src/header/biquad.h
        src/compressor.cpp
        src/header/compressor.h
        src/main.cpp
        src/mem.cpp
        src/header/mem.h
        src/reverb.cpp
        src/header/reverb.h
        src/snd.cpp
        src/header/snd.h
        src/wav.cpp
        src/header/wav.h)
