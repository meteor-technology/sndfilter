#!/bin/bash

# abort this script on any error
set -e

# goofy way to get the directory the script is in
pushd "$(dirname "$0")" > /dev/null
SCRIPT_DIR="$(pwd)"
popd > /dev/null

SRC_DIR="$SCRIPT_DIR/src"
TGT_DIR="$SCRIPT_DIR/tgt"

# create the target directory
mkdir -p "$TGT_DIR"

# compile the source files
# -fwrapv   integers should wrap around like normal
# -Werror   elevate warnings to errors
clang                         \
    -o "$TGT_DIR/sndfilter"   \
    -fwrapv                   \
    -Werror                   \
    -I$SRC_DIR/header         \
    -lm                       \
    "$SRC_DIR/main.cpp"         \
    "$SRC_DIR/mem.cpp"          \
    "$SRC_DIR/snd.cpp"          \
    "$SRC_DIR/wav.cpp"          \
    "$SRC_DIR/biquad.cpp"       \
    "$SRC_DIR/compressor.cpp"   \
    "$SRC_DIR/reverb.cpp"
