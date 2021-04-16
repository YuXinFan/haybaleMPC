clang-11 -emit-llvm -S -g ${1}.c -o ${1}.ll
clang-11 -emit-llvm -c -g ${1}.c -o ${1}.bc
