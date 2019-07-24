# The LLVM Compiler Infrastructure

This directory and its subdirectories contain source code for LLVM,
a toolkit for the construction of highly optimized compilers,
optimizers, and runtime environments.

This code enables all data accesses based on gs/fs on x86_64. The initial
idea comes from confLLVM, but without the restriction of 4GB boundaries.
That anyway are not provided with gs/fs.

To compile the code with clang use:
-mllvm --generate-segment-schema -mllvm --segment-frame-pointer
