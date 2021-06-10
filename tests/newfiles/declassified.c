#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool declassify(bool b) {
    return b;
}

int Millionaire(int a, int b) {
    if ( declassify( a > b ) ) {
        return true;
    }else {
        return false;
    }
}

int Max(int a, int b, int c) {
    char m = 'a';
    int max = a;
    if (max < b) {
        m = 'b';
        max = b;
    }
    if (declassify(max < c) )  {
        m = 'c';
    }
    return m;
}

int MaxLeak(int a, int b, int c) {
    char m = 'a';
    int max = a;
    if (declassify(max < b)) {
        m = 'b';
        max = b;
    }
    if (max < c) {
        m = 'c';
    }
    return m;
}
// suppose a and b are ordered from small to large
// int* Intersection(int a[], int lena, int b[], int lenb) {
//     int * ret = (int *) malloc((lena+lenb)*sizeof(int));
//     int ret[lena+lenb];
//     for (int i = 0; i < lena+lenb; i++) {
//         ret[i] = 0;
//     }
//     for (int i = 0; i < lena;) {
//         for (int j = 0; j < lenb;) {
//             if (a[i] == b[j]) {
//                 ret[i] = 1;
//                 ret[lena+j] = 1;
//                 i = i + 1;
//                 j = j + 1;
//             }else {
//                 if (a[i] < b[j]) {
//                     i = i + 1;
//                 }else {
//                     j = j + 1;
//                 }
//             }
//         }
//     }
//     return ret;
// }
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