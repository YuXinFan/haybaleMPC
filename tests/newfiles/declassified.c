#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool declassify(bool b) {
    return b;
}

int Millionaire(int a, int b) {
    if (a > b) {
        return true;
    }else {
        return false;
    }
}

int Max(int a, int b, int c) {
    int m = 0;
    if (m < b) {
        m = 1;
    }
    if (m < c) {
        m = 2;
    }
    return m;
}

// int[] SetIntersection(int[] a, int[] b) {
//     int lena = sizeof(a)/sizeof(a[0]);
//     int lenb = sizeof(b)/sizeof(b[0]);
//     int len = lena > lenb ? lenb : lena;
//     int res[len];
//     int k = 0;
//     for (int i = 0; i < lena; ) {
//         for (int j = 0; j < lenb; ) {
//             if a[i] = b[j] {
//                 res[k] = i;
//                 i = i + 1;
//                 j = j + 1;
//             }else {
//                 j = j + 1;
//             }
//         }
//     }
// }
int main () {
    return 0;
}