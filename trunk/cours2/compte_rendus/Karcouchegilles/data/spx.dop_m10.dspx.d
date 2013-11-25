LINKED_LIST
  LIBRARY GEOMS GEOM TRACKS TRACK SYS FLUX BURNUP
  EDITION DATABASE ISOT ;
MODULE
  GEO: SYBILT: LIB: SHI: ASM: FLU: EVO: EDI: COMPO: DELETE: END: ;

LIBRARY := LIB: ::
  NMIX 3 CTRA WIMS
    DEPL LIB: DRAGON FIL: DLIB_J2_361
    MIXS LIB: DRAGON FIL: DLIB_J2_361
  MIX 1 1490.0                        

Pu239 = 'Pu239' 2.1782E-03 1
Pu240 = 'Pu240' 7.2335E-04 1
Pu241 = 'Pu241' 1.5060E-04 1
Pu242 = 'Pu242' 5.1218E-05 1
Am241 = 'Am241' 3.2614E-05 1
Pu238 = 'Pu238' 1.1994E-05 1
U238 = 'U238' 1.6814E-02 1
U235 = 'U235' 8.9010E-05 1
O16 = 'O16' 3.9757E-02

  MIX 2 1300.0
Fe56 = 'Fe56' 4.9852E-02
Fe58 = 'Fe58' 1.5346E-04
Cr52 = 'Cr52' 1.3100E-02
Cr54 = 'Cr54' 3.6972E-04
Ni60 = 'Ni60' 2.9912E-03
Ni62 = 'Ni62' 4.1459E-04
Fe54 = 'Fe54' 3.1761E-03
Fe57 = 'Fe57' 1.1511E-03
Cr50 = 'Cr50' 6.7944E-04
Cr53 = 'Cr53' 1.4856E-03
Ni58 = 'Ni58' 7.7656E-03
Ni61 = 'Ni61' 1.2999E-04
Ni64 = 'Ni64' 1.0557E-04
Mn55 = 'Mn55' 1.3057E-03
Mo = 'Mo0' 1.3711E-03
Ti = 'Ti0' 3.9965E-04
Cu = 'Cu0' 2.6340E-04
Si = 'Si0' 9.3679E-04


  MIX 3 800.0
Na23 = 'Na23' 2.4874E-02
  
  ;


GEOM  := GEO: :: HEXCEL 2
  HBC COMPLETE REFL
         SIDE 0.56 
         RADIUS 0.0 0.368500 0.429260
         MIX  1 2 3
  SPLITR 4  2 
  ;
    
TRACK := SYBILT: GEOM ::
  TITLE 'REP'
  EDIT 1 MAXR 40 ;

LIBRARY := SHI: LIBRARY TRACK :: EDIT 0 NOLJ ;

SYS := ASM: LIBRARY TRACK ;

FLUX := FLU: SYS LIBRARY TRACK ::
  TYPE K B1 PNL BUCK 1.47878E-03 ;

EDITION := EDI: LIBRARY TRACK FLUX ::
  EDIT 3 MICR RES MERG COMP COND 4.0 SAVE  ;

END: ;   

QUIT "LIST" .
