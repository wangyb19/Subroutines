/* The function of this program is computing the inversion of 6*6 matrix:b=inv(a) 
   This program was developed by Yongbin Wang 2023/8/27 */
#include<stdio.h>

void mat3inv(double a[3][3],double b[3][3]);

int main()               // main program for verfication of the function
{
    int i,j;      // iteraction parameters
    double a[3][3]={
        {2.0,2.0,5.0},
        {-2.0,1.0,2.0},
        {6.0,3.0,9.0}    // verfication examples
    };
    double b[3][3];
    mat3inv(a,b);
/*
The exact results should  be:
   0.500000000000000  -0.500000000000000  -0.166666666666667
   5.000000000000000  -2.000000000000000  -2.333333333333333
  -2.000000000000000   1.000000000000000   1.000000000000000
*/    
    printf("The value of the inversion matrix is: \n");
    printf("%-15.5E, %-15.5E, %-15.5E\n",b[0][0],b[0][1],b[0][2]);
    printf("%-15.5E, %-15.5E, %-15.5E\n",b[1][0],b[1][1],b[1][2]);
    printf("%-15.5E, %-15.5E, %-15.5E\n",b[2][0],b[2][1],b[2][2]);
}

void mat3inv(double a[3][3],double b[3][3])
{
    int i,j,k;
    int n=3;
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