LINKED_LIST
  LIBMIX   LIBMIXS
  GCELL    
  TRACK SYS FLUX
  EDC
  DATABASE DBC
  ;
MODULE
  GEO: LIB: 
  SHI: USS: 
  SYBILT: EXCELT: SNT: ASM: FLU: EDI:
  DELETE: END:
  PSP: UTL: COMPO: EVO:
  ;
*----
*  Microscopic cross sections from JEF2 draglib file
*----
LIBMIX := LIB: :: EDIT 0
     NMIX 2
     CTRA WIMS
     SUBG
     ANIS 2
     DEPL LIB: DRAGON FIL: DLIB_J2_361
     MIXS LIB: DRAGON FIL: DLIB_J2_361

MIX 1 300.0
Pu239 = 'Pu239' 1.3090E-03 1
U238 = 'U238' 8.9011E-03 1
O16 = 'O16' 2.0420E-02
Na23 = 'Na23' 6.6557E-03
Fe56 = 'Fe56' 9.3451E-03

MIX 2 300.0
 B10 = 'B10' 8.1571E-03
 B11 = 'B11' 3.2833E-02
 C = 'C0' 1.0236E-02
 O16H2O = 'O16' 1.7193E-02
 Na23 = 'Na23' 2.2430E-02
;

GCELL := GEO: ::  TUBEZ 4 9
  R+ VOID  Z- VOID Z+ VOID 
  RADIUS 0.0 5.0 70. 75. 148.
  MESHZ   
  0.0        
  10.0
  20.0
  30.0
  40.0
  50.0
  60.0
  70.0
  80.0
  90.0

  MIX 
  2 1 2 1 
  2 1 2 1 
  2 1 2 1 
  1 1 2 1 
  1 1 2 1 
  1 1 1 1
  1 1 1 1 
  1 1 1 1 
  1 1 1 1

  SPLITR 1 4 1 4
 ;
*******************************************


TRACK := SNT: GCELL ::
     EDIT 0
     MAXR 1000
     DIAM 1 SN 8
     SCAT 2
     QUAB 7
     TITLE 'CORE'
     ;

LIBMIXS := USS: LIBMIX TRACK :: EDIT 0 
GRMAX 1 ARM ;

SYS := ASM: LIBMIXS TRACK :: EDIT 0 ARM ;

FLUX := FLU: SYS LIBMIXS  TRACK  ::
     EDIT 1
     TYPE K
     EXTE 100 1E-4 THER 10 1E-4
     ;



END: ;
