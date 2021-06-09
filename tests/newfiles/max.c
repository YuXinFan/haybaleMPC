#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool declassify(bool b) {
    return b;
}

int DoMpc(int (*f)(int*, int), int* arr, int l)
{   
    int ret = (*f)(arr,l);
    return ret;
}

int MpcMax(int* arr, int len)
{
    int max = arr[0];
    for (int i = 1; i < len; i++) {
        if ( max < arr[i] ) 
        {
            max = arr[i];
        }
    }
    return max;
}
int TwoMax(int a, int b){
    int max = a;
    if ( declassify (a < b) ){
        max =b;
    }
    return max;
}

int ThreeMax0(int a, int b, int c) {
    int max = a;
    if ( a < b) {
        max = b;
    } 
    if (max < c) {
        max = c;
    }
    return max;
}

int ThreeMax1(int a, int b, int c) {
    int max = a;
    if ( declassify(max < b)) {
        max = b;
    } 
    if (max < c) {
        max = c;
    }
    c = 2;
    return max;
}

int ThreeMax2(int a, int b, int c) {
    int max = a;
    if ( a < b) {
        max = b;
    } 
    if (declassify(max < c)) {
        max = c;
    }
    return max;
}

int ThreeMax3(int a, int b, int c) {
    int max = a;
    if ( declassify(a < b)) {
        max = b;
    } 
    if (declassify(max < c)) {
        max = c;
    }
    return max;
}

int FourMax(int a, int b, int c, int d) {
    int max = a;
    if ( max < b) {
        max = b;
    } 
    if (max < c) {
        max = c;
    }
    if ( max < d) {
        max = d;
    }
    return max;
}

int FiveMax(int a, int b, int c, int d, int e) {
    int max = a;
    if ( max < b) {
        max = b;
    } 
    if (max < c) {
        max = c;
    }
    if ( max < d) {
        max = d;
    }
    if ( max < e) {
        max = e;
    }
    return max;
}

int main() {
    int alice[10];
    int bob[10];
    int in[20];
    for (int i = 0; i < 10; i++)
    {
        in[i] = alice[i];
        in[i+10] = bob[i];
    }
    int r = DoMpc(MpcMax, in, 20);

    return r;
}