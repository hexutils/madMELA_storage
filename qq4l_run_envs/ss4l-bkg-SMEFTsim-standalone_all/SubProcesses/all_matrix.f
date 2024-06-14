
C     PY ((3, -3), (-11, -11, 11, 11)) : (3, -3, -11, 11, -11, 11) #
C      M0_ 1
C     PY ((3, -3), (-13, -13, 13, 13)) : (3, -3, -13, 13, -13, 13) #
C      M1_ 1
C     PY ((3, -3), (-13, -11, 11, 13)) : (3, -3, -11, 11, -13, 13) #
C      M2_ 1
      SUBROUTINE SMATRIXHEL(PDGS, PROCID, NPDG, P, ALPHAS, SCALE2,
     $  NHEL, ANS)
      IMPLICIT NONE
C     ALPHAS is given at scale2 (SHOULD be different of 0 for loop
C      induced, ignore for LO)  

CF2PY double precision, intent(in), dimension(0:3,npdg) :: p
CF2PY integer, intent(in), dimension(npdg) :: pdgs
CF2PY integer, intent(in):: procid
CF2PY integer, intent(in) :: npdg
CF2PY double precision, intent(out) :: ANS
CF2PY double precision, intent(in) :: ALPHAS
CF2PY double precision, intent(in) :: SCALE2
      INTEGER PDGS(*)
      INTEGER NPDG, NHEL, PROCID
      DOUBLE PRECISION P(*)
      DOUBLE PRECISION ANS, ALPHAS, PI,SCALE2
      INCLUDE 'coupl.inc'

      PI = 3.141592653589793D0
      G = 2* DSQRT(ALPHAS*PI)
      CALL UPDATE_AS_PARAM()
C     if (scale2.ne.0d0) stop 1

      IF(3.EQ.PDGS(1).AND.-3.EQ.PDGS(2).AND.-11.EQ.PDGS(3)
     $ .AND.11.EQ.PDGS(4).AND.-11.EQ.PDGS(5).AND.11.EQ.PDGS(6)
     $ .AND.(PROCID.LE.0.OR.PROCID.EQ.1)) THEN  ! 0
        CALL M0_SMATRIXHEL(P, NHEL, ANS)
      ELSE IF(3.EQ.PDGS(1).AND.-3.EQ.PDGS(2).AND.-13.EQ.PDGS(3)
     $ .AND.13.EQ.PDGS(4).AND.-13.EQ.PDGS(5).AND.13.EQ.PDGS(6)
     $ .AND.(PROCID.LE.0.OR.PROCID.EQ.1)) THEN  ! 1
        CALL M1_SMATRIXHEL(P, NHEL, ANS)
      ELSE IF(3.EQ.PDGS(1).AND.-3.EQ.PDGS(2).AND.-11.EQ.PDGS(3)
     $ .AND.11.EQ.PDGS(4).AND.-13.EQ.PDGS(5).AND.13.EQ.PDGS(6)
     $ .AND.(PROCID.LE.0.OR.PROCID.EQ.1)) THEN  ! 2
        CALL M2_SMATRIXHEL(P, NHEL, ANS)
      ENDIF

      RETURN
      END

      SUBROUTINE INITIALISE(PATH)
C     ROUTINE FOR F2PY to read the benchmark point.
      IMPLICIT NONE
      CHARACTER*512 PATH
CF2PY INTENT(IN) :: PATH
      CALL SETPARA(PATH)  !first call to setup the paramaters
      RETURN
      END


      SUBROUTINE CHANGE_PARA(NAME, VALUE)
      IMPLICIT NONE
CF2PY intent(in) :: name
CF2PY intent(in) :: value

      CHARACTER*512 NAME
      DOUBLE PRECISION VALUE

      LOGICAL M2_HELRESET
      COMMON /M2_HELRESET/ M2_HELRESET
      LOGICAL M0_HELRESET
      COMMON /M0_HELRESET/ M0_HELRESET
      LOGICAL M1_HELRESET
      COMMON /M1_HELRESET/ M1_HELRESET

      INCLUDE '../Source/MODEL/input.inc'
      INCLUDE '../Source/MODEL/coupl.inc'

      M2_HELRESET = .TRUE.
      M0_HELRESET = .TRUE.
      M1_HELRESET = .TRUE.

      SELECT CASE (NAME)
      CASE ('CKMlambda')
      MDL_CKMLAMBDA = VALUE
      CASE ('CKMBLOCK_2')
      MDL_CKMLAMBDA = VALUE
      CASE ('CKMA')
      MDL_CKMA = VALUE
      CASE ('CKMBLOCK_3')
      MDL_CKMA = VALUE
      CASE ('CKMrho')
      MDL_CKMRHO = VALUE
      CASE ('CKMBLOCK_4')
      MDL_CKMRHO = VALUE
      CASE ('CKMeta')
      MDL_CKMETA = VALUE
      CASE ('CKMBLOCK_5')
      MDL_CKMETA = VALUE
      CASE ('MD')
      MDL_MD = VALUE
      CASE ('MASS_1')
      MDL_MD = VALUE
      CASE ('MU')
      MDL_MU = VALUE
      CASE ('MASS_2')
      MDL_MU = VALUE
      CASE ('MS')
      MDL_MS = VALUE
      CASE ('MASS_3')
      MDL_MS = VALUE
      CASE ('MC')
      MDL_MC = VALUE
      CASE ('MASS_4')
      MDL_MC = VALUE
      CASE ('MB')
      MDL_MB = VALUE
      CASE ('MASS_5')
      MDL_MB = VALUE
      CASE ('MT')
      MDL_MT = VALUE
      CASE ('MASS_6')
      MDL_MT = VALUE
      CASE ('Me')
      MDL_ME = VALUE
      CASE ('MASS_11')
      MDL_ME = VALUE
      CASE ('MMU')
      MDL_MMU = VALUE
      CASE ('MASS_13')
      MDL_MMU = VALUE
      CASE ('MTA')
      MDL_MTA = VALUE
      CASE ('MASS_15')
      MDL_MTA = VALUE
      CASE ('MZ')
      MDL_MZ = VALUE
      CASE ('MASS_23')
      MDL_MZ = VALUE
      CASE ('MH')
      MDL_MH = VALUE
      CASE ('MASS_25')
      MDL_MH = VALUE
      CASE ('LambdaSMEFT')
      MDL_LAMBDASMEFT = VALUE
      CASE ('SMEFTCUTOFF_1')
      MDL_LAMBDASMEFT = VALUE
      CASE ('aEW')
      MDL_AEW = VALUE
      CASE ('SMINPUTS_1')
      MDL_AEW = VALUE
      CASE ('Gf')
      MDL_GF = VALUE
      CASE ('SMINPUTS_2')
      MDL_GF = VALUE
      CASE ('aS')
      AS = VALUE
      CASE ('SMINPUTS_3')
      AS = VALUE
      CASE ('ymdo')
      MDL_YMDO = VALUE
      CASE ('YUKAWA_1')
      MDL_YMDO = VALUE
      CASE ('ymup')
      MDL_YMUP = VALUE
      CASE ('YUKAWA_2')
      MDL_YMUP = VALUE
      CASE ('yms')
      MDL_YMS = VALUE
      CASE ('YUKAWA_3')
      MDL_YMS = VALUE
      CASE ('ymc')
      MDL_YMC = VALUE
      CASE ('YUKAWA_4')
      MDL_YMC = VALUE
      CASE ('ymb')
      MDL_YMB = VALUE
      CASE ('YUKAWA_5')
      MDL_YMB = VALUE
      CASE ('ymt')
      MDL_YMT = VALUE
      CASE ('YUKAWA_6')
      MDL_YMT = VALUE
      CASE ('yme')
      MDL_YME = VALUE
      CASE ('YUKAWA_11')
      MDL_YME = VALUE
      CASE ('ymm')
      MDL_YMM = VALUE
      CASE ('YUKAWA_13')
      MDL_YMM = VALUE
      CASE ('ymtau')
      MDL_YMTAU = VALUE
      CASE ('YUKAWA_15')
      MDL_YMTAU = VALUE
      CASE ('WT')
      MDL_WT = VALUE
      CASE ('DECAY_6')
      MDL_WT = VALUE
      CASE ('WZ')
      MDL_WZ = VALUE
      CASE ('DECAY_23')
      MDL_WZ = VALUE
      CASE ('WW')
      MDL_WW = VALUE
      CASE ('DECAY_24')
      MDL_WW = VALUE
      CASE ('WH')
      MDL_WH = VALUE
      CASE ('DECAY_25')
      MDL_WH = VALUE
      CASE DEFAULT
      WRITE(*,*) 'no parameter matching', NAME, VALUE
      END SELECT

      RETURN
      END

      SUBROUTINE UPDATE_ALL_COUP()
      IMPLICIT NONE
      CALL COUP()
      RETURN
      END


      SUBROUTINE GET_PDG_ORDER(PDG, ALLPROC)
      IMPLICIT NONE
CF2PY INTEGER, intent(out) :: PDG(3,6)
CF2PY INTEGER, intent(out) :: ALLPROC(3)
      INTEGER PDG(3,6), PDGS(3,6)
      INTEGER ALLPROC(3),PIDS(3)
      DATA PDGS/ 3,3,3,-3,-3,-3,-11,-13,-11,11,13,11,-11,-13,-13,11,13
     $ ,13 /
      DATA PIDS/ 1,1,1 /
      PDG = PDGS
      ALLPROC = PIDS
      RETURN
      END

      SUBROUTINE GET_PREFIX(PREFIX)
      IMPLICIT NONE
CF2PY CHARACTER*20, intent(out) :: PREFIX(3)
      CHARACTER*20 PREFIX(3),PREF(3)
      DATA PREF / 'M0_','M1_','M2_'/
      PREFIX = PREF
      RETURN
      END



