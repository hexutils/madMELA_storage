C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     -(P(-1,3)*Gamma5(-2,1)*Gamma(-1,2,-3)*Gamma(3,-3,-2)) +
C      P(-1,3)*Gamma5(-2,1)*Gamma(-1,-3,-2)*Gamma(3,2,-3)
C     
      SUBROUTINE FFV2_3(F1, F2, COUP, M3, W3,V3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      REAL*8 M3
      REAL*8 OM3
      REAL*8 P3(0:3)
      COMPLEX*16 TMP11
      COMPLEX*16 TMP12
      COMPLEX*16 V3(6)
      REAL*8 W3
      COMPLEX*16 DENOM
      OM3 = 0D0
      IF (M3.NE.0D0) OM3=1D0/M3**2
      V3(1) = +F1(1)+F2(1)
      V3(2) = +F1(2)+F2(2)
      P3(0) = -DBLE(V3(1))
      P3(1) = -DBLE(V3(2))
      P3(2) = -DIMAG(V3(2))
      P3(3) = -DIMAG(V3(1))
      TMP11 = (-1D0)*(F1(3)*-F2(3)*(-P3(0)*P3(0)+P3(1)*P3(1)+P3(2)
     $ *P3(2)+P3(3)*P3(3))+(F1(4)*-F2(4)*(-P3(0)*P3(0)+P3(1)*P3(1)
     $ +P3(2)*P3(2)+P3(3)*P3(3))+(F1(5)*F2(5)*(-P3(0)*P3(0)+P3(1)*P3(1)
     $ +P3(2)*P3(2)+P3(3)*P3(3))+F1(6)*F2(6)*(-P3(0)*P3(0)+P3(1)*P3(1)
     $ +P3(2)*P3(2)+P3(3)*P3(3)))))
      TMP12 = (-1D0)*(F1(3)*-F2(3)*(-P3(0)*P3(0)+P3(1)*P3(1)+P3(2)
     $ *P3(2)+P3(3)*P3(3))+(F1(4)*-F2(4)*(-P3(0)*P3(0)+P3(1)*P3(1)
     $ +P3(2)*P3(2)+P3(3)*P3(3))+(F1(5)*F2(5)*(-P3(0)*P3(0)+P3(1)*P3(1)
     $ +P3(2)*P3(2)+P3(3)*P3(3))+F1(6)*F2(6)*(-P3(0)*P3(0)+P3(1)*P3(1)
     $ +P3(2)*P3(2)+P3(3)*P3(3)))))
      DENOM = COUP/(P3(0)**2-P3(1)**2-P3(2)**2-P3(3)**2 - M3 * (M3 -CI
     $ * W3))
      V3(3)= DENOM*2D0 * CI*(P3(1)*(F2(4)*F1(3)+F2(3)*F1(4)+F2(6)*F1(5)
     $ +F2(5)*F1(6))+(P3(2)*(+CI*(F2(4)*F1(3)+F2(6)*F1(5))-CI*(F2(3)
     $ *F1(4)+F2(5)*F1(6)))+(P3(3)*(F2(3)*F1(3)+F2(5)*F1(5)-F2(4)*F1(4)
     $ -F2(6)*F1(6))+1D0/2D0*(OM3*P3(0)*(-TMP11+TMP12)))))
      V3(4)= DENOM*2D0 * CI*(P3(0)*(F2(4)*F1(3)+F2(3)*F1(4)+F2(6)*F1(5)
     $ +F2(5)*F1(6))+(P3(2)*(+CI*(F2(3)*F1(3)+F2(6)*F1(6))-CI*(F2(4)
     $ *F1(4)+F2(5)*F1(5)))+(P3(3)*(F2(4)*F1(3)+F2(5)*F1(6)-F2(3)*F1(4)
     $ -F2(6)*F1(5))+1D0/2D0*(OM3*P3(1)*(-TMP11+TMP12)))))
      V3(5)= DENOM*(-2D0)*(P3(0)*(F2(4)*F1(3)+F2(6)*F1(5)-F2(3)*F1(4)
     $ -F2(5)*F1(6))+(P3(1)*(-F2(3)*F1(3)-F2(6)*F1(6)+F2(4)*F1(4)+F2(5)
     $ *F1(5))+(P3(3)*(F2(4)*F1(3)+F2(3)*F1(4)-F2(6)*F1(5)-F2(5)*F1(6))
     $ +1D0/2D0*(OM3*P3(2)*(+CI*(TMP11)-CI*(TMP12))))))
      V3(6)= DENOM*2D0 * CI*(P3(0)*(F2(3)*F1(3)+F2(5)*F1(5)-F2(4)*F1(4)
     $ -F2(6)*F1(6))+(P3(1)*(-F2(4)*F1(3)-F2(5)*F1(6)+F2(3)*F1(4)+F2(6)
     $ *F1(5))+(P3(2)*(-CI*(F2(4)*F1(3)+F2(3)*F1(4))+CI*(F2(6)*F1(5)
     $ +F2(5)*F1(6)))+1D0/2D0*(OM3*P3(3)*(-TMP11+TMP12)))))
      END


