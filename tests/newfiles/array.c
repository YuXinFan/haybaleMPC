#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool declassify(bool b) {
    return b;
}

int ArrayElementUnconstrained(int a[], int n) {
    return a[n];
}

int ArrayElementConstant(int a[], int n) {
    a[0] = 1;
    a[1] = 2;
    a[2] = 3;
    return a[0]< a[1] && a[1] < a[2];
}

int ArrayElementCompare(int a[], int n) {
    bool b = a[0] > a[1] && a[1] > a[2];
    return b;
}

int ArrayElementAssignVar(int a[], int n, int x) {
    a[0] = x;
    a[1] = x;
    a[2] = x;
    return a[0] == a[1] && a[1] == a[2];
}

int ArrayElementExchange(int a[], int n) {
    if (a[0] < a[1]) {
        int t = a[0];
        a[0] = a[1];
        a[1] = t;
    }
    if (a[0] < a[2]) {
        int y = a[0];
        a[0] = a[2];
        a[2] = y;
    }
    return a[0] > a[1] && a[0] > a[2];
}

int ArrayMax(int a[], int n) {
    int max = a[0];
    for (int i = 0; i < n; i++) {
        if (a[i]>max){
            max = a[i];
        }
    }
    for (int i = 0; i < n; i++) {
        if (max < a[i]) {
            return false;
        }
    }
    return true;
}
int ArrayTwoMax(int a[], int n1, int b[], int n2){
    int max = a[0];
    for (int i = 0; i < n1; i++) {
        if (a[i] > max) {
            max = a[i];
        }
    }

    for (int i = 0; i < n2; i++) {
        if ( b[i] > max) {
            max = b[i];
        }
    }
    for (int i = 0; i < n1; i++) {
        if (max < a[i]) {
            return false;
        }
    }
    for (int i = 0; i < n2; i++) {
        if (max < b[i]) {
            return false;
        }
    }
    return true;
}
int main() {

    return 0;
}
