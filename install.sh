#!/bin/sh

mkdir build
cd build

cmake -DLLVM_ENABLE_PROJECTS=clang -DLLVM_USE_LINKER=gold -G "Unix Makefiles" ../llvm
make -j 5

sudo make install
cd -

