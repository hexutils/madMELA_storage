C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,1)*ProjP(4,3)
C     
      SUBROUTINE FFFF11_2(F1, F3, F4, COUP, M2, W2,F2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(6)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      REAL*8 M2
      REAL*8 P2(0:3)
      COMPLEX*16 TMP4
      REAL*8 W2
      COMPLEX*16 DENOM
      F2(1) = +F1(1)+F3(1)+F4(1)
      F2(2) = +F1(2)+F3(2)+F4(2)
      P2(0) = -DBLE(F2(1))
      P2(1) = -DBLE(F2(2))
      P2(2) = -DIMAG(F2(2))
      P2(3) = -DIMAG(F2(1))
      TMP4 = (F4(5)*F3(5)+F4(6)*F3(6))
      DENOM = COUP/(P2(0)**2-P2(1)**2-P2(2)**2-P2(3)**2 - M2 * (M2 -CI
     $ * W2))
      F2(3)= DENOM*CI * F1(3)*TMP4*M2
      F2(4)= DENOM*CI * F1(4)*TMP4*M2
      F2(5)= DENOM*(-CI )* TMP4*(F1(3)*(-1D0)*(P2(0)+P2(3))+F1(4)*(
     $ -P2(1)+CI*(P2(2))))
      F2(6)= DENOM*CI * TMP4*(F1(3)*(P2(1)+CI*(P2(2)))+F1(4)*(P2(0)
     $ -P2(3)))
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,1)*ProjP(4,3)
C     
      SUBROUTINE FFFF11_9_2(F1, F3, F4, COUP1, COUP2, M2, W2,F2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(6)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 FTMP(6)
      REAL*8 M2
      REAL*8 P2(0:3)
      REAL*8 W2
      COMPLEX*16 DENOM
      INTEGER*4 I
      CALL FFFF11_2(F1,F3,F4,COUP1,M2,W2,F2)
      CALL FFFF9_2(F1,F3,F4,COUP2,M2,W2,FTMP)
      DO I = 3, 6
        F2(I) = F2(I) + FTMP(I)
      ENDDO
      END


