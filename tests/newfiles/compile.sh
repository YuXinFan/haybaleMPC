#utf-8
clang -emit-llvm -S -g ${1}.c -o ${1}.ll
clang -emit-llvm -c -g ${1}.c -o ${1}.bc
