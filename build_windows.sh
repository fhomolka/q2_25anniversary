#!/usr/bin/bash

#NOTE(fhomolka): I wrote this because I tend to forget the exact command

platform=""

if [[ $1 == 32 ]]; then
	platform=i686
else
	platform=x86_64
fi

make clean
make CC="clang --target=$platform-windows-gnu" YQ2_OSTYPE=Windows
