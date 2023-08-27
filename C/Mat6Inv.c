/* The function of this program is computing the inversion of 6*6 matrix:b=inv(a) 
   This program was developed by Yongbin Wang 2023/8/27 */
#include<stdio.h>

void mat6inv(double a[6][6],double b[6][6]);

int main()               // main program for verfication of the function
{
    int i,j;      // iteraction parameters
    double a[6][6]={
        {1.346e9,0.577e9,0.577e9,0.0,0.0,0.0},
        {0.577e9,1.346e9,0.577e9,0.0,0.0,0.0},
        {0.577e9,0.577e9,1.346e9,0.0,0.0,0.0},     // verfication examples
        {0.0,0.0,0.0,0.385e9,0.0,0.0},
        {0.0,0.0,0.0,0.0,0.385e9,0.0},
        {0.0,0.0,0.0,0.0,0.0,0.385e9}
    };
    double b[6][6];
    mat6inv(a,b);
/*
The exact results should  be:
   1.0e-08 *

   0.100000000000  -0.030000000000  -0.030000000000                0                0                0
  -0.030000000000   0.100000000000  -0.030000000000                0                0                0
  -0.030000000000  -0.030000000000   0.100000000000                0                0                0
                0                0                0   0.260000000000                0                0
                0                0                0                0   0.260000000000                0
                0                0                0                0                0   0.260000000000
*/    
    printf("The value of the inversion matrix is: \n");
    printf("%-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E\n",b[0][0],b[0][1],b[0][2],b[0][3],b[0][4],b[0][5]);
    printf("%-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E\n",b[1][0],b[1][1],b[1][2],b[1][3],b[1][4],b[1][5]);
    printf("%-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E\n",b[2][0],b[2][1],b[2][2],b[2][3],b[2][4],b[2][5]);
    printf("%-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E\n",b[3][0],b[3][1],b[3][2],b[3][3],b[3][4],b[3][5]);
    printf("%-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E\n",b[4][0],b[4][1],b[4][2],b[4][3],b[4][4],b[4][5]);
    printf("%-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E\n",b[5][0],b[5][1],b[5][2],b[5][3],b[5][4],b[5][5]);
}

void mat6inv(double a[6][6],double b[6][6])
{
    int i,j,k;
    int n=6;
    double c[n][2*n];
    for (i=0;i<n;i++)
    {
        for (j=0;j<n;j++)
        {
            c[i][j]=a[i][j];
            c[i][j+n]=0.0;
        }
        c[i][i+n]=1.0;
    }
    for (k=0;k<n;k++)
    {
        for (j=2*n-1;j>k-1;j--)
        {
            c[k][j]=c[k][j]/c[k][k];
        }
        for (i=0;i<n;i++)
            {
                if (i!=k)
                {
                    for (j=2*n-1;j>k-1;j--)
                    {
                        c[i][j]=c[i][j]-c[i][k]*c[k][j];
                    }
                }
            }
    }
    for (k=0;k<n;k++)
    {
        for (j=0;j<n;j++)
        {
            b[k][j]=c[k][j+n];
        }
    }
}