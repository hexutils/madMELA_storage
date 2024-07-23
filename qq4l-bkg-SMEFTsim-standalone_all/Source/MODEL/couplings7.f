ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      SUBROUTINE COUP7()

      IMPLICIT NONE
      INCLUDE 'model_functions.inc'

      DOUBLE PRECISION PI, ZERO
      PARAMETER  (PI=3.141592653589793D0)
      PARAMETER  (ZERO=0D0)
      INCLUDE 'input.inc'
      INCLUDE 'coupl.inc'
      GC_1392 = -(MDL_CLEQU3IM*MDL_YM*MDL_YUP)/(4.000000D+00
     $ *MDL_LAMBDASMEFT__EXP__2)
      GC_1393 = (MDL_CLEQU3IM*MDL_YM*MDL_YUP)/(4.000000D+00
     $ *MDL_LAMBDASMEFT__EXP__2)
      GC_1394 = (MDL_CLEQU3IM*MDL_YM*MDL_YUP)/(2.000000D+00
     $ *MDL_LAMBDASMEFT__EXP__2)
      GC_1401 = -(MDL_CLEQU3RE*MDL_COMPLEXI*MDL_YM*MDL_YUP)/(4.000000D
     $ +00*MDL_LAMBDASMEFT__EXP__2)
      GC_1402 = (MDL_CLEQU3RE*MDL_COMPLEXI*MDL_YM*MDL_YUP)/(2.000000D
     $ +00*MDL_LAMBDASMEFT__EXP__2)
      END
