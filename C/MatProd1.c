/*The function of this program is computing the production of 6*6 matrix and 6-th vector:C=A*B 
 This program was developed by Yongbin Wang 2023/8/29 */
#include <stdio.h>

void matprod1(double a[6][6], double b[6], double c[6]);

int main()
{
    int i,j;
    double b[6]={1.0,2.0,3.0,4.0,5.0,6.0};
    double c[6];
    double a[6][6]={
        {1.346e9,0.577e9,0.577e9,0.0,0.0,0.0},
        {0.577e9,1.346e9,0.577e9,0.0,0.0,0.0},
        {0.577e9,0.577e9,1.346e9,0.0,0.0,0.0},
        {0.0,0.0,0.0,0.385e9,0.0,0.0},
        {0.0,0.0,0.0,0.0,0.385e9,0.0},
        {0.0,0.0,0.0,0.0,0.0,0.385e9}
    };
    matprod1(a,b,c);
/*
C The exact results should  be:
C    1.0e+09 *

C    4.23100   5.00000  5.76900   1.54000   1.925000  2.3100  
*/     
    printf("The value of the product of 6*6 matrix and 6-th vector is: \n");
    printf("%-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E, %-15.5E\n",c[0],c[1],c[2],c[3],c[4],c[5]);
    return 0;
}

void matprod1(double a[6][6], double b[6], double c[6])
{
    int i,j,k;
    for (j=0;j<6;j++)
    {
        for (k=0;k<6;k++)
        {
            c[j]=0.0;
            for (i=0;i<6;i++)
            {
                c[j]+=a[j][i]*b[i];
            }
        }
    }    
}