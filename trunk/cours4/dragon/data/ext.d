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
 O16 = 'O16' 1.5345E-02
 U235 = 'U235' 2.6854E-04 1
 U238 = 'U238' 7.4039E-03 1
 Zr91 = 'Zr91' 4.2223E-03
 H1H2O = 'H1_H2O' 2.5848E-02
 O16H2O = 'O16' 1.2924E-02
 B10 = 'B10' 1.6E-07
 B11 = 'B11' 6.4E-07
 
MIX 2 300.0
 B10 = 'B10' 4.2681E-03
 B11 = 'B11' 1.7180E-02
 C = 'C0' 5.3557E-03
 H1H2O = 'H1_H2O' 3.4386E-02
 O16H2O = 'O16' 1.7193E-02
;

GCELL := GEO: ::  TUBEZ 4 6
  R+ VOID  Z- VOID Z+ VOID 
  RADIUS 0.0 5.0 65. 70. 120.
  MESHZ   
  0.0        
  10.0
  20.0
  30.0
  40.0
  50.0
  60.0

  MIX 
  1 1 2 1 
  1 1 2 1 
  1 1 2 1 
  1 1 2 1 
  1 1 2 1 
  1 1 2 1 
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
