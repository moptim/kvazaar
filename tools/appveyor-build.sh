#!/usr/bin/bash
set -e

export CC=clang

./autogen.sh
./configure \
    --host=$MINGW_CHOST \
    --build=$MINGW_CHOST \
    --target=$MINGW_CHOST \
    --disable-shared --enable-static
make
