      SUBROUTINE M1_SMATRIXHEL(P,HEL,ANS)
      IMPLICIT NONE
C     
C     CONSTANT
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=6)
      INTEGER                 NCOMB
      PARAMETER (             NCOMB=64)
CF2PY INTENT(OUT) :: ANS
CF2PY INTENT(IN) :: HEL
CF2PY INTENT(IN) :: P(0:3,NEXTERNAL)

C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL),ANS
      INTEGER HEL
C     
C     GLOBAL VARIABLES
C     
      INTEGER USERHEL
      COMMON/M1_HELUSERCHOICE/USERHEL
C     ----------
C     BEGIN CODE
C     ----------
      USERHEL=HEL
      CALL M1_SMATRIX(P,ANS)
      USERHEL=-1

      END

      SUBROUTINE M1_SMATRIX(P,ANS)
C     
C     Generated by MadGraph5_aMC@NLO v. 2.9.19, 2024-03-20
C     By the MadGraph5_aMC@NLO Development Team
C     Visit launchpad.net/madgraph5 and amcatnlo.web.cern.ch
C     
C     MadGraph5_aMC@NLO StandAlone Version
C     
C     Returns amplitude squared summed/avg over colors
C     and helicities
C     for the point in phase space P(0:3,NEXTERNAL)
C     
C     Process: u u~ > mu+ mu- mu+ mu- WEIGHTED<=8 @1
C     
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=6)
      INTEGER    NINITIAL
      PARAMETER (NINITIAL=2)
      INTEGER NPOLENTRIES
      PARAMETER (NPOLENTRIES=(NEXTERNAL+1)*6)
      INTEGER                 NCOMB
      PARAMETER (             NCOMB=64)
      INTEGER HELAVGFACTOR
      PARAMETER (HELAVGFACTOR=4)
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL),ANS
CF2PY INTENT(OUT) :: ANS
CF2PY INTENT(IN) :: P(0:3,NEXTERNAL)
C     
C     LOCAL VARIABLES 
C     
      INTEGER NHEL(NEXTERNAL,NCOMB),NTRY
C     put in common block to expose this variable to python interface
      COMMON/M1_PROCESS_NHEL/NHEL
      REAL*8 T
      REAL*8 M1_MATRIX
      INTEGER IHEL,IDEN, I, J
C     For a 1>N process, them BEAMTWO_HELAVGFACTOR would be set to 1.
      INTEGER BEAMS_HELAVGFACTOR(2)
      DATA (BEAMS_HELAVGFACTOR(I),I=1,2)/2,2/
      INTEGER JC(NEXTERNAL)
      LOGICAL GOODHEL(NCOMB)
      DATA NTRY/0/
      DATA GOODHEL/NCOMB*.FALSE./

C     
C     GLOBAL VARIABLES
C     
      INTEGER USERHEL
      COMMON/M1_HELUSERCHOICE/USERHEL
      DATA USERHEL/-1/
      LOGICAL HELRESET
      COMMON/M1_HELRESET/HELRESET
      DATA HELRESET/.TRUE./

      DATA (NHEL(I,   1),I=1,6) / 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,   2),I=1,6) / 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,   3),I=1,6) / 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,   4),I=1,6) / 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,   5),I=1,6) / 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,   6),I=1,6) / 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,   7),I=1,6) / 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,   8),I=1,6) / 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,   9),I=1,6) / 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,  10),I=1,6) / 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,  11),I=1,6) / 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  12),I=1,6) / 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  13),I=1,6) / 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,  14),I=1,6) / 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,  15),I=1,6) / 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,  16),I=1,6) / 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,  17),I=1,6) / 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I,  18),I=1,6) / 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I,  19),I=1,6) / 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I,  20),I=1,6) / 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I,  21),I=1,6) / 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I,  22),I=1,6) / 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I,  23),I=1,6) / 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I,  24),I=1,6) / 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I,  25),I=1,6) / 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I,  26),I=1,6) / 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I,  27),I=1,6) / 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I,  28),I=1,6) / 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I,  29),I=1,6) / 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I,  30),I=1,6) / 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I,  31),I=1,6) / 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,  32),I=1,6) / 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I,  33),I=1,6) /-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,  34),I=1,6) /-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,  35),I=1,6) /-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,  36),I=1,6) /-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,  37),I=1,6) /-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,  38),I=1,6) /-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,  39),I=1,6) /-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,  40),I=1,6) /-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,  41),I=1,6) /-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,  42),I=1,6) /-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,  43),I=1,6) /-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  44),I=1,6) /-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  45),I=1,6) /-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,  46),I=1,6) /-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,  47),I=1,6) /-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,  48),I=1,6) /-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,  49),I=1,6) /-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I,  50),I=1,6) /-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I,  51),I=1,6) /-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I,  52),I=1,6) /-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I,  53),I=1,6) /-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I,  54),I=1,6) /-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I,  55),I=1,6) /-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I,  56),I=1,6) /-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I,  57),I=1,6) /-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I,  58),I=1,6) /-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I,  59),I=1,6) /-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I,  60),I=1,6) /-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I,  61),I=1,6) /-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I,  62),I=1,6) /-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I,  63),I=1,6) /-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,  64),I=1,6) /-1, 1,-1, 1,-1, 1/
      DATA IDEN/144/

      INTEGER POLARIZATIONS(0:NEXTERNAL,0:5)
      COMMON/M1_BORN_BEAM_POL/POLARIZATIONS
      DATA ((POLARIZATIONS(I,J),I=0,NEXTERNAL),J=0,5)/NPOLENTRIES*-1/

C     
C     FUNCTIONS
C     
      LOGICAL M1_IS_BORN_HEL_SELECTED

C     ----------
C     Check if helreset mode is on
C     ---------
      IF (HELRESET) THEN
        NTRY = 0
        DO I=1,NCOMB
          GOODHEL(I) = .FALSE.
        ENDDO
        HELRESET = .FALSE.
      ENDIF

C     ----------
C     BEGIN CODE
C     ----------
      IF(USERHEL.EQ.-1) NTRY=NTRY+1
      DO IHEL=1,NEXTERNAL
        JC(IHEL) = +1
      ENDDO
C     When spin-2 particles are involved, the Helicity filtering is
C      dangerous for the 2->1 topology.
C     This is because depending on the MC setup the initial PS points
C      have back-to-back initial states
C     for which some of the spin-2 helicity configurations are zero.
C      But they are no longer zero
C     if the point is boosted on the z-axis. Remember that HELAS
C      helicity amplitudes are no longer
C     lorentz invariant with expternal spin-2 particles (only the
C      helicity sum is).
C     For this reason, we simply remove the filterin when there is
C      only three external particles.
      IF (NEXTERNAL.LE.3) THEN
        DO IHEL=1,NCOMB
          GOODHEL(IHEL)=.TRUE.
        ENDDO
      ENDIF
      ANS = 0D0
      DO IHEL=1,NCOMB
        IF (USERHEL.EQ.-1.OR.USERHEL.EQ.IHEL) THEN
          IF (GOODHEL(IHEL) .OR. NTRY .LT. 20.OR.USERHEL.NE.-1) THEN
            IF(NTRY.GE.2.AND.POLARIZATIONS(0,0).NE.
     $       -1.AND.(.NOT.M1_IS_BORN_HEL_SELECTED(IHEL))) THEN
              CYCLE
            ENDIF
            T=M1_MATRIX(P ,NHEL(1,IHEL),JC(1))
            IF(POLARIZATIONS(0,0).EQ.
     $       -1.OR.M1_IS_BORN_HEL_SELECTED(IHEL)) THEN
              ANS=ANS+T
            ENDIF
            IF (T .NE. 0D0 .AND. .NOT.    GOODHEL(IHEL)) THEN
              GOODHEL(IHEL)=.TRUE.
            ENDIF
          ENDIF
        ENDIF
      ENDDO
      ANS=ANS/DBLE(IDEN)
      IF(USERHEL.NE.-1) THEN
        ANS=ANS*HELAVGFACTOR
      ELSE
        DO J=1,NINITIAL
          IF (POLARIZATIONS(J,0).NE.-1) THEN
            ANS=ANS*BEAMS_HELAVGFACTOR(J)
            ANS=ANS/POLARIZATIONS(J,0)
          ENDIF
        ENDDO
      ENDIF
      END


      REAL*8 FUNCTION M1_MATRIX(P,NHEL,IC)
C     
C     Generated by MadGraph5_aMC@NLO v. 2.9.19, 2024-03-20
C     By the MadGraph5_aMC@NLO Development Team
C     Visit launchpad.net/madgraph5 and amcatnlo.web.cern.ch
C     
C     Returns amplitude squared -- no average over initial
C      state/symmetry factor
C     for the point with external lines W(0:6,NEXTERNAL)
C     
C     Process: u u~ > mu+ mu- mu+ mu- WEIGHTED<=8 @1
C     
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NGRAPHS
      PARAMETER (NGRAPHS=68)
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=6)
      INTEGER    NWAVEFUNCS, NCOLOR
      PARAMETER (NWAVEFUNCS=26, NCOLOR=1)
      REAL*8     ZERO
      PARAMETER (ZERO=0D0)
      COMPLEX*16 IMAG1
      PARAMETER (IMAG1=(0D0,1D0))
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL), IC(NEXTERNAL)
C     
C     LOCAL VARIABLES 
C     
      INTEGER I,J
      COMPLEX*16 ZTEMP
      REAL*8 CF(NCOLOR,NCOLOR)
      COMPLEX*16 AMP(NGRAPHS), JAMP(NCOLOR), TMP_JAMP(0)
      COMPLEX*16 W(20,NWAVEFUNCS)
      COMPLEX*16 DUM0,DUM1
      DATA DUM0, DUM1/(0D0, 0D0), (1D0, 0D0)/
C     
C     GLOBAL VARIABLES
C     
      INCLUDE 'coupl.inc'

C     
C     COLOR DATA
C     
      DATA (CF(I,  1),I=  1,  1) /3.000000000000000D+00/
C     1 T(2,1)
C     ----------
C     BEGIN CODE
C     ----------
      CALL IXXXXX(P(0,1),MDL_MU,NHEL(1),+1*IC(1),W(1,1))
      CALL OXXXXX(P(0,2),MDL_MU,NHEL(2),-1*IC(2),W(1,2))
      CALL IXXXXX(P(0,3),MDL_MMU,NHEL(3),-1*IC(3),W(1,3))
      CALL OXXXXX(P(0,4),MDL_MMU,NHEL(4),+1*IC(4),W(1,4))
      CALL IXXXXX(P(0,5),MDL_MMU,NHEL(5),-1*IC(5),W(1,5))
      CALL OXXXXX(P(0,6),MDL_MMU,NHEL(6),+1*IC(6),W(1,6))
      CALL FFV1P0_3(W(1,1),W(1,2),GC_2,ZERO,ZERO,W(1,7))
      CALL FFS2_3(W(1,3),W(1,4),GC_773,MDL_MH,MDL_WH,W(1,8))
      CALL FFV1_2(W(1,5),W(1,7),-GC_3,MDL_MMU,ZERO,W(1,9))
C     Amplitude(s) for diagram number 1
      CALL FFS2_0(W(1,9),W(1,6),W(1,8),GC_773,AMP(1))
      CALL FFV1_1(W(1,6),W(1,7),-GC_3,MDL_MMU,ZERO,W(1,10))
C     Amplitude(s) for diagram number 2
      CALL FFS2_0(W(1,5),W(1,10),W(1,8),GC_773,AMP(2))
      CALL FFV1_3_3(W(1,1),W(1,2),GC_196,GC_135,MDL_MZ,MDL_WZ,W(1,11))
      CALL FFV1_3_2(W(1,5),W(1,11),GC_197,-GC_135,MDL_MMU,ZERO,W(1,12))
C     Amplitude(s) for diagram number 3
      CALL FFS2_0(W(1,12),W(1,6),W(1,8),GC_773,AMP(3))
      CALL FFV1_3_1(W(1,6),W(1,11),GC_197,-GC_135,MDL_MMU,ZERO,W(1,13))
C     Amplitude(s) for diagram number 4
      CALL FFS2_0(W(1,5),W(1,13),W(1,8),GC_773,AMP(4))
      CALL FFS2_3(W(1,1),W(1,2),GC_1261,MDL_MH,MDL_WH,W(1,14))
      CALL FFV1P0_3(W(1,3),W(1,4),-GC_3,ZERO,ZERO,W(1,15))
      CALL FFS2_2(W(1,5),W(1,14),GC_773,MDL_MMU,ZERO,W(1,16))
C     Amplitude(s) for diagram number 5
      CALL FFV1_0(W(1,16),W(1,6),W(1,15),-GC_3,AMP(5))
      CALL FFS2_1(W(1,6),W(1,14),GC_773,MDL_MMU,ZERO,W(1,17))
C     Amplitude(s) for diagram number 6
      CALL FFV1_0(W(1,5),W(1,17),W(1,15),-GC_3,AMP(6))
      CALL FFV1_3_3(W(1,3),W(1,4),GC_197,-GC_135,MDL_MZ,MDL_WZ,W(1,18))
C     Amplitude(s) for diagram number 7
      CALL FFV1_3_0(W(1,16),W(1,6),W(1,18),GC_197,-GC_135,AMP(7))
C     Amplitude(s) for diagram number 8
      CALL FFV1_3_0(W(1,5),W(1,17),W(1,18),GC_197,-GC_135,AMP(8))
C     Amplitude(s) for diagram number 9
      CALL FFS2_0(W(1,16),W(1,6),W(1,8),GC_773,AMP(9))
C     Amplitude(s) for diagram number 10
      CALL FFS2_0(W(1,5),W(1,17),W(1,8),GC_773,AMP(10))
      CALL FFS2_3(W(1,5),W(1,6),GC_773,MDL_MH,MDL_WH,W(1,19))
C     Amplitude(s) for diagram number 11
      CALL VVS4_0(W(1,11),W(1,18),W(1,19),GC_285,AMP(11))
      CALL FFV1_3_3(W(1,5),W(1,6),GC_197,-GC_135,MDL_MZ,MDL_WZ,W(1,20))
C     Amplitude(s) for diagram number 12
      CALL VVS4_0(W(1,11),W(1,20),W(1,8),GC_285,AMP(12))
C     Amplitude(s) for diagram number 13
      CALL VVS4_0(W(1,18),W(1,20),W(1,14),GC_285,AMP(13))
C     Amplitude(s) for diagram number 14
      CALL SSS1_0(W(1,14),W(1,8),W(1,19),GC_261,AMP(14))
      CALL FFS2_3(W(1,3),W(1,6),GC_773,MDL_MH,MDL_WH,W(1,21))
      CALL FFV1_1(W(1,4),W(1,7),-GC_3,MDL_MMU,ZERO,W(1,22))
C     Amplitude(s) for diagram number 15
      CALL FFS2_0(W(1,5),W(1,22),W(1,21),GC_773,AMP(15))
C     Amplitude(s) for diagram number 16
      CALL FFS2_0(W(1,9),W(1,4),W(1,21),GC_773,AMP(16))
      CALL FFV1_3_1(W(1,4),W(1,11),GC_197,-GC_135,MDL_MMU,ZERO,W(1,9))
C     Amplitude(s) for diagram number 17
      CALL FFS2_0(W(1,5),W(1,9),W(1,21),GC_773,AMP(17))
C     Amplitude(s) for diagram number 18
      CALL FFS2_0(W(1,12),W(1,4),W(1,21),GC_773,AMP(18))
      CALL FFV1P0_3(W(1,3),W(1,6),-GC_3,ZERO,ZERO,W(1,12))
      CALL FFS2_1(W(1,4),W(1,14),GC_773,MDL_MMU,ZERO,W(1,23))
C     Amplitude(s) for diagram number 19
      CALL FFV1_0(W(1,5),W(1,23),W(1,12),-GC_3,AMP(19))
C     Amplitude(s) for diagram number 20
      CALL FFV1_0(W(1,16),W(1,4),W(1,12),-GC_3,AMP(20))
      CALL FFV1_3_3(W(1,3),W(1,6),GC_197,-GC_135,MDL_MZ,MDL_WZ,W(1,24))
C     Amplitude(s) for diagram number 21
      CALL FFV1_3_0(W(1,5),W(1,23),W(1,24),GC_197,-GC_135,AMP(21))
C     Amplitude(s) for diagram number 22
      CALL FFV1_3_0(W(1,16),W(1,4),W(1,24),GC_197,-GC_135,AMP(22))
C     Amplitude(s) for diagram number 23
      CALL FFS2_0(W(1,5),W(1,23),W(1,21),GC_773,AMP(23))
C     Amplitude(s) for diagram number 24
      CALL FFS2_0(W(1,16),W(1,4),W(1,21),GC_773,AMP(24))
      CALL FFS2_3(W(1,5),W(1,4),GC_773,MDL_MH,MDL_WH,W(1,16))
C     Amplitude(s) for diagram number 25
      CALL VVS4_0(W(1,11),W(1,24),W(1,16),GC_285,AMP(25))
      CALL FFV1_3_3(W(1,5),W(1,4),GC_197,-GC_135,MDL_MZ,MDL_WZ,W(1,25))
C     Amplitude(s) for diagram number 26
      CALL VVS4_0(W(1,11),W(1,25),W(1,21),GC_285,AMP(26))
C     Amplitude(s) for diagram number 27
      CALL VVS4_0(W(1,24),W(1,25),W(1,14),GC_285,AMP(27))
C     Amplitude(s) for diagram number 28
      CALL SSS1_0(W(1,14),W(1,21),W(1,16),GC_261,AMP(28))
      CALL FFV1_2(W(1,3),W(1,7),-GC_3,MDL_MMU,ZERO,W(1,26))
C     Amplitude(s) for diagram number 29
      CALL FFS2_0(W(1,26),W(1,6),W(1,16),GC_773,AMP(29))
C     Amplitude(s) for diagram number 30
      CALL FFS2_0(W(1,3),W(1,10),W(1,16),GC_773,AMP(30))
      CALL FFV1_3_2(W(1,3),W(1,11),GC_197,-GC_135,MDL_MMU,ZERO,W(1,10))
C     Amplitude(s) for diagram number 31
      CALL FFS2_0(W(1,10),W(1,6),W(1,16),GC_773,AMP(31))
C     Amplitude(s) for diagram number 32
      CALL FFS2_0(W(1,3),W(1,13),W(1,16),GC_773,AMP(32))
      CALL FFV1P0_3(W(1,5),W(1,4),-GC_3,ZERO,ZERO,W(1,13))
      CALL FFS2_2(W(1,3),W(1,14),GC_773,MDL_MMU,ZERO,W(1,11))
C     Amplitude(s) for diagram number 33
      CALL FFV1_0(W(1,11),W(1,6),W(1,13),-GC_3,AMP(33))
C     Amplitude(s) for diagram number 34
      CALL FFV1_0(W(1,3),W(1,17),W(1,13),-GC_3,AMP(34))
C     Amplitude(s) for diagram number 35
      CALL FFV1_3_0(W(1,11),W(1,6),W(1,25),GC_197,-GC_135,AMP(35))
C     Amplitude(s) for diagram number 36
      CALL FFV1_3_0(W(1,3),W(1,17),W(1,25),GC_197,-GC_135,AMP(36))
C     Amplitude(s) for diagram number 37
      CALL FFS2_0(W(1,11),W(1,6),W(1,16),GC_773,AMP(37))
C     Amplitude(s) for diagram number 38
      CALL FFS2_0(W(1,3),W(1,17),W(1,16),GC_773,AMP(38))
C     Amplitude(s) for diagram number 39
      CALL FFS2_0(W(1,26),W(1,4),W(1,19),GC_773,AMP(39))
C     Amplitude(s) for diagram number 40
      CALL FFS2_0(W(1,3),W(1,22),W(1,19),GC_773,AMP(40))
C     Amplitude(s) for diagram number 41
      CALL FFS2_0(W(1,10),W(1,4),W(1,19),GC_773,AMP(41))
C     Amplitude(s) for diagram number 42
      CALL FFS2_0(W(1,3),W(1,9),W(1,19),GC_773,AMP(42))
      CALL FFV1P0_3(W(1,5),W(1,6),-GC_3,ZERO,ZERO,W(1,9))
C     Amplitude(s) for diagram number 43
      CALL FFV1_0(W(1,11),W(1,4),W(1,9),-GC_3,AMP(43))
C     Amplitude(s) for diagram number 44
      CALL FFV1_0(W(1,3),W(1,23),W(1,9),-GC_3,AMP(44))
C     Amplitude(s) for diagram number 45
      CALL FFV1_3_0(W(1,11),W(1,4),W(1,20),GC_197,-GC_135,AMP(45))
C     Amplitude(s) for diagram number 46
      CALL FFV1_3_0(W(1,3),W(1,23),W(1,20),GC_197,-GC_135,AMP(46))
C     Amplitude(s) for diagram number 47
      CALL FFS2_0(W(1,11),W(1,4),W(1,19),GC_773,AMP(47))
C     Amplitude(s) for diagram number 48
      CALL FFS2_0(W(1,3),W(1,23),W(1,19),GC_773,AMP(48))
      CALL FFV1_2(W(1,1),W(1,15),GC_2,MDL_MU,ZERO,W(1,23))
C     Amplitude(s) for diagram number 49
      CALL FFS2_0(W(1,23),W(1,2),W(1,19),GC_1261,AMP(49))
      CALL FFS2_2(W(1,1),W(1,19),GC_1261,MDL_MU,ZERO,W(1,23))
C     Amplitude(s) for diagram number 50
      CALL FFV1_0(W(1,23),W(1,2),W(1,15),GC_2,AMP(50))
      CALL FFV1_3_2(W(1,1),W(1,18),GC_196,GC_135,MDL_MU,ZERO,W(1,15))
C     Amplitude(s) for diagram number 51
      CALL FFS2_0(W(1,15),W(1,2),W(1,19),GC_1261,AMP(51))
C     Amplitude(s) for diagram number 52
      CALL FFV1_3_0(W(1,23),W(1,2),W(1,18),GC_196,GC_135,AMP(52))
      CALL FFS2_2(W(1,1),W(1,8),GC_1261,MDL_MU,ZERO,W(1,18))
C     Amplitude(s) for diagram number 53
      CALL FFV1_0(W(1,18),W(1,2),W(1,9),GC_2,AMP(53))
      CALL FFV1_2(W(1,1),W(1,9),GC_2,MDL_MU,ZERO,W(1,15))
C     Amplitude(s) for diagram number 54
      CALL FFS2_0(W(1,15),W(1,2),W(1,8),GC_1261,AMP(54))
C     Amplitude(s) for diagram number 55
      CALL FFV1_3_0(W(1,18),W(1,2),W(1,20),GC_196,GC_135,AMP(55))
      CALL FFV1_3_2(W(1,1),W(1,20),GC_196,GC_135,MDL_MU,ZERO,W(1,15))
C     Amplitude(s) for diagram number 56
      CALL FFS2_0(W(1,15),W(1,2),W(1,8),GC_1261,AMP(56))
C     Amplitude(s) for diagram number 57
      CALL FFS2_0(W(1,18),W(1,2),W(1,19),GC_1261,AMP(57))
C     Amplitude(s) for diagram number 58
      CALL FFS2_0(W(1,23),W(1,2),W(1,8),GC_1261,AMP(58))
      CALL FFV1_2(W(1,1),W(1,12),GC_2,MDL_MU,ZERO,W(1,23))
C     Amplitude(s) for diagram number 59
      CALL FFS2_0(W(1,23),W(1,2),W(1,16),GC_1261,AMP(59))
      CALL FFS2_2(W(1,1),W(1,16),GC_1261,MDL_MU,ZERO,W(1,23))
C     Amplitude(s) for diagram number 60
      CALL FFV1_0(W(1,23),W(1,2),W(1,12),GC_2,AMP(60))
      CALL FFV1_3_2(W(1,1),W(1,24),GC_196,GC_135,MDL_MU,ZERO,W(1,12))
C     Amplitude(s) for diagram number 61
      CALL FFS2_0(W(1,12),W(1,2),W(1,16),GC_1261,AMP(61))
C     Amplitude(s) for diagram number 62
      CALL FFV1_3_0(W(1,23),W(1,2),W(1,24),GC_196,GC_135,AMP(62))
      CALL FFS2_2(W(1,1),W(1,21),GC_1261,MDL_MU,ZERO,W(1,24))
C     Amplitude(s) for diagram number 63
      CALL FFV1_0(W(1,24),W(1,2),W(1,13),GC_2,AMP(63))
      CALL FFV1_2(W(1,1),W(1,13),GC_2,MDL_MU,ZERO,W(1,12))
C     Amplitude(s) for diagram number 64
      CALL FFS2_0(W(1,12),W(1,2),W(1,21),GC_1261,AMP(64))
C     Amplitude(s) for diagram number 65
      CALL FFV1_3_0(W(1,24),W(1,2),W(1,25),GC_196,GC_135,AMP(65))
      CALL FFV1_3_2(W(1,1),W(1,25),GC_196,GC_135,MDL_MU,ZERO,W(1,12))
C     Amplitude(s) for diagram number 66
      CALL FFS2_0(W(1,12),W(1,2),W(1,21),GC_1261,AMP(66))
C     Amplitude(s) for diagram number 67
      CALL FFS2_0(W(1,24),W(1,2),W(1,16),GC_1261,AMP(67))
C     Amplitude(s) for diagram number 68
      CALL FFS2_0(W(1,23),W(1,2),W(1,21),GC_1261,AMP(68))
      JAMP(1)=+AMP(1)+AMP(2)+AMP(3)+AMP(4)+AMP(5)+AMP(6)+AMP(7)+AMP(8)
     $ +AMP(9)+AMP(10)+AMP(11)+AMP(12)+AMP(13)+AMP(14)-AMP(15)-AMP(16)
     $ -AMP(17)-AMP(18)-AMP(19)-AMP(20)-AMP(21)-AMP(22)-AMP(23)-AMP(24)
     $ -AMP(25)-AMP(26)-AMP(27)-AMP(28)-AMP(29)-AMP(30)-AMP(31)-AMP(32)
     $ -AMP(33)-AMP(34)-AMP(35)-AMP(36)-AMP(37)-AMP(38)+AMP(39)+AMP(40)
     $ +AMP(41)+AMP(42)+AMP(43)+AMP(44)+AMP(45)+AMP(46)+AMP(47)+AMP(48)
     $ +AMP(49)+AMP(50)+AMP(51)+AMP(52)+AMP(53)+AMP(54)+AMP(55)+AMP(56)
     $ +AMP(57)+AMP(58)-AMP(59)-AMP(60)-AMP(61)-AMP(62)-AMP(63)-AMP(64)
     $ -AMP(65)-AMP(66)-AMP(67)-AMP(68)

      M1_MATRIX = 0.D0
      DO I = 1, NCOLOR
        ZTEMP = (0.D0,0.D0)
        DO J = 1, NCOLOR
          ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
        ENDDO
        M1_MATRIX = M1_MATRIX+ZTEMP*DCONJG(JAMP(I))
      ENDDO

      END

      SUBROUTINE M1_GET_VALUE(P, ALPHAS, NHEL ,ANS)
      IMPLICIT NONE
C     
C     CONSTANT
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=6)
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL),ANS
      INTEGER NHEL
      DOUBLE PRECISION ALPHAS
      REAL*8 PI
CF2PY INTENT(OUT) :: ANS
CF2PY INTENT(IN) :: NHEL
CF2PY INTENT(IN) :: P(0:3,NEXTERNAL)
CF2PY INTENT(IN) :: ALPHAS
C     ROUTINE FOR F2PY to read the benchmark point.    
C     the include file with the values of the parameters and masses 
      INCLUDE 'coupl.inc'

      PI = 3.141592653589793D0
      G = 2* DSQRT(ALPHAS*PI)
      CALL UPDATE_AS_PARAM()
      IF (NHEL.NE.0) THEN
        CALL M1_SMATRIXHEL(P, NHEL, ANS)
      ELSE
        CALL M1_SMATRIX(P, ANS)
      ENDIF
      RETURN
      END

      SUBROUTINE M1_INITIALISEMODEL(PATH)
C     ROUTINE FOR F2PY to read the benchmark point.    
      IMPLICIT NONE
      CHARACTER*512 PATH
CF2PY INTENT(IN) :: PATH
      CALL SETPARA(PATH)  !first call to setup the paramaters    
      RETURN
      END

      LOGICAL FUNCTION M1_IS_BORN_HEL_SELECTED(HELID)
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=6)
      INTEGER    NCOMB
      PARAMETER (NCOMB=64)
C     
C     ARGUMENTS
C     
      INTEGER HELID
C     
C     LOCALS
C     
      INTEGER I,J
      LOGICAL FOUNDIT
C     
C     GLOBALS
C     
      INTEGER HELC(NEXTERNAL,NCOMB)
      COMMON/M1_PROCESS_NHEL/HELC

      INTEGER POLARIZATIONS(0:NEXTERNAL,0:5)
      COMMON/M1_BORN_BEAM_POL/POLARIZATIONS
C     ----------
C     BEGIN CODE
C     ----------

      M1_IS_BORN_HEL_SELECTED = .TRUE.
      IF (POLARIZATIONS(0,0).EQ.-1) THEN
        RETURN
      ENDIF

      DO I=1,NEXTERNAL
        IF (POLARIZATIONS(I,0).EQ.-1) THEN
          CYCLE
        ENDIF
        FOUNDIT = .FALSE.
        DO J=1,POLARIZATIONS(I,0)
          IF (HELC(I,HELID).EQ.POLARIZATIONS(I,J)) THEN
            FOUNDIT = .TRUE.
            EXIT
          ENDIF
        ENDDO
        IF(.NOT.FOUNDIT) THEN
          M1_IS_BORN_HEL_SELECTED = .FALSE.
          RETURN
        ENDIF
      ENDDO

      RETURN
      END

