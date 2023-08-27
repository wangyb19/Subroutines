C  The function of this program is computing the inversion of 3*3 matrix:B=inv(A) 
C  This program was developed by Yongbin Wang 2023/8/27 */

      PROGRAM MAIN
      
      DIMENSION A(3,3),B(3,3)
C The array initilzation in Fortran is in raw form
      A=RESHAPE((/2.0,-2.0,6.0,
     1 2.0,1.0,3.0,
     2 5.0,2.0,9.0/),(/3,3/))   
      CALL MAT3INV(A,B)
C /*
C The exact results should  be:
C    0.500000000000000  -0.500000000000000  -0.166666666666667
C    5.000000000000000  -2.000000000000000  -2.333333333333333
C   -2.000000000000000   1.000000000000000   1.000000000000000
C */       
      WRITE(*,*) "Inverse is: "
      WRITE(*,*) B(1,1),B(1,2),B(1,3)
      WRITE(*,*) B(2,1),B(2,2),B(2,3)
      WRITE(*,*) B(3,1),B(3,2),B(3,3)      
      END

      SUBROUTINE MAT3INV(A,B)
      
      PARAMETER(ZERO=0.0D0, ONE=1.0D0)
      DIMENSION C(3,6),A(3,3),B(3,3)
      DO K = 1,3
        DO J = 1,3
          C(K,J)  = A(K,J)
          C(K,J+3)= ZERO
        END DO
        C(K,K+3)= ONE
      END DO
      DO K = 1,3
        DO J = 6,K,-1
          C(K,J)  = C(K,J)/C(K,K)
        END DO
        DO I = 1,3
          IF (I.NE.K) THEN
            DO J=6,K,-1
              C(I,J)=C(I,J)-C(I,K)*C(K,J)
            END DO
          ENDIF
        END DO
      END DO
      DO  K = 1,3
        DO  J = 1,3
          B(K,J)  = C(K,J+3)
        END DO
      END DO
      RETURN
      END