LINKED_LIST
  LIBRARY GEOMS GEOM TRACKS TRACK SYS FLUX BURNUP
  EDITION DATABASE ISOT ;
MODULE
  GEO: SYBILT: LIB: SHI: ASM: FLU: EVO: EDI: COMPO: DELETE: END: ;

LIBRARY := LIB: ::
  NMIX 3 CTRA WIMS
    DEPL LIB: DRAGON FIL: DLIB_J2_361
    MIXS LIB: DRAGON FIL: DLIB_J2_361
  MIX 1 1200.0                        
    O16      = 'O16'    4.61309E-2
    U235     = 'U235'   8.0729E-4 1 
    U238     = 'U238'   2.2258E-2 1 
  MIX 2 1000.0
    Zr91     = 'Zr91'     3.83243E-2
  MIX 3 600.0
    H1H2O    = 'H1_H2O'   4.62E-2   O16H2O   = 'O16'   2.31E-2

    B10     = 'B10'   7.77E-08
    B11     = 'B11'   3.11E-07

    
  ;



GEOM  := GEO: :: CARCEL 3
  X- REFL X+ REFL
  Y- REFL Y+ REFL
         MESHX 0.0 1.26
         MESHY 0.0 1.26
         RADIUS 0.0 0.410 0.418 0.480
         MIX  1 0 2 3
  SPLITR 4  1  2 
  ;
  
  
  
  
TRACK := SYBILT: GEOM ::
  TITLE 'REP'
  EDIT 1 MAXR 40 ;

LIBRARY := SHI: LIBRARY TRACK :: EDIT 0 NOLJ ;

SYS := ASM: LIBRARY TRACK ;

FLUX := FLU: SYS LIBRARY TRACK ::
  TYPE K B1 PNL BUCK BUCK 4.57567E-03 ;

EDITION := EDI: LIBRARY TRACK FLUX ::
  EDIT 3 MICR RES MERG COMP COND 4.0 SAVE  ;

END: ;   

QUIT "LIST" .
