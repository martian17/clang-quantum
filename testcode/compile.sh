#!/bin/bash

clang -o $1.ll -c -S -emit-llvm $1

# now we have llvm 
cat $1.ll

# compile llvm -> assembly
llc $1.ll
# assemble
clang $1.s


# not using bitcode
# clang -o $1.bc -c -S $1
# # now we have llvm bitcode