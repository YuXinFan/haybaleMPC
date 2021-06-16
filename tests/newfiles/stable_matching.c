// C++ program for stable marriage problem
#include <stdbool.h>
#include <stdio.h>
// Number of Men or Women
#define N  4
//#define __assume(cond) do { if (!(cond)) __builtin_unreachable(); } while (0)
// This function returns true if woman 'w' prefers man 'm1' over man 'm'
bool wPrefersM1OverM(int iwprefer[N], int m, int m1)
{
    // Check if w prefers m over her current engagment m1
    for (int i = 0; i < N; i++)
    {
        // If m1 comes before m in lisr of w, then w prefers her
        // cirrent engagement, don't do anything
        if (iwprefer[i] == m1)
            return true;
 
        // If m cmes before m1 in w's list, then free her current
        // engagement and engage her with m
        if (iwprefer[i] == m)
           return false;
    }
    return true;
}
 
// Prints stable matching for N boys and N girls. Boys are numbered as 0 to
// N-1. Girls are numbereed as N to 2N-1.
//void stableMarriage(int mprefer[N][N], int wperfer[N][N])=
int *stableMarriage(int mprefer[N*N], int wprefer[N*N], int result[2*N] )
{
    // Stores partner of women. This is our output array that
    // stores paing information.  The value of wPartner[i]
    // indicates the partner assigned to woman N+i.  Note that
    // the woman numbers between N and 2*N-1. The value -1
    // indicates that (N+i)'th woman is free
    // int mprefer[N*N]= { 3, 1, 2, 0,
    //     1, 0, 2, 3,
    //     0, 1, 2, 3,
    //     0, 1, 2, 3};
        
    // int wprefer[N*N] = {0, 1, 2, 3,
    //     0, 1, 2, 3,
    //     0, 1, 2, 3,
    //     0, 1, 2, 3
    // };
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            __builtin_assume(mprefer[i*N+j]<N);
            __builtin_assume(mprefer[i*N+j]>=0);
            __builtin_assume(wprefer[i*N+j]<N);
            __builtin_assume(wprefer[i*N+j]>=0);
        }
        __builtin_assume(mprefer[i*N] == 0 || mprefer[i*N+1]==0|| mprefer[i*N+2]==0||mprefer[i*N+3]==0);
        __builtin_assume(mprefer[i*N] == 1 || mprefer[i*N+1]==1|| mprefer[i*N+2]==1||mprefer[i*N+3]==1);
        __builtin_assume(mprefer[i*N] == 2 || mprefer[i*N+1]==2|| mprefer[i*N+2]==2||mprefer[i*N+3]==2);
        __builtin_assume(mprefer[i*N] == 3 || mprefer[i*N+1]==3|| mprefer[i*N+2]==3||mprefer[i*N+3]==3);

        __builtin_assume(wprefer[i*N] == 0 || wprefer[i*N+1]==0|| wprefer[i*N+2]==0||wprefer[i*N+3]==0);
        __builtin_assume(wprefer[i*N] == 1 || wprefer[i*N+1]==1|| wprefer[i*N+2]==1||wprefer[i*N+3]==1);
        __builtin_assume(wprefer[i*N] == 2 || wprefer[i*N+1]==2|| wprefer[i*N+2]==2||wprefer[i*N+3]==2);
        __builtin_assume(wprefer[i*N] == 3 || wprefer[i*N+1]==3|| wprefer[i*N+2]==3||wprefer[i*N+3]==3);   
    }

    int wPartner[N];
    bool mFree[N];
    bool mMake[N*N];
    for ( int i = 0; i < N; i++) {
        wPartner[i] = -1;
        mFree[i] = false;
    }
    for ( int i = 0; i < N*N; i++) {
        mMake[i] = false;
    }
    // An array to store availability of men.  If mFree[i] is
    // false, then man 'i' is free, otherwise engaged.
    int freeCount = N;
 
    // While there are free men
    while (true)
    {
        // Pick the first free man (we could pick any)
        int m;
        int *imprefer = mprefer;
        int w;
        bool nomake = false;
        for (m = 0; m < N; m++) {
            if (mFree[m] == false){
                for (int i = 0; i < N; i++) {
                    if (mMake[m*N+i]==false){
                        nomake = true;
                        w = imprefer[i];
                        mMake[m*N+i]=true;
                        break;
                    }
                }
                if (nomake == true) {
                    break;
                }
            }
            imprefer  = imprefer + N;
        }
        if (nomake==false) {
            break;
        }
            
        if (wPartner[w] == -1)
        {
            wPartner[w] = m;
            mFree[m] = true;
        } else  // If w is not free
        {
            // Find current engagement of w
            int m1 = wPartner[w];

            // If w prefers m over her current engagement m1,
            // then break the engagement between w and m1 and
            // engage m with w.
            int *iwprefer = wprefer + w*N;
            if (wPrefersM1OverM(iwprefer, m, m1) == false)
            {
                wPartner[w] = m;
                mFree[m] = true;
                mFree[m1] = false;
            }
        } // End of Els
        // One by one go to all women according to m's preferences.
        // Here m is the picked free man
    } // End of main while loop
    for (int i = 0; i < N; i++) {
        if (wPartner[i] != -1) {
            result[wPartner[i]] = -1;
        }
       printf("%d\t%d\n",wPartner[i], i+N);
    }
       
    return result;
}
 
// Driver program to test above functions
int main()
{   
    int result[2*N];
    int mprefer[N*N] = { 3, 1, 2, 0,
        1, 0, 2, 3,
        0, 1, 2, 3,
        0, 1, 2, 3};
        
    int wprefer[N*N] = {0, 1, 2, 3,
        0, 1, 2, 3,
        0, 1, 2, 3,
        0, 1, 2, 3
    };
    stableMarriage(mprefer, wprefer, result);
 
    return 0;
}