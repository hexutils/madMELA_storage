ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      SUBROUTINE COUP2()

      IMPLICIT NONE
      INCLUDE 'model_functions.inc'

      DOUBLE PRECISION PI, ZERO
      PARAMETER  (PI=3.141592653589793D0)
      PARAMETER  (ZERO=0D0)
      INCLUDE 'input.inc'
      INCLUDE 'coupl.inc'
      GC_356 = (MDL_CHQ3*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(2.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH)
      GC_357 = (MDL_CHU*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(2.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH)
      GC_361 = (2.000000D+00*MDL_CHWB*MDL_EE*MDL_COMPLEXI
     $ *MDL_VEVHAT__EXP__2)/(3.000000D+00*MDL_LAMBDASMEFT__EXP__2
     $ *(1.000000D+00-2.000000D+00*MDL_STH__EXP__2))
      GC_363 = (MDL_CHWB*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(3.000000D+00*MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D
     $ +00*MDL_STH__EXP__2))
      GC_364 = (MDL_CHWB*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_383 = -(MDL_CHDD*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(8.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2))
      GC_384 = (MDL_CHDD*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(8.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2))
      GC_385 = -(MDL_CHL3*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(2.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2))
      GC_386 = (MDL_CHL3*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(2.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2))
      GC_387 = -(MDL_CLL1*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(4.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2))
      GC_388 = (MDL_CLL1*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(4.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2))
      GC_390 = (MDL_CHDD*MDL_EE*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT__EXP__2)/(1.200000D+01*MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_391 = -(MDL_CHDD*MDL_EE*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT__EXP__2)/(6.000000D+00*MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_392 = (MDL_CHDD*MDL_EE*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT__EXP__2)/(4.000000D+00*MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_393 = (MDL_CHL3*MDL_EE*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT__EXP__2)/(3.000000D+00*MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_394 = (-2.000000D+00*MDL_CHL3*MDL_EE*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT__EXP__2)/(3.000000D+00*MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_395 = (MDL_CHL3*MDL_EE*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT__EXP__2)/(MDL_CTH*MDL_LAMBDASMEFT__EXP__2*(
     $ -1.000000D+00+2.000000D+00*MDL_STH__EXP__2))
      GC_396 = -(MDL_CLL1*MDL_EE*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT__EXP__2)/(6.000000D+00*MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_397 = (MDL_CLL1*MDL_EE*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT__EXP__2)/(3.000000D+00*MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_398 = -(MDL_CLL1*MDL_EE*MDL_COMPLEXI*MDL_STH
     $ *MDL_VEVHAT__EXP__2)/(2.000000D+00*MDL_CTH
     $ *MDL_LAMBDASMEFT__EXP__2*(-1.000000D+00+2.000000D+00
     $ *MDL_STH__EXP__2))
      GC_553 = -((MDL_CTH*MDL_CUBIM*MDL_VEVHAT*MDL_YC)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_554 = (MDL_CTH*MDL_CUBRE*MDL_COMPLEXI*MDL_VEVHAT*MDL_YC)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_561 = -((MDL_CTH*MDL_CUWIM*MDL_VEVHAT*MDL_YC)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_563 = (MDL_CTH*MDL_CUWRE*MDL_COMPLEXI*MDL_VEVHAT*MDL_YC)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_574 = (MDL_CUBIM*MDL_STH*MDL_VEVHAT*MDL_YC)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      END
