/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);
void trans_32_32(int M, int N, int A[N][M], int B[M][N]);
void trans_61_67(int M, int N, int A[N][M], int B[M][N]);
void trans_64_64(int M, int N, int A[N][M], int B[M][N]);
/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    switch (M) {
        case 32:
            trans_32_32(M, N, A, B);
            break;
        case 64:
            trans_64_64(M, N, A, B);
            break;
        case 61:
            trans_61_67(M, N, A, B);
            break;
    }
}
/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 
void trans_32_32(int M, int N, int A[N][M], int B[M][N])
{
    for (int i = 0; i < M; i += 8)
    {      
        for (int j = 0; j < N; j += 8)
        {  
            for (int k = 0; k < 8; k++) {  
                int t1 = A[i][j];                  
                int t2 = A[i][j + 1];
                int t3 = A[i][j + 2];
                int t4 = A[i][j + 3];
                int t5 = A[i][j + 4];
                int t6 = A[i][j + 5];
                int t7 = A[i][j + 6];
                int t8 = A[i][j + 7];
                B[j][i] = t1;  
                B[j + 1][i] = t2;
                B[j + 2][i] = t3;
                B[j + 3][i] = t4;
                B[j + 4][i] = t5;
                B[j + 5][i] = t6;
                B[j + 6][i] = t7;
                B[j + 7][i] = t8;
                i++;
            }
            i -= 8;
        }
    }
}
void trans_61_67(int M, int N, int A[N][M], int B[M][N])
{
    int block_x = 18; 
    int block_y = 5;
    for (int i = 0; i < N; i += block_x)
    {
        for (int j = 0; j < M; j += block_y)
        {
            for (int k = i; k < N && k < i + block_x; k++)
            {
                for (int l = j; l < M && l < j + block_y; l++) 
                    B[l][k] = A[k][l];
            }
                
        }
    }
}
void swap(int* p1, int* p2)
{
	int tmp = *p1; *p1 = *p2; *p2 = tmp;
}
void trans_64_64(int M, int N, int A[N][M], int B[M][N])
{
    for (int i = 0; i < M; i += 8)
    {      
        for (int j = 0; j < N; j += 8)
        {  
            for (int k = 0; k < 4; k++)//前四行，分成左上/右上两块，分别转置
            {
                int t1 = A[i + k][j];       // A 从上到下 行（左上块）
                int t2 = A[i + k][j + 1];
                int t3 = A[i + k][j + 2];
                int t4 = A[i + k][j + 3];
                int t5 = A[i + k][j + 4];   // A 从上到下 行（右上块）
                int t6 = A[i + k][j + 5];
                int t7 = A[i + k][j + 6];
                int t8 = A[i + k][j + 7];
                     
                B[j][i + k] = t1;           // B 从左到右 列（左上块）
                B[j + 1][i + k] = t2;
                B[j + 2][i + k] = t3;
                B[j + 3][i + k] = t4;
                B[j][i + k + 4] = t5;       // B 从左到右 列（右上块）
                B[j + 1][i + k + 4] = t6;
                B[j + 2][i + k + 4] = t7;
                B[j + 3][i + k + 4] = t8;
            }
            for (int k = 0; k < 4; k++)
            {
                // 提取A数组中5-8行中的第k、k+4列
                int t1 = A[i + 4][j + k];
                int t2 = A[i + 5][j + k];
                int t3 = A[i + 6][j + k];
                int t4 = A[i + 7][j + k];
                int t5 = A[i + 4][j + k + 4];
                int t6 = A[i + 5][j + k + 4];
                int t7 = A[i + 6][j + k + 4];
                int t8 = A[i + 7][j + k + 4];
                //交换局部变量和第1行中的后四个数
                swap(&B[j + k][i + 4], &t1);
                swap(&B[j + k][i + 5], &t2);
                swap(&B[j + k][i + 6], &t3);
                swap(&B[j + k][i + 7], &t4);
                //第1行中的5678个数放入正确位置
                B[j + k + 4][i] = t1; 
                B[j + k + 4][i + 1] = t2; 
                B[j + k + 4][i + 2] = t3; 
                B[j + k + 4][i + 3] = t4; 
                //第k+4列放入正确位置：第5行的后四个数
                B[j + k + 4][i + 4] = t5;
                B[j + k + 4][i + 5] = t6;
                B[j + k + 4][i + 6] = t7;
                B[j + k + 4][i + 7] = t8;
            }  
        }
    }
}
/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

