C  The function of this program is computing the production of wto 6*6 matrixs:C=A*B 
C  This program was developed by Yongbin Wang 2023/8/28 */

      PROGRAM MAIN
      
      DIMENSION A(6,6),B(6,6),C(6,6)

      A=1.0D9*RESHAPE((/1.346,0.577,0.577,.0,.0,.0,
     1                 0.577,1.346,0.577,.0,.0,.0,
     2                 0.577,0.577,1.346,.0,.0,.0,
     3                 .0,.0,.0,0.385,.0,.0,
     4                 .0,.0,.0,.0,0.385,.0,
     5                 .0,.0,.0,.0,.0,0.385/),(/6,6/))
      DO I=1,6
        DO J=1,6
          B(I,J)=A(I,j)
        END DO
      END DO
C /*
C The exact results should  be:
C    1.0e+18 *

C    2.477574000000   1.886213000000   1.886213000000                0                0                0
C    1.886213000000   2.477574000000   1.886213000000                0                0                0
C    1.886213000000   1.886213000000   2.477574000000                0                0                0
C                 0                0                0   0.148225000000                0                0
C                 0                0                0                0   0.148225000000                0
C                 0                0                0                0                0   0.148225000000
C */       
      CALL MATPROD(A,B,C)
      WRITE(*,*) "Product of two 6*6 matrix is: "
      WRITE(*,*) C(1,1),C(1,2),C(1,3),C(1,4),C(1,5),C(1,6) 
      WRITE(*,*) C(2,1),C(2,2),C(2,3),C(2,4),C(2,5),C(2,6) 
      WRITE(*,*) C(3,1),C(3,2),C(3,3),C(3,4),C(3,5),C(3,6) 
      WRITE(*,*) C(4,1),C(4,2),C(4,3),C(4,4),C(4,5),C(4,6)  
      WRITE(*,*) C(5,1),C(5,2),C(5,3),C(5,4),C(5,5),C(5,6)  
      WRITE(*,*) C(6,1),C(6,2),C(6,3),C(6,4),C(6,5),C(6,6)       
      END

      SUBROUTINE MATPROD(AM,BM,CM)

      PARAMETER(ZERO=0.0D0)
      DIMENSION AM(6,6),BM(6,6),CM(6,6) 

      DO J=1,6
         DO K=1,6
            CM(J,K)=ZERO
            DO I=1,6
               CM(J,K)=CM(J,K)+AM(J,I)*BM(I,K)
            END DO
         END DO
      END DO 
      RETURN
      END