#include <stdlib.h>
#include <math.h>
#include <string.h>

// #include "complex.h"

typedef double Type;
#define N 3
Type W[N][N], V[N], C[N];
Type L[N][N], S[N];

void cholesky(Type W[][N], Type *V, int n)
{
    int i, j, k, m;
    Type sum;
    for (k = 0; k < n; k++)
    {
        sum = 0;
        for (i = 0; i < k; i++)
        {
            sum += L[k][i] * L[k][i];
        }
        sum = W[k][k] - sum;
        L[k][k] = sqrt(sum > 0 ? sum : 0);
        for (i = k + 1; i < n; i++)
        {
            sum = 0;
            for (j = 0; j < k; j++)
            {
                sum += L[i][j] * L[k][j];
            }
            L[i][k] = (W[i][k] - sum) / L[k][k];
        }
        for (j = 0; j < k; j++)
        {
            L[j][k] = 0;
        }
    }

    for (k = 0; k < n; k++)
    {
        sum = 0;
        for (i = 0; i < k; i++)
        {
            sum += S[i] * L[k][i];
        }
        S[i] = (V[k] - sum) / L[k][k];
    }

    for (i = n - 1; i >= 0; i--)
    {
        sum = 0;
        for (m = i + 1; m < n; m++)
        {
            sum += C[m] * L[m][i];
        }
        C[i] = (S[i] - sum) / L[i][i];
    }
}

int test_cholesky()
{
    // int i, j;
    memset(L, 0, sizeof(L));
    W[0][0] = 4;
    W[0][1] = -1;
    W[0][2] = 1;
    W[1][0] = -1;
    W[1][1] = 4.25;
    W[1][2] = 2.75;
    W[1][0] = 1;
    W[1][1] = 2.75;
    W[1][2] = 3.5;
    V[0] = 4;
    V[1] = 6;
    V[2] = 7.25;
    cholesky(W, V, N);
    return 0;
}