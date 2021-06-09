#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool declassify(bool b) {
    return b;
}

int Dummy(int a) {
    return a;
}

int Add(int a, int b) {
    int c = a + b;
    return c;
}

int Mul(int a, int b) {
    int c = a * b;
    return c;
}

int Max(int a, int b) {
    if ( a > b) {
        return a;
    }else {
        return b;
    }
}

int Const(int a, int c) {
    int b = a + c;
    return b;
}
int main () {
    return 0;
}