C  The function of this program is computing the inversion of 6*6 matrix:B=inv(A) 
C  This program was developed by Yongbin Wang 2023/8/27 */

      PROGRAM MAIN
      
      DIMENSION A(6,6),B(6,6)

      A=1.0D9*RESHAPE((/1.346,0.577,0.577,.0,.0,.0,
     1                 0.577,1.346,0.577,.0,.0,.0,
     2                 0.577,0.577,1.346,.0,.0,.0,
     3                 .0,.0,.0,0.385,.0,.0,
     4                 .0,.0,.0,.0,0.385,.0,
     5                 .0,.0,.0,.0,.0,0.385/),(/6,6/))
      CALL MAT6INV(A,B)
C /*
C The exact results should  be:
C    1.0e-08 *

C    0.100000000  -0.030000000  -0.030000000             0             0             0
C   -0.030000000   0.100000000  -0.030000000             0             0             0
C   -0.030000000  -0.030000000   0.100000000             0             0             0
C              0             0             0   0.260000000             0             0
C              0             0             0             0   0.260000000             0
C              0             0             0             0             0   0.260000000
C */       
      WRITE(*,*) "Inverse is: "
      WRITE(*,*) B(1,1),B(1,2),B(1,3),B(1,4),B(1,5),B(1,6) 
      WRITE(*,*) B(2,1),B(2,2),B(2,3),B(2,4),B(2,5),B(2,6) 
      WRITE(*,*) B(3,1),B(3,2),B(3,3),B(3,4),B(3,5),B(3,6) 
      WRITE(*,*) B(4,1),B(4,2),B(4,3),B(4,4),B(4,5),B(4,6)  
      WRITE(*,*) B(5,1),B(5,2),B(5,3),B(5,4),B(5,5),B(5,6)  
      WRITE(*,*) B(6,1),B(6,2),B(6,3),B(6,4),B(6,5),B(6,6)       
      END

      SUBROUTINE MAT6INV(A,B)
      
      PARAMETER(ZERO=0.0D0, ONE=1.0D0)
      DIMENSION C(6,12),A(6,6),B(6,6)
      DO K = 1,6
        DO J = 1,6
          C(K,J)  = A(K,J)
          C(K,J+6)= ZERO
        END DO
        C(K,K+6)= ONE
      END DO
      DO K = 1,6
        DO J = 12,K,-1
          C(K,J)  = C(K,J)/C(K,K)
        END DO
        DO I = 1,6
          IF (I.NE.K) THEN
            DO J=12,K,-1
              C(I,J)=C(I,J)-C(I,K)*C(K,J)
            END DO
          ENDIF
        END DO
      END DO
      DO  K = 1,6
        DO  J = 1,6
          B(K,J)  = C(K,J+6)
        END DO
      END DO
      RETURN
      END