C  The function of this program is computing the production of 6*6 matrix and 6th vector:C=A*B
C  This program was developed by Yongbin Wang 2023/8/29 */

      PROGRAM MAIN
      
      DIMENSION A(6,6),B(6),C(6)

      A=1.0D9*RESHAPE((/1.346,0.577,0.577,.0,.0,.0,
     1                 0.577,1.346,0.577,.0,.0,.0,
     2                 0.577,0.577,1.346,.0,.0,.0,
     3                 .0,.0,.0,0.385,.0,.0,
     4                 .0,.0,.0,.0,0.385,.0,
     5                 .0,.0,.0,.0,.0,0.385/),(/6,6/))
      B=(/1.0,2.0,3.0,4.0,5.0,6.0/)
C /*
C The exact results should  be:
C    1.0e+09 *

C    4.23100   5.00000  5.76900   1.54000   1.925000  2.3100  
C */       
      CALL MATPROD1(A,B,C)
      WRITE(*,*) "Product of 6*6 matrix and 6-th vector is: "
      WRITE(*,*) C(1),C(2),C(3),C(4),C(5),C(6)       
      END

      SUBROUTINE MATPROD1(AM,BM,CM)

      PARAMETER(ZERO=0.0D0)
      DIMENSION AM(6,6),BM(6),CM(6) 

      DO J=1,6
         DO K=1,6
            CM(J)=ZERO
            DO I=1,6
               CM(J)=CM(J)+AM(J,I)*BM(I)
            END DO
         END DO
      END DO 
      RETURN
      END