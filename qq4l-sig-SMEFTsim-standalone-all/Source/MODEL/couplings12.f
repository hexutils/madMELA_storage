ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      SUBROUTINE COUP12()

      IMPLICIT NONE
      INCLUDE 'model_functions.inc'

      DOUBLE PRECISION PI, ZERO
      PARAMETER  (PI=3.141592653589793D0)
      PARAMETER  (ZERO=0D0)
      INCLUDE 'input.inc'
      INCLUDE 'coupl.inc'
      GC_1270 = -((MDL_CTH*MDL_CUWIM*MDL_YUP)/(MDL_LAMBDASMEFT__EXP__2
     $ *MDL_SQRT__2))
      GC_1272 = (MDL_CTH*MDL_CUWRE*MDL_COMPLEXI*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1284 = (MDL_CUBIM*MDL_STH*MDL_YUP)/(MDL_LAMBDASMEFT__EXP__2
     $ *MDL_SQRT__2)
      GC_1285 = -((MDL_CUBRE*MDL_COMPLEXI*MDL_STH*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_1286 = -((MDL_CUWIM*MDL_STH*MDL_YUP)/(MDL_LAMBDASMEFT__EXP__2
     $ *MDL_SQRT__2))
      GC_1287 = (MDL_CUWRE*MDL_COMPLEXI*MDL_STH*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1288 = -((MDL_CTH*MDL_CUBIM*MDL_VEVHAT*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_1289 = (MDL_CTH*MDL_CUBRE*MDL_COMPLEXI*MDL_VEVHAT*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1292 = (-3.000000D+00*MDL_CUHIM*MDL_VEVHAT*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1293 = (3.000000D+00*MDL_CUHRE*MDL_COMPLEXI*MDL_VEVHAT
     $ *MDL_YUP)/(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1296 = -((MDL_CTH*MDL_CUWIM*MDL_VEVHAT*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_1298 = (MDL_CTH*MDL_CUWRE*MDL_COMPLEXI*MDL_VEVHAT*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1309 = (MDL_CUBIM*MDL_STH*MDL_VEVHAT*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1310 = -((MDL_CUBRE*MDL_COMPLEXI*MDL_STH*MDL_VEVHAT*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_1311 = -((MDL_CUWIM*MDL_STH*MDL_VEVHAT*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_1312 = (MDL_CUWRE*MDL_COMPLEXI*MDL_STH*MDL_VEVHAT*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1313 = -((MDL_CHBOX*MDL_COMPLEXI*MDL_VEVHAT__EXP__2*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_1314 = (MDL_CHDD*MDL_COMPLEXI*MDL_VEVHAT__EXP__2*MDL_YUP)
     $ /(4.000000D+00*MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1315 = (MDL_CHL3*MDL_COMPLEXI*MDL_VEVHAT__EXP__2*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1316 = -(MDL_CLL1*MDL_COMPLEXI*MDL_VEVHAT__EXP__2*MDL_YUP)
     $ /(2.000000D+00*MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1317 = -((MDL_CUHIM*MDL_VEVHAT__EXP__2*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2))
      GC_1318 = (MDL_CUHRE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2*MDL_YUP)
     $ /(MDL_LAMBDASMEFT__EXP__2*MDL_SQRT__2)
      GC_1355 = -((MDL_CLEQU1IM*MDL_YE*MDL_YUP)
     $ /MDL_LAMBDASMEFT__EXP__2)
      GC_1356 = (MDL_CLEQU1IM*MDL_YE*MDL_YUP)/MDL_LAMBDASMEFT__EXP__2
      GC_1360 = -((MDL_CLEQU1RE*MDL_COMPLEXI*MDL_YE*MDL_YUP)
     $ /MDL_LAMBDASMEFT__EXP__2)
      END
