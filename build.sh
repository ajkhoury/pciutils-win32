#!/bin/bash

make clean
make \
    CC=x86_64-w64-mingw32-gcc \
    HOST=x86_64-windows \
    CFLAGS='-Og -g -Wall -W -Wno-format -Wno-cast-function-type -Wno-unused-function -Wno-parentheses -Wstrict-prototypes -Wmissing-prototypes' \
    LDFLAGS='-static' \
    ZLIB=yes \
    IDSDIR="" \
    COMPAT_GETOPT=yes \
    -j11
