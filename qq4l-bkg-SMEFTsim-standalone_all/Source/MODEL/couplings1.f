ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      SUBROUTINE COUP1()

      IMPLICIT NONE
      INCLUDE 'model_functions.inc'

      DOUBLE PRECISION PI, ZERO
      PARAMETER  (PI=3.141592653589793D0)
      PARAMETER  (ZERO=0D0)
      INCLUDE 'input.inc'
      INCLUDE 'coupl.inc'
      GC_1 = (MDL_EE*MDL_COMPLEXI)/3.000000D+00
      GC_2 = (-2.000000D+00*MDL_EE*MDL_COMPLEXI)/3.000000D+00
      GC_4 = MDL_EE*MDL_COMPLEXI
      GC_12 = (MDL_CED*MDL_COMPLEXI)/MDL_LAMBDASMEFT__EXP__2
      GC_13 = (2.000000D+00*MDL_CEE*MDL_COMPLEXI)
     $ /MDL_LAMBDASMEFT__EXP__2
      GC_14 = (MDL_CEU*MDL_COMPLEXI)/MDL_LAMBDASMEFT__EXP__2
      GC_24 = (MDL_CLD*MDL_COMPLEXI)/MDL_LAMBDASMEFT__EXP__2
      GC_25 = (MDL_CLE*MDL_COMPLEXI)/MDL_LAMBDASMEFT__EXP__2
      GC_26 = (2.000000D+00*MDL_CLL*MDL_COMPLEXI)
     $ /MDL_LAMBDASMEFT__EXP__2
      GC_27 = (2.000000D+00*MDL_CLL1*MDL_COMPLEXI)
     $ /MDL_LAMBDASMEFT__EXP__2
      GC_28 = (MDL_CLQ1*MDL_COMPLEXI)/MDL_LAMBDASMEFT__EXP__2
      GC_29 = -((MDL_CLQ3*MDL_COMPLEXI)/MDL_LAMBDASMEFT__EXP__2)
      GC_30 = (MDL_CLQ3*MDL_COMPLEXI)/MDL_LAMBDASMEFT__EXP__2
      GC_40 = (MDL_CLU*MDL_COMPLEXI)/MDL_LAMBDASMEFT__EXP__2
      GC_43 = (MDL_CQE*MDL_COMPLEXI)/MDL_LAMBDASMEFT__EXP__2
      GC_135 = -(MDL_EE*MDL_COMPLEXI)/(2.000000D+00*MDL_CTH*MDL_STH)
      GC_136 = (MDL_EE*MDL_COMPLEXI)/(2.000000D+00*MDL_CTH*MDL_STH)
      GC_195 = -(MDL_EE*MDL_COMPLEXI*MDL_STH)/(3.000000D+00*MDL_CTH)
      GC_196 = (2.000000D+00*MDL_EE*MDL_COMPLEXI*MDL_STH)/(3.000000D
     $ +00*MDL_CTH)
      GC_197 = -((MDL_EE*MDL_COMPLEXI*MDL_STH)/MDL_CTH)
      GC_350 = (MDL_CHD*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(2.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH)
      GC_352 = (MDL_CHE*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(2.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH)
      GC_353 = (MDL_CHL1*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(2.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH)
      GC_354 = (MDL_CHQ1*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(2.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH)
      GC_355 = -(MDL_CHQ3*MDL_EE*MDL_COMPLEXI*MDL_VEVHAT__EXP__2)
     $ /(2.000000D+00*MDL_CTH*MDL_LAMBDASMEFT__EXP__2*MDL_STH)
      END