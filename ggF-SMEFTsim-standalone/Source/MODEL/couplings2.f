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
      GC_718 = (MDL_CEBIM*MDL_STH*MDL_VEVHAT*MDL_YE)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_719 = -((MDL_CEBRE*MDL_COMPLEXI*MDL_STH*MDL_VEVHAT*MDL_YE)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_803 = (MDL_CEWIM*MDL_CTH*MDL_VEVHAT*MDL_YM)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_804 = -((MDL_CEWRE*MDL_CTH*MDL_COMPLEXI*MDL_VEVHAT*MDL_YM)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_813 = (MDL_CEBIM*MDL_STH*MDL_VEVHAT*MDL_YM)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_814 = -((MDL_CEBRE*MDL_COMPLEXI*MDL_STH*MDL_VEVHAT*MDL_YM)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      END
