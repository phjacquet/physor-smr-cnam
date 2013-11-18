 DDDDDD   RRRRRR     AAA     GGGGG    OOOOO   NN     NN
 DDDDDDD  RRRRRRR   AAAAA   GGGGGGG  OOOOOOO  NNN    NN
 DD   DD  RR   RR  AA   AA  GG       OO   OO  NNNN   NN
 DD   DD  RRRRRR   AA   AA  GG  GGG  OO   OO  NN NN  NN
 DD   DD  RRRR     AAAAAAA  GG  GGG  OO   OO  NN  NN NN
 DD   DD  RR RR    AAAAAAA  GG   GG  OO   OO  NN   NNNN
 DDDDDDD  RR  RR   AA   AA  GGGGGGG  OOOOOOO  NN    NNN
 DDDDDD   RR   RR  AA   AA   GGGGG    OOOOO   NN     NN

 VERSION DRAGON 4  Version 4.0.6 ($Revision: 1666 $)                   $Date: 2012-12-10 10:12:13 -0500 (Mon, 10 Dec 2012) $           
 GROUPE D'ANALYSE NUCLEAIRE
 ECOLE POLYTECHNIQUE DE MONTREAL



 COPYRIGHT NOTICE FOR THIS VERSION OF DRAGON:
 --------------------------------------------
 Copyright (C) 2002 Ecole Polytechnique de Montreal 
 This library is free software; you can redistribute it
 and/or modify it under the terms of the GNU Lesser General
 Public License as published by the Free Software Foundation;
 either version 2.1 of the License, or (at your option) any
 later version 




* CLE-2000 VERS 2.1 * R.ROY, EPM COPYRIGHT 1999 *                           LINE
LINKED_LIST                                                                 0001
  LIBRARY GEOMS GEOM TRACKS TRACK SYS FLUX BURNUP                           0002
  EDITION DATABASE ISOT ;                                                   0003
MODULE                                                                      0004
  GEO: SYBILT: LIB: SHI: ASM: FLU: EVO: EDI: COMPO: DELETE: END: ;          0005
                                                                            0006
LIBRARY := LIB: ::                                                          0007
  NMIX 3 CTRA WIMS                                                          0008
    DEPL LIB: DRAGON FIL: DLIB_J2_361                                       0009
    MIXS LIB: DRAGON FIL: DLIB_J2_361                                       0010
  MIX 1 1190.0                                                              0011
    O16      = 'O16'    4.61309E-2                                          0012
    U235     = 'U235'   8.0729E-4 1                                         0013
    U238     = 'U238'   2.2258E-2 1                                         0014
  MIX 2 1000.0                                                              0015
    Zr91     = 'Zr91'     3.83243E-2                                        0016
  MIX 3 600.0                                                               0017
    H1H2O    = 'H1_H2O'   4.7508E-2   O16H2O   = 'O16'   2.3754E-2          0018
                                                                            0019
    B10     = 'B10'   0.2E-10                                               0020
    B11     = 'B11'   0.8E-10                                               0021
                                                                            0022
  ;                                                                         0023
                                                                            0024
                                                                            0025
                                                                            0026
GEOM  := GEO: :: CARCEL 3                                                   0027
  X- REFL X+ REFL                                                           0028
  Y- REFL Y+ REFL                                                           0029
         MESHX 0.0 1.26                                                     0030
         MESHY 0.0 1.26                                                     0031
         RADIUS 0.0 0.410 0.418 0.480                                       0032
         MIX  1 0 2 3                                                       0033
  SPLITR 4  1  2                                                            0034
  ;                                                                         0035
                                                                            0036
                                                                            0037
                                                                            0038
                                                                            0039
TRACK := SYBILT: GEOM ::                                                    0040
  TITLE 'REP'                                                               0041
  EDIT 1 MAXR 40 ;                                                          0042
                                                                            0043
LIBRARY := SHI: LIBRARY TRACK :: EDIT 0 NOLJ ;                              0044
                                                                            0045
SYS := ASM: LIBRARY TRACK ;                                                 0046
                                                                            0047
FLUX := FLU: SYS LIBRARY TRACK ::                                           0048
  TYPE K B1 PNL BUCK BUCK 4.57567E-03 ;                                     0049
                                                                            0050
EDITION := EDI: LIBRARY TRACK FLUX ::                                       0051
  EDIT 3 MICR RES MERG COMP COND 4.0 SAVE  ;                                0052
                                                                            0053
END: ;                                                                      0054
                                                                            0055
QUIT "LIST" .                                                               0056

<|LINKED_LIST                                                             |<0001
<|  LIBRARY GEOMS GEOM TRACKS TRACK SYS FLUX BURNUP                       |<0002
<|  EDITION DATABASE ISOT ;                                               |<0003
<|MODULE                                                                  |<0004
<|  GEO: SYBILT: LIB: SHI: ASM: FLU: EVO: EDI: COMPO: DELETE: END: ;      |<0005
<|LIBRARY := LIB: ::                                                      |<0007
->@BEGIN MODULE : LIB:        
->@DESCRIPTION  : Microscopic xs-library processing                                       
->@CREDITS      : A. Hebert, G. Marleau                                                   
->@COPYRIGHTS   : ECOLE POLYTECHNIQUE DE MONTREAL  
                  GNU LESSER GENERAL PUBLIC LICENSE
<|  NMIX 3 CTRA WIMS                                                      |<0008
<|    DEPL LIB: DRAGON FIL: DLIB_J2_361                                   |<0009
<|    MIXS LIB: DRAGON FIL: DLIB_J2_361                                   |<0010
<|  MIX 1 1200.0                                                          |<0011
<|    O16      = 'O16'    4.61309E-2                                      |<0012
<|    U235     = 'U235'   8.0729E-4 1                                     |<0013
<|    U238     = 'U238'   2.2258E-2 1                                     |<0014
<|  MIX 2 1000.0                                                          |<0015
<|    Zr91     = 'Zr91'     3.83243E-2                                    |<0016
<|  MIX 3 600.0                                                           |<0017
<|    H1H2O    = 'H1_H2O'   4.7508E-2   O16H2O   = 'O16'   2.3754E-2      |<0018
<|    B10     = 'B10'   0.2E-10                                           |<0020
<|    B11     = 'B11'   0.8E-10                                           |<0021
<|  ;                                                                     |<0023

 LIBEAD:  252 DEPLETING ISOTOPES HAVE BEEN ADDED IN MIXTURE    1.

 LIBEAD:  174 DEPLETING ISOTOPES HAVE BEEN ADDED IN MIXTURE    2.

 LIBEAD:   10 DEPLETING ISOTOPES HAVE BEEN ADDED IN MIXTURE    3.

 PROCESSING DRAGON LIBRARY NAMED DLIB_J2_361 .

 X-SECTION LIBRARY INFO:
 draglib from /tmp/shem361_Jef2.2 at Wed Oct 12 09:00:23 2011                    

 PROCESSING ISOTOPE/MATERIAL 'O16     0001' (HNISOR='O16         ').

 ISOTOPE/MATERIAL INFO:
 O16 from /tmp/shem361_Jef2.2 (825) at Wed Oct 12 11:09:36 2011                  

 PROCESSING ISOTOPE/MATERIAL 'U235    0001' (HNISOR='U235        ').

 ISOTOPE/MATERIAL INFO:
 U235 from /tmp/shem361_Jef2.2 (9228) at Wed Oct 12 16:08:41 2011                

 PROCESSING ISOTOPE/MATERIAL 'U238    0001' (HNISOR='U238        ').

 ISOTOPE/MATERIAL INFO:
 U238 from /tmp/shem361_Jef2.2 (9237) at Wed Oct 12 16:54:00 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr91    0002' (HNISOR='Zr91        ').

 ISOTOPE/MATERIAL INFO:
 Zr91 from /tmp/shem361_Jef2.2 (4028) at Thu Oct 13 00:32:45 2011                

 PROCESSING ISOTOPE/MATERIAL 'H1H2O   0003' (HNISOR='H1_H2O      ').

 ISOTOPE/MATERIAL INFO:
 H1_H2O from /tmp/shem361_Jef2.2 (125) at Wed Oct 12 09:00:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'O16H2O  0003' (HNISOR='O16         ').

 ISOTOPE/MATERIAL INFO:
 O16 from /tmp/shem361_Jef2.2 (825) at Wed Oct 12 11:09:36 2011                  

 PROCESSING ISOTOPE/MATERIAL 'B10     0003' (HNISOR='B10         ').

 ISOTOPE/MATERIAL INFO:
 B10 from /tmp/shem361_Jef2.2 (525) at Wed Oct 12 10:44:18 2011                  

 PROCESSING ISOTOPE/MATERIAL 'B11     0003' (HNISOR='B11         ').

 ISOTOPE/MATERIAL INFO:
 B11 from /tmp/shem361_Jef2.2 (528) at Wed Oct 12 10:49:23 2011                  

 PROCESSING ISOTOPE/MATERIAL 'H1      0001' (HNISOR='H1          ').

 ISOTOPE/MATERIAL INFO:
 H1 from /tmp/shem361_Jef2.2 (125) at Wed Oct 12 10:10:44 2011                   

 PROCESSING ISOTOPE/MATERIAL 'H2      0001' (HNISOR='H2          ').

 ISOTOPE/MATERIAL INFO:
 H2 from /tmp/shem361_Jef2.2 (128) at Wed Oct 12 10:15:34 2011                   

 PROCESSING ISOTOPE/MATERIAL 'H3      0001' (HNISOR='H3          ').

 ISOTOPE/MATERIAL INFO:
 H3 from /tmp/shem361_Jef2.2 (131) at Wed Oct 12 10:20:06 2011                   

 PROCESSING ISOTOPE/MATERIAL 'He3     0001' (HNISOR='He3         ').

 ISOTOPE/MATERIAL INFO:
 He3 from /tmp/shem361_Jef2.2 (225) at Wed Oct 12 10:24:42 2011                  

 PROCESSING ISOTOPE/MATERIAL 'He4     0001' (HNISOR='He4         ').

 ISOTOPE/MATERIAL INFO:
 He4 from /tmp/shem361_Jef2.2 (228) at Wed Oct 12 10:29:28 2011                  

 PROCESSING ISOTOPE/MATERIAL 'Li6     0001' (HNISOR='Li6         ').

 ISOTOPE/MATERIAL INFO:
 Li6 from /tmp/shem361_Jef2.2 (325) at Wed Oct 12 10:34:25 2011                  

 PROCESSING ISOTOPE/MATERIAL 'Li7     0001' (HNISOR='Li7         ').

 ISOTOPE/MATERIAL INFO:
 Li7 from /tmp/shem361_Jef2.2 (328) at Wed Oct 12 10:39:24 2011                  

 PROCESSING ISOTOPE/MATERIAL 'Be9     0001' (HNISOR='Be9         ').

 ISOTOPE/MATERIAL INFO:
 Be9 from /tmp/shem361_Jef2.2 (425) at Wed Oct 12 09:42:45 2011                  

 PROCESSING ISOTOPE/MATERIAL 'B10     0001' (HNISOR='B10         ').

 ISOTOPE/MATERIAL INFO:
 B10 from /tmp/shem361_Jef2.2 (525) at Wed Oct 12 10:44:18 2011                  

 PROCESSING ISOTOPE/MATERIAL 'B11     0001' (HNISOR='B11         ').

 ISOTOPE/MATERIAL INFO:
 B11 from /tmp/shem361_Jef2.2 (528) at Wed Oct 12 10:49:23 2011                  

 PROCESSING ISOTOPE/MATERIAL 'N14     0001' (HNISOR='N14         ').

 ISOTOPE/MATERIAL INFO:
 N14 from /tmp/shem361_Jef2.2 (725) at Wed Oct 12 10:59:29 2011                  

 PROCESSING ISOTOPE/MATERIAL 'N15     0001' (HNISOR='N15         ').

 ISOTOPE/MATERIAL INFO:
 N15 from /tmp/shem361_Jef2.2 (728) at Wed Oct 12 11:04:34 2011                  

 PROCESSING ISOTOPE/MATERIAL 'O17     0001' (HNISOR='O17         ').

 ISOTOPE/MATERIAL INFO:
 O17 from /tmp/shem361_Jef2.2 (828) at Wed Oct 12 11:14:30 2011                  

 PROCESSING ISOTOPE/MATERIAL 'Fe57    0001' (HNISOR='Fe57        ').

 ISOTOPE/MATERIAL INFO:
 Fe57 from /tmp/shem361_Jef2.2 (2634) at Wed Oct 12 13:16:16 2011                

 PROCESSING ISOTOPE/MATERIAL 'Fe58    0001' (HNISOR='Fe58        ').

 ISOTOPE/MATERIAL INFO:
 Fe58 from /tmp/shem361_Jef2.2 (2637) at Wed Oct 12 13:21:46 2011                

 PROCESSING ISOTOPE/MATERIAL 'Co59    0001' (HNISOR='Co59        ').

 ISOTOPE/MATERIAL INFO:
 Co59 from /tmp/shem361_Jef2.2 (2725) at Wed Oct 12 13:27:18 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ni60    0001' (HNISOR='Ni60        ').

 ISOTOPE/MATERIAL INFO:
 Ni60 from /tmp/shem361_Jef2.2 (2831) at Wed Oct 12 13:39:03 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ni61    0001' (HNISOR='Ni61        ').

 ISOTOPE/MATERIAL INFO:
 Ni61 from /tmp/shem361_Jef2.2 (2834) at Wed Oct 12 13:44:30 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ni62    0001' (HNISOR='Ni62        ').

 ISOTOPE/MATERIAL INFO:
 Ni62 from /tmp/shem361_Jef2.2 (2837) at Wed Oct 12 13:49:56 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ni64    0001' (HNISOR='Ni64        ').

 ISOTOPE/MATERIAL INFO:
 Ni64 from /tmp/shem361_Jef2.2 (2843) at Wed Oct 12 13:55:20 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ge72    0001' (HNISOR='Ge72        ').

 ISOTOPE/MATERIAL INFO:
 Ge72 from /tmp/shem361_Jef2.2 (3231) at Wed Oct 12 21:18:47 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ge73    0001' (HNISOR='Ge73        ').

 ISOTOPE/MATERIAL INFO:
 Ge73 from /tmp/shem361_Jef2.2 (3234) at Wed Oct 12 21:25:28 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ge74    0001' (HNISOR='Ge74        ').

 ISOTOPE/MATERIAL INFO:
 Ge74 from /tmp/shem361_Jef2.2 (3237) at Wed Oct 12 21:32:00 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ge76    0001' (HNISOR='Ge76        ').

 ISOTOPE/MATERIAL INFO:
 Ge76 from /tmp/shem361_Jef2.2 (3243) at Wed Oct 12 21:38:41 2011                

 PROCESSING ISOTOPE/MATERIAL 'As75    0001' (HNISOR='As75        ').

 ISOTOPE/MATERIAL INFO:
 As75 from /tmp/shem361_Jef2.2 (3325) at Wed Oct 12 21:45:36 2011                

 PROCESSING ISOTOPE/MATERIAL 'Se76    0001' (HNISOR='Se76        ').

 ISOTOPE/MATERIAL INFO:
 Se76 from /tmp/shem361_Jef2.2 (3431) at Wed Oct 12 21:52:18 2011                

 PROCESSING ISOTOPE/MATERIAL 'Se77    0001' (HNISOR='Se77        ').

 ISOTOPE/MATERIAL INFO:
 Se77 from /tmp/shem361_Jef2.2 (3434) at Wed Oct 12 21:58:59 2011                

 PROCESSING ISOTOPE/MATERIAL 'Se78    0001' (HNISOR='Se78        ').

 ISOTOPE/MATERIAL INFO:
 Se78 from /tmp/shem361_Jef2.2 (3437) at Wed Oct 12 22:05:34 2011                

 PROCESSING ISOTOPE/MATERIAL 'Se80    0001' (HNISOR='Se80        ').

 ISOTOPE/MATERIAL INFO:
 Se80 from /tmp/shem361_Jef2.2 (3443) at Wed Oct 12 22:12:12 2011                

 PROCESSING ISOTOPE/MATERIAL 'Se82    0001' (HNISOR='Se82        ').

 ISOTOPE/MATERIAL INFO:
 Se82 from /tmp/shem361_Jef2.2 (3449) at Wed Oct 12 22:18:46 2011                

 PROCESSING ISOTOPE/MATERIAL 'Br79    0001' (HNISOR='Br79        ').

 ISOTOPE/MATERIAL INFO:
 Br79 from /tmp/shem361_Jef2.2 (3525) at Wed Oct 12 22:25:32 2011                

 PROCESSING ISOTOPE/MATERIAL 'Br81    0001' (HNISOR='Br81        ').

 ISOTOPE/MATERIAL INFO:
 Br81 from /tmp/shem361_Jef2.2 (3531) at Wed Oct 12 22:32:29 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr80    0001' (HNISOR='Kr80        ').

 ISOTOPE/MATERIAL INFO:
 Kr80 from /tmp/shem361_Jef2.2 (3631) at Wed Oct 12 22:39:09 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr82    0001' (HNISOR='Kr82        ').

 ISOTOPE/MATERIAL INFO:
 Kr82 from /tmp/shem361_Jef2.2 (3637) at Wed Oct 12 22:45:49 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr83    0001' (HNISOR='Kr83        ').

 ISOTOPE/MATERIAL INFO:
 Kr83 from /tmp/shem361_Jef2.2 (3640) at Wed Oct 12 22:52:30 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr84    0001' (HNISOR='Kr84        ').

 ISOTOPE/MATERIAL INFO:
 Kr84 from /tmp/shem361_Jef2.2 (3643) at Wed Oct 12 22:59:10 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr85    0001' (HNISOR='Kr85        ').

 ISOTOPE/MATERIAL INFO:
 Kr85 from /tmp/shem361_Jef2.2 (3646) at Wed Oct 12 23:05:42 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr86    0001' (HNISOR='Kr86        ').

 ISOTOPE/MATERIAL INFO:
 Kr86 from /tmp/shem361_Jef2.2 (3649) at Wed Oct 12 23:12:23 2011                

 PROCESSING ISOTOPE/MATERIAL 'Rb85    0001' (HNISOR='Rb85        ').

 ISOTOPE/MATERIAL INFO:
 Rb85 from /tmp/shem361_Jef2.2 (3725) at Wed Oct 12 23:19:16 2011                

 PROCESSING ISOTOPE/MATERIAL 'Rb87    0001' (HNISOR='Rb87        ').

 ISOTOPE/MATERIAL INFO:
 Rb87 from /tmp/shem361_Jef2.2 (3731) at Wed Oct 12 23:25:55 2011                

 PROCESSING ISOTOPE/MATERIAL 'Sr86    0001' (HNISOR='Sr86        ').

 ISOTOPE/MATERIAL INFO:
 Sr86 from /tmp/shem361_Jef2.2 (3831) at Wed Oct 12 23:32:39 2011                

 PROCESSING ISOTOPE/MATERIAL 'Sr87    0001' (HNISOR='Sr87        ').

 ISOTOPE/MATERIAL INFO:
 Sr87 from /tmp/shem361_Jef2.2 (3834) at Wed Oct 12 23:39:19 2011                

 PROCESSING ISOTOPE/MATERIAL 'Sr88    0001' (HNISOR='Sr88        ').

 ISOTOPE/MATERIAL INFO:
 Sr88 from /tmp/shem361_Jef2.2 (3837) at Wed Oct 12 23:45:56 2011                

 PROCESSING ISOTOPE/MATERIAL 'Sr89    0001' (HNISOR='Sr89        ').

 ISOTOPE/MATERIAL INFO:
 Sr89 from /tmp/shem361_Jef2.2 (3840) at Wed Oct 12 23:52:29 2011                

 PROCESSING ISOTOPE/MATERIAL 'Sr90    0001' (HNISOR='Sr90        ').

 ISOTOPE/MATERIAL INFO:
 Sr90 from /tmp/shem361_Jef2.2 (3843) at Wed Oct 12 23:59:06 2011                

 PROCESSING ISOTOPE/MATERIAL 'Y89     0001' (HNISOR='Y89         ').

 ISOTOPE/MATERIAL INFO:
 Y89 from /tmp/shem361_Jef2.2 (3925) at Thu Oct 13 00:05:56 2011                 

 PROCESSING ISOTOPE/MATERIAL 'Y90     0001' (HNISOR='Y90         ').

 ISOTOPE/MATERIAL INFO:
 Y90 from /tmp/shem361_Jef2.2 (3928) at Thu Oct 13 00:12:32 2011                 

 PROCESSING ISOTOPE/MATERIAL 'Y91     0001' (HNISOR='Y91         ').

 ISOTOPE/MATERIAL INFO:
 Y91 from /tmp/shem361_Jef2.2 (3931) at Thu Oct 13 00:19:08 2011                 

 PROCESSING ISOTOPE/MATERIAL 'Zr90    0001' (HNISOR='Zr90        ').

 ISOTOPE/MATERIAL INFO:
 Zr90 from /tmp/shem361_Jef2.2 (4025) at Thu Oct 13 00:25:55 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr91    0001' (HNISOR='Zr91        ').

 ISOTOPE/MATERIAL INFO:
 Zr91 from /tmp/shem361_Jef2.2 (4028) at Thu Oct 13 00:32:45 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr92    0001' (HNISOR='Zr92        ').

 ISOTOPE/MATERIAL INFO:
 Zr92 from /tmp/shem361_Jef2.2 (4031) at Thu Oct 13 00:39:27 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr93    0001' (HNISOR='Zr93        ').

 ISOTOPE/MATERIAL INFO:
 Zr93 from /tmp/shem361_Jef2.2 (4034) at Thu Oct 13 00:46:05 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr94    0001' (HNISOR='Zr94        ').

 ISOTOPE/MATERIAL INFO:
 Zr94 from /tmp/shem361_Jef2.2 (4037) at Thu Oct 13 00:52:51 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr95    0001' (HNISOR='Zr95        ').

 ISOTOPE/MATERIAL INFO:
 Zr95 from /tmp/shem361_Jef2.2 (4040) at Thu Oct 13 00:59:29 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr96    0001' (HNISOR='Zr96        ').

 ISOTOPE/MATERIAL INFO:
 Zr96 from /tmp/shem361_Jef2.2 (4043) at Thu Oct 13 01:06:10 2011                

 PROCESSING ISOTOPE/MATERIAL 'Nb93    0001' (HNISOR='Nb93        ').

 ISOTOPE/MATERIAL INFO:
 Nb93 from /tmp/shem361_Jef2.2 (4125) at Thu Oct 13 01:13:24 2011                

 PROCESSING ISOTOPE/MATERIAL 'Nb94    0001' (HNISOR='Nb94        ').

 ISOTOPE/MATERIAL INFO:
 Nb94 from /tmp/shem361_Jef2.2 (4128) at Thu Oct 13 01:20:04 2011                

 PROCESSING ISOTOPE/MATERIAL 'Nb95    0001' (HNISOR='Nb95        ').

 ISOTOPE/MATERIAL INFO:
 Nb95 from /tmp/shem361_Jef2.2 (4131) at Thu Oct 13 01:26:47 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo95    0001' (HNISOR='Mo95        ').

 ISOTOPE/MATERIAL INFO:
 Mo95 from /tmp/shem361_Jef2.2 (4234) at Thu Oct 13 01:40:52 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo96    0001' (HNISOR='Mo96        ').

 ISOTOPE/MATERIAL INFO:
 Mo96 from /tmp/shem361_Jef2.2 (4237) at Thu Oct 13 01:47:40 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo97    0001' (HNISOR='Mo97        ').

 ISOTOPE/MATERIAL INFO:
 Mo97 from /tmp/shem361_Jef2.2 (4240) at Thu Oct 13 01:54:37 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo98    0001' (HNISOR='Mo98        ').

 ISOTOPE/MATERIAL INFO:
 Mo98 from /tmp/shem361_Jef2.2 (4243) at Thu Oct 13 02:01:31 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo99    0001' (HNISOR='Mo99        ').

 ISOTOPE/MATERIAL INFO:
 Mo99 from /tmp/shem361_Jef2.2 (4246) at Thu Oct 13 02:08:11 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo100   0001' (HNISOR='Mo100       ').

 ISOTOPE/MATERIAL INFO:
 Mo100 from /tmp/shem361_Jef2.2 (4249) at Thu Oct 13 02:15:07 2011               

 PROCESSING ISOTOPE/MATERIAL 'Tc99    0001' (HNISOR='Tc99        ').

 ISOTOPE/MATERIAL INFO:
 Tc99 from /tmp/shem361_Jef2.2 (4331) at Thu Oct 13 02:22:10 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ru99    0001' (HNISOR='Ru99        ').

 ISOTOPE/MATERIAL INFO:
 Ru99 from /tmp/shem361_Jef2.2 (4434) at Thu Oct 13 02:29:02 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ru100   0001' (HNISOR='Ru100       ').

 ISOTOPE/MATERIAL INFO:
 Ru100 from /tmp/shem361_Jef2.2 (4437) at Thu Oct 13 02:35:38 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru101   0001' (HNISOR='Ru101       ').

 ISOTOPE/MATERIAL INFO:
 Ru101 from /tmp/shem361_Jef2.2 (4440) at Thu Oct 13 02:42:27 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru102   0001' (HNISOR='Ru102       ').

 ISOTOPE/MATERIAL INFO:
 Ru102 from /tmp/shem361_Jef2.2 (4443) at Thu Oct 13 02:49:03 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru103   0001' (HNISOR='Ru103       ').

 ISOTOPE/MATERIAL INFO:
 Ru103 from /tmp/shem361_Jef2.2 (4446) at Thu Oct 13 02:55:45 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru104   0001' (HNISOR='Ru104       ').

 ISOTOPE/MATERIAL INFO:
 Ru104 from /tmp/shem361_Jef2.2 (4449) at Thu Oct 13 03:02:26 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru105   0001' (HNISOR='Ru105       ').

 ISOTOPE/MATERIAL INFO:
 Ru105 from /tmp/shem361_Jef2.2 (4452) at Thu Oct 13 03:09:13 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru106   0001' (HNISOR='Ru106       ').

 ISOTOPE/MATERIAL INFO:
 Ru106 from /tmp/shem361_Jef2.2 (4455) at Thu Oct 13 03:15:48 2011               

 PROCESSING ISOTOPE/MATERIAL 'Rh103   0001' (HNISOR='Rh103       ').

 ISOTOPE/MATERIAL INFO:
 Rh103 from /tmp/shem361_Jef2.2 (4525) at Thu Oct 13 03:22:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Rh105   0001' (HNISOR='Rh105       ').

 ISOTOPE/MATERIAL INFO:
 Rh105 from /tmp/shem361_Jef2.2 (4531) at Thu Oct 13 03:29:40 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd104   0001' (HNISOR='Pd104       ').

 ISOTOPE/MATERIAL INFO:
 Pd104 from /tmp/shem361_Jef2.2 (4631) at Thu Oct 13 03:36:31 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd105   0001' (HNISOR='Pd105       ').

 ISOTOPE/MATERIAL INFO:
 Pd105 from /tmp/shem361_Jef2.2 (4634) at Thu Oct 13 03:43:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd106   0001' (HNISOR='Pd106       ').

 ISOTOPE/MATERIAL INFO:
 Pd106 from /tmp/shem361_Jef2.2 (4637) at Thu Oct 13 03:51:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd107   0001' (HNISOR='Pd107       ').

 ISOTOPE/MATERIAL INFO:
 Pd107 from /tmp/shem361_Jef2.2 (4640) at Thu Oct 13 03:57:51 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd108   0001' (HNISOR='Pd108       ').

 ISOTOPE/MATERIAL INFO:
 Pd108 from /tmp/shem361_Jef2.2 (4643) at Thu Oct 13 04:04:42 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd110   0001' (HNISOR='Pd110       ').

 ISOTOPE/MATERIAL INFO:
 Pd110 from /tmp/shem361_Jef2.2 (4649) at Thu Oct 13 04:11:27 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ag107   0001' (HNISOR='Ag107       ').

 ISOTOPE/MATERIAL INFO:
 Ag107 from /tmp/shem361_Jef2.2 (4725) at Thu Oct 13 04:18:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ag109   0001' (HNISOR='Ag109       ').

 ISOTOPE/MATERIAL INFO:
 Ag109 from /tmp/shem361_Jef2.2 (4731) at Thu Oct 13 04:25:35 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ag111   0001' (HNISOR='Ag111       ').

 ISOTOPE/MATERIAL INFO:
 Ag111 from /tmp/shem361_Jef2.2 (4737) at Thu Oct 13 04:32:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd110   0001' (HNISOR='Cd110       ').

 ISOTOPE/MATERIAL INFO:
 Cd110 from /tmp/shem361_Jef2.2 (4837) at Thu Oct 13 04:39:22 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd111   0001' (HNISOR='Cd111       ').

 ISOTOPE/MATERIAL INFO:
 Cd111 from /tmp/shem361_Jef2.2 (4840) at Thu Oct 13 04:46:34 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd112   0001' (HNISOR='Cd112       ').

 ISOTOPE/MATERIAL INFO:
 Cd112 from /tmp/shem361_Jef2.2 (4843) at Thu Oct 13 04:53:39 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd113   0001' (HNISOR='Cd113       ').

 ISOTOPE/MATERIAL INFO:
 Cd113 from /tmp/shem361_Jef2.2 (4846) at Thu Oct 13 05:00:25 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd114   0001' (HNISOR='Cd114       ').

 ISOTOPE/MATERIAL INFO:
 Cd114 from /tmp/shem361_Jef2.2 (4849) at Thu Oct 13 05:07:18 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd115m  0001' (HNISOR='Cd115m      ').

 ISOTOPE/MATERIAL INFO:
 Cd115m from /tmp/shem361_Jef2.2 (4852) at Thu Oct 13 05:13:58 2011              

 PROCESSING ISOTOPE/MATERIAL 'Cd116   0001' (HNISOR='Cd116       ').

 ISOTOPE/MATERIAL INFO:
 Cd116 from /tmp/shem361_Jef2.2 (4855) at Thu Oct 13 05:20:44 2011               

 PROCESSING ISOTOPE/MATERIAL 'In113   0001' (HNISOR='In113       ').

 ISOTOPE/MATERIAL INFO:
 In113 from /tmp/shem361_Jef2.2 (4925) at Thu Oct 13 05:27:35 2011               

 PROCESSING ISOTOPE/MATERIAL 'In115   0001' (HNISOR='In115       ').

 ISOTOPE/MATERIAL INFO:
 In115 from /tmp/shem361_Jef2.2 (4931) at Thu Oct 13 05:35:01 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn115   0001' (HNISOR='Sn115       ').

 ISOTOPE/MATERIAL INFO:
 Sn115 from /tmp/shem361_Jef2.2 (5034) at Thu Oct 13 05:41:53 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn116   0001' (HNISOR='Sn116       ').

 ISOTOPE/MATERIAL INFO:
 Sn116 from /tmp/shem361_Jef2.2 (5037) at Thu Oct 13 05:48:40 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn117   0001' (HNISOR='Sn117       ').

 ISOTOPE/MATERIAL INFO:
 Sn117 from /tmp/shem361_Jef2.2 (5040) at Thu Oct 13 05:55:29 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn118   0001' (HNISOR='Sn118       ').

 ISOTOPE/MATERIAL INFO:
 Sn118 from /tmp/shem361_Jef2.2 (5043) at Thu Oct 13 06:02:11 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn119   0001' (HNISOR='Sn119       ').

 ISOTOPE/MATERIAL INFO:
 Sn119 from /tmp/shem361_Jef2.2 (5046) at Thu Oct 13 06:08:54 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn120   0001' (HNISOR='Sn120       ').

 ISOTOPE/MATERIAL INFO:
 Sn120 from /tmp/shem361_Jef2.2 (5049) at Thu Oct 13 06:15:47 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn122   0001' (HNISOR='Sn122       ').

 ISOTOPE/MATERIAL INFO:
 Sn122 from /tmp/shem361_Jef2.2 (5055) at Thu Oct 13 06:22:29 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn123   0001' (HNISOR='Sn123       ').

 ISOTOPE/MATERIAL INFO:
 Sn123 from /tmp/shem361_Jef2.2 (5058) at Thu Oct 13 06:29:11 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn124   0001' (HNISOR='Sn124       ').

 ISOTOPE/MATERIAL INFO:
 Sn124 from /tmp/shem361_Jef2.2 (5061) at Thu Oct 13 06:36:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn125   0001' (HNISOR='Sn125       ').

 ISOTOPE/MATERIAL INFO:
 Sn125 from /tmp/shem361_Jef2.2 (5064) at Thu Oct 13 06:42:45 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn126   0001' (HNISOR='Sn126       ').

 ISOTOPE/MATERIAL INFO:
 Sn126 from /tmp/shem361_Jef2.2 (5067) at Thu Oct 13 06:49:36 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb121   0001' (HNISOR='Sb121       ').

 ISOTOPE/MATERIAL INFO:
 Sb121 from /tmp/shem361_Jef2.2 (5125) at Thu Oct 13 06:56:46 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb123   0001' (HNISOR='Sb123       ').

 ISOTOPE/MATERIAL INFO:
 Sb123 from /tmp/shem361_Jef2.2 (5131) at Thu Oct 13 07:03:49 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb124   0001' (HNISOR='Sb124       ').

 ISOTOPE/MATERIAL INFO:
 Sb124 from /tmp/shem361_Jef2.2 (5134) at Thu Oct 13 07:10:33 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb125   0001' (HNISOR='Sb125       ').

 ISOTOPE/MATERIAL INFO:
 Sb125 from /tmp/shem361_Jef2.2 (5137) at Thu Oct 13 07:17:18 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb126   0001' (HNISOR='Sb126       ').

 ISOTOPE/MATERIAL INFO:
 Sb126 from /tmp/shem361_Jef2.2 (5140) at Thu Oct 13 07:24:07 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te122   0001' (HNISOR='Te122       ').

 ISOTOPE/MATERIAL INFO:
 Te122 from /tmp/shem361_Jef2.2 (5231) at Thu Oct 13 07:30:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te123   0001' (HNISOR='Te123       ').

 ISOTOPE/MATERIAL INFO:
 Te123 from /tmp/shem361_Jef2.2 (5234) at Thu Oct 13 07:37:47 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te124   0001' (HNISOR='Te124       ').

 ISOTOPE/MATERIAL INFO:
 Te124 from /tmp/shem361_Jef2.2 (5237) at Thu Oct 13 07:44:50 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te125   0001' (HNISOR='Te125       ').

 ISOTOPE/MATERIAL INFO:
 Te125 from /tmp/shem361_Jef2.2 (5240) at Thu Oct 13 07:51:40 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te126   0001' (HNISOR='Te126       ').

 ISOTOPE/MATERIAL INFO:
 Te126 from /tmp/shem361_Jef2.2 (5243) at Thu Oct 13 07:58:33 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te127m  0001' (HNISOR='Te127m      ').

 ISOTOPE/MATERIAL INFO:
 Te127m from /tmp/shem361_Jef2.2 (5246) at Thu Oct 13 08:05:18 2011              

 PROCESSING ISOTOPE/MATERIAL 'Te128   0001' (HNISOR='Te128       ').

 ISOTOPE/MATERIAL INFO:
 Te128 from /tmp/shem361_Jef2.2 (5249) at Thu Oct 13 08:12:06 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te129m  0001' (HNISOR='Te129m      ').

 ISOTOPE/MATERIAL INFO:
 Te129m from /tmp/shem361_Jef2.2 (5252) at Thu Oct 13 08:18:47 2011              

 PROCESSING ISOTOPE/MATERIAL 'Te130   0001' (HNISOR='Te130       ').

 ISOTOPE/MATERIAL INFO:
 Te130 from /tmp/shem361_Jef2.2 (5255) at Thu Oct 13 08:25:32 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te132   0001' (HNISOR='Te132       ').

 ISOTOPE/MATERIAL INFO:
 Te132 from /tmp/shem361_Jef2.2 (5261) at Thu Oct 13 08:32:20 2011               

 PROCESSING ISOTOPE/MATERIAL 'I127    0001' (HNISOR='I127        ').

 ISOTOPE/MATERIAL INFO:
 I127 from /tmp/shem361_Jef2.2 (5325) at Thu Oct 13 08:39:50 2011                

 PROCESSING ISOTOPE/MATERIAL 'I129    0001' (HNISOR='I129        ').

 ISOTOPE/MATERIAL INFO:
 I129 from /tmp/shem361_Jef2.2 (5331) at Thu Oct 13 08:47:07 2011                

 PROCESSING ISOTOPE/MATERIAL 'I130    0001' (HNISOR='I130        ').

 ISOTOPE/MATERIAL INFO:
 I130 from /tmp/shem361_Jef2.2 (5334) at Thu Oct 13 08:53:49 2011                

 PROCESSING ISOTOPE/MATERIAL 'I131    0001' (HNISOR='I131        ').

 ISOTOPE/MATERIAL INFO:
 I131 from /tmp/shem361_Jef2.2 (5337) at Thu Oct 13 09:00:29 2011                

 PROCESSING ISOTOPE/MATERIAL 'I135    0001' (HNISOR='I135        ').

 ISOTOPE/MATERIAL INFO:
 I135 from /tmp/shem361_Jef2.2 (5349) at Thu Oct 13 09:07:11 2011                

 PROCESSING ISOTOPE/MATERIAL 'Xe128   0001' (HNISOR='Xe128       ').

 ISOTOPE/MATERIAL INFO:
 Xe128 from /tmp/shem361_Jef2.2 (5437) at Thu Oct 13 09:14:02 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe129   0001' (HNISOR='Xe129       ').

 ISOTOPE/MATERIAL INFO:
 Xe129 from /tmp/shem361_Jef2.2 (5440) at Thu Oct 13 09:21:06 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe130   0001' (HNISOR='Xe130       ').

 ISOTOPE/MATERIAL INFO:
 Xe130 from /tmp/shem361_Jef2.2 (5443) at Thu Oct 13 09:27:55 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe131   0001' (HNISOR='Xe131       ').

 ISOTOPE/MATERIAL INFO:
 Xe131 from /tmp/shem361_Jef2.2 (5446) at Thu Oct 13 09:34:52 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe132   0001' (HNISOR='Xe132       ').

 ISOTOPE/MATERIAL INFO:
 Xe132 from /tmp/shem361_Jef2.2 (5449) at Thu Oct 13 09:41:38 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe133   0001' (HNISOR='Xe133       ').

 ISOTOPE/MATERIAL INFO:
 Xe133 from /tmp/shem361_Jef2.2 (5452) at Thu Oct 13 09:48:24 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe134   0001' (HNISOR='Xe134       ').

 ISOTOPE/MATERIAL INFO:
 Xe134 from /tmp/shem361_Jef2.2 (5455) at Thu Oct 13 09:55:11 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe135   0001' (HNISOR='Xe135       ').

 ISOTOPE/MATERIAL INFO:
 Xe135 from /tmp/shem361_Jef2.2 (5458) at Thu Oct 13 10:01:54 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe136   0001' (HNISOR='Xe136       ').

 ISOTOPE/MATERIAL INFO:
 Xe136 from /tmp/shem361_Jef2.2 (5461) at Thu Oct 13 10:08:37 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs133   0001' (HNISOR='Cs133       ').

 ISOTOPE/MATERIAL INFO:
 Cs133 from /tmp/shem361_Jef2.2 (5525) at Thu Oct 13 10:16:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs134   0001' (HNISOR='Cs134       ').

 ISOTOPE/MATERIAL INFO:
 Cs134 from /tmp/shem361_Jef2.2 (5528) at Thu Oct 13 10:22:44 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs135   0001' (HNISOR='Cs135       ').

 ISOTOPE/MATERIAL INFO:
 Cs135 from /tmp/shem361_Jef2.2 (5531) at Thu Oct 13 10:29:28 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs136   0001' (HNISOR='Cs136       ').

 ISOTOPE/MATERIAL INFO:
 Cs136 from /tmp/shem361_Jef2.2 (5534) at Thu Oct 13 10:36:18 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs137   0001' (HNISOR='Cs137       ').

 ISOTOPE/MATERIAL INFO:
 Cs137 from /tmp/shem361_Jef2.2 (5537) at Thu Oct 13 10:43:02 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba134   0001' (HNISOR='Ba134       ').

 ISOTOPE/MATERIAL INFO:
 Ba134 from /tmp/shem361_Jef2.2 (5637) at Thu Oct 13 10:49:48 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba135   0001' (HNISOR='Ba135       ').

 ISOTOPE/MATERIAL INFO:
 Ba135 from /tmp/shem361_Jef2.2 (5640) at Thu Oct 13 10:56:36 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba136   0001' (HNISOR='Ba136       ').

 ISOTOPE/MATERIAL INFO:
 Ba136 from /tmp/shem361_Jef2.2 (5643) at Thu Oct 13 11:03:20 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba137   0001' (HNISOR='Ba137       ').

 ISOTOPE/MATERIAL INFO:
 Ba137 from /tmp/shem361_Jef2.2 (5646) at Thu Oct 13 11:10:10 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba138   0001' (HNISOR='Ba138       ').

 ISOTOPE/MATERIAL INFO:
 Ba138 from /tmp/shem361_Jef2.2 (5649) at Thu Oct 13 11:17:05 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba140   0001' (HNISOR='Ba140       ').

 ISOTOPE/MATERIAL INFO:
 Ba140 from /tmp/shem361_Jef2.2 (5655) at Thu Oct 13 11:23:55 2011               

 PROCESSING ISOTOPE/MATERIAL 'La139   0001' (HNISOR='La139       ').

 ISOTOPE/MATERIAL INFO:
 La139 from /tmp/shem361_Jef2.2 (5728) at Thu Oct 13 11:31:03 2011               

 PROCESSING ISOTOPE/MATERIAL 'La140   0001' (HNISOR='La140       ').

 ISOTOPE/MATERIAL INFO:
 La140 from /tmp/shem361_Jef2.2 (5731) at Thu Oct 13 11:37:51 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce140   0001' (HNISOR='Ce140       ').

 ISOTOPE/MATERIAL INFO:
 Ce140 from /tmp/shem361_Jef2.2 (5837) at Thu Oct 13 11:44:45 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce141   0001' (HNISOR='Ce141       ').

 ISOTOPE/MATERIAL INFO:
 Ce141 from /tmp/shem361_Jef2.2 (5840) at Thu Oct 13 11:51:40 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce142   0001' (HNISOR='Ce142       ').

 ISOTOPE/MATERIAL INFO:
 Ce142 from /tmp/shem361_Jef2.2 (5843) at Thu Oct 13 11:58:25 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce143   0001' (HNISOR='Ce143       ').

 ISOTOPE/MATERIAL INFO:
 Ce143 from /tmp/shem361_Jef2.2 (5846) at Thu Oct 13 12:05:17 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce144   0001' (HNISOR='Ce144       ').

 ISOTOPE/MATERIAL INFO:
 Ce144 from /tmp/shem361_Jef2.2 (5849) at Thu Oct 13 12:12:09 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pr141   0001' (HNISOR='Pr141       ').

 ISOTOPE/MATERIAL INFO:
 Pr141 from /tmp/shem361_Jef2.2 (5925) at Thu Oct 13 12:19:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pr142   0001' (HNISOR='Pr142       ').

 ISOTOPE/MATERIAL INFO:
 Pr142 from /tmp/shem361_Jef2.2 (5928) at Thu Oct 13 12:26:21 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pr143   0001' (HNISOR='Pr143       ').

 ISOTOPE/MATERIAL INFO:
 Pr143 from /tmp/shem361_Jef2.2 (5931) at Thu Oct 13 12:33:05 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd142   0001' (HNISOR='Nd142       ').

 ISOTOPE/MATERIAL INFO:
 Nd142 from /tmp/shem361_Jef2.2 (6025) at Thu Oct 13 12:39:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd143   0001' (HNISOR='Nd143       ').

 ISOTOPE/MATERIAL INFO:
 Nd143 from /tmp/shem361_Jef2.2 (6028) at Thu Oct 13 12:47:13 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd144   0001' (HNISOR='Nd144       ').

 ISOTOPE/MATERIAL INFO:
 Nd144 from /tmp/shem361_Jef2.2 (6031) at Thu Oct 13 12:54:07 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd145   0001' (HNISOR='Nd145       ').

 ISOTOPE/MATERIAL INFO:
 Nd145 from /tmp/shem361_Jef2.2 (6034) at Thu Oct 13 13:01:25 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd146   0001' (HNISOR='Nd146       ').

 ISOTOPE/MATERIAL INFO:
 Nd146 from /tmp/shem361_Jef2.2 (6037) at Thu Oct 13 13:08:24 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd147   0001' (HNISOR='Nd147       ').

 ISOTOPE/MATERIAL INFO:
 Nd147 from /tmp/shem361_Jef2.2 (6040) at Thu Oct 13 13:15:08 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd148   0001' (HNISOR='Nd148       ').

 ISOTOPE/MATERIAL INFO:
 Nd148 from /tmp/shem361_Jef2.2 (6043) at Thu Oct 13 13:22:12 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd150   0001' (HNISOR='Nd150       ').

 ISOTOPE/MATERIAL INFO:
 Nd150 from /tmp/shem361_Jef2.2 (6049) at Thu Oct 13 13:29:07 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pm147   0001' (HNISOR='Pm147       ').

 ISOTOPE/MATERIAL INFO:
 Pm147 from /tmp/shem361_Jef2.2 (6149) at Thu Oct 13 13:36:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pm148   0001' (HNISOR='Pm148       ').

 ISOTOPE/MATERIAL INFO:
 Pm148 from /tmp/shem361_Jef2.2 (6152) at Thu Oct 13 13:42:45 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pm148m  0001' (HNISOR='Pm148m      ').

 ISOTOPE/MATERIAL INFO:
 Pm148m from /tmp/shem361_Jef2.2 (6153) at Thu Oct 13 13:49:30 2011              

 PROCESSING ISOTOPE/MATERIAL 'Pm149   0001' (HNISOR='Pm149       ').

 ISOTOPE/MATERIAL INFO:
 Pm149 from /tmp/shem361_Jef2.2 (6155) at Thu Oct 13 13:56:14 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pm151   0001' (HNISOR='Pm151       ').

 ISOTOPE/MATERIAL INFO:
 Pm151 from /tmp/shem361_Jef2.2 (6161) at Thu Oct 13 14:02:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm147   0001' (HNISOR='Sm147       ').

 ISOTOPE/MATERIAL INFO:
 Sm147 from /tmp/shem361_Jef2.2 (6234) at Thu Oct 13 14:10:18 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm148   0001' (HNISOR='Sm148       ').

 ISOTOPE/MATERIAL INFO:
 Sm148 from /tmp/shem361_Jef2.2 (6237) at Thu Oct 13 14:17:02 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm149   0001' (HNISOR='Sm149       ').

 ISOTOPE/MATERIAL INFO:
 Sm149 from /tmp/shem361_Jef2.2 (6240) at Thu Oct 13 14:24:01 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm150   0001' (HNISOR='Sm150       ').

 ISOTOPE/MATERIAL INFO:
 Sm150 from /tmp/shem361_Jef2.2 (6243) at Thu Oct 13 14:30:52 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm151   0001' (HNISOR='Sm151       ').

 ISOTOPE/MATERIAL INFO:
 Sm151 from /tmp/shem361_Jef2.2 (6246) at Thu Oct 13 14:38:09 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm152   0001' (HNISOR='Sm152       ').

 ISOTOPE/MATERIAL INFO:
 Sm152 from /tmp/shem361_Jef2.2 (6249) at Thu Oct 13 14:45:29 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm153   0001' (HNISOR='Sm153       ').

 ISOTOPE/MATERIAL INFO:
 Sm153 from /tmp/shem361_Jef2.2 (6252) at Thu Oct 13 14:52:12 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm154   0001' (HNISOR='Sm154       ').

 ISOTOPE/MATERIAL INFO:
 Sm154 from /tmp/shem361_Jef2.2 (6255) at Thu Oct 13 14:59:09 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu151   0001' (HNISOR='Eu151       ').

 ISOTOPE/MATERIAL INFO:
 Eu151 from /tmp/shem361_Jef2.2 (6325) at Thu Oct 13 15:06:19 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu152   0001' (HNISOR='Eu152       ').

 ISOTOPE/MATERIAL INFO:
 Eu152 from /tmp/shem361_Jef2.2 (6328) at Thu Oct 13 15:13:26 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu153   0001' (HNISOR='Eu153       ').

 ISOTOPE/MATERIAL INFO:
 Eu153 from /tmp/shem361_Jef2.2 (6331) at Thu Oct 13 15:20:34 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu154   0001' (HNISOR='Eu154       ').

 ISOTOPE/MATERIAL INFO:
 Eu154 from /tmp/shem361_Jef2.2 (6334) at Thu Oct 13 15:27:39 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu155   0001' (HNISOR='Eu155       ').

 ISOTOPE/MATERIAL INFO:
 Eu155 from /tmp/shem361_Jef2.2 (6337) at Thu Oct 13 15:34:27 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu156   0001' (HNISOR='Eu156       ').

 ISOTOPE/MATERIAL INFO:
 Eu156 from /tmp/shem361_Jef2.2 (6340) at Thu Oct 13 15:41:12 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu157   0001' (HNISOR='Eu157       ').

 ISOTOPE/MATERIAL INFO:
 Eu157 from /tmp/shem361_Jef2.2 (6343) at Thu Oct 13 15:47:55 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd154   0001' (HNISOR='Gd154       ').

 ISOTOPE/MATERIAL INFO:
 Gd154 from /tmp/shem361_Jef2.2 (6431) at Thu Oct 13 15:54:49 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd155   0001' (HNISOR='Gd155       ').

 ISOTOPE/MATERIAL INFO:
 Gd155 from /tmp/shem361_Jef2.2 (6434) at Thu Oct 13 16:02:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd156   0001' (HNISOR='Gd156       ').

 ISOTOPE/MATERIAL INFO:
 Gd156 from /tmp/shem361_Jef2.2 (6437) at Thu Oct 13 16:09:41 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd157   0001' (HNISOR='Gd157       ').

 ISOTOPE/MATERIAL INFO:
 Gd157 from /tmp/shem361_Jef2.2 (6440) at Thu Oct 13 16:16:56 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd158   0001' (HNISOR='Gd158       ').

 ISOTOPE/MATERIAL INFO:
 Gd158 from /tmp/shem361_Jef2.2 (6443) at Thu Oct 13 16:24:21 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd160   0001' (HNISOR='Gd160       ').

 ISOTOPE/MATERIAL INFO:
 Gd160 from /tmp/shem361_Jef2.2 (6449) at Thu Oct 13 16:31:28 2011               

 PROCESSING ISOTOPE/MATERIAL 'Tb159   0001' (HNISOR='Tb159       ').

 ISOTOPE/MATERIAL INFO:
 Tb159 from /tmp/shem361_Jef2.2 (6525) at Thu Oct 13 16:38:35 2011               

 PROCESSING ISOTOPE/MATERIAL 'Tb160   0001' (HNISOR='Tb160       ').

 ISOTOPE/MATERIAL INFO:
 Tb160 from /tmp/shem361_Jef2.2 (6528) at Thu Oct 13 16:45:22 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy160   0001' (HNISOR='Dy160       ').

 ISOTOPE/MATERIAL INFO:
 Dy160 from /tmp/shem361_Jef2.2 (6637) at Thu Oct 13 16:52:15 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy161   0001' (HNISOR='Dy161       ').

 ISOTOPE/MATERIAL INFO:
 Dy161 from /tmp/shem361_Jef2.2 (6640) at Thu Oct 13 16:59:21 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy162   0001' (HNISOR='Dy162       ').

 ISOTOPE/MATERIAL INFO:
 Dy162 from /tmp/shem361_Jef2.2 (6643) at Thu Oct 13 17:06:26 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy163   0001' (HNISOR='Dy163       ').

 ISOTOPE/MATERIAL INFO:
 Dy163 from /tmp/shem361_Jef2.2 (6646) at Thu Oct 13 17:13:48 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy164   0001' (HNISOR='Dy164       ').

 ISOTOPE/MATERIAL INFO:
 Dy164 from /tmp/shem361_Jef2.2 (6649) at Thu Oct 13 17:20:56 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ho165   0001' (HNISOR='Ho165       ').

 ISOTOPE/MATERIAL INFO:
 Ho165 from /tmp/shem361_Jef2.2 (6725) at Thu Oct 13 18:14:26 2011               

 PROCESSING ISOTOPE/MATERIAL 'Er166   0001' (HNISOR='Er166       ').

 ISOTOPE/MATERIAL INFO:
 Er166 from /tmp/shem361_Jef2.2 (6837) at Thu Oct 13 18:21:49 2011               

 PROCESSING ISOTOPE/MATERIAL 'Er167   0001' (HNISOR='Er167       ').

 ISOTOPE/MATERIAL INFO:
 Er167 from /tmp/shem361_Jef2.2 (6840) at Thu Oct 13 18:29:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Hf176   0001' (HNISOR='Hf176       ').

 ISOTOPE/MATERIAL INFO:
 Hf176 from /tmp/shem361_Jef2.2 (7231) at Thu Oct 13 17:35:38 2011               

 PROCESSING ISOTOPE/MATERIAL 'Hf177   0001' (HNISOR='Hf177       ').

 ISOTOPE/MATERIAL INFO:
 Hf177 from /tmp/shem361_Jef2.2 (7234) at Thu Oct 13 17:44:01 2011               

 PROCESSING ISOTOPE/MATERIAL 'Hf178   0001' (HNISOR='Hf178       ').

 ISOTOPE/MATERIAL INFO:
 Hf178 from /tmp/shem361_Jef2.2 (7237) at Thu Oct 13 17:51:36 2011               

 PROCESSING ISOTOPE/MATERIAL 'Hf179   0001' (HNISOR='Hf179       ').

 ISOTOPE/MATERIAL INFO:
 Hf179 from /tmp/shem361_Jef2.2 (7240) at Thu Oct 13 17:59:32 2011               

 PROCESSING ISOTOPE/MATERIAL 'Hf180   0001' (HNISOR='Hf180       ').

 ISOTOPE/MATERIAL INFO:
 Hf180 from /tmp/shem361_Jef2.2 (7243) at Thu Oct 13 18:07:06 2011               

 PROCESSING ISOTOPE/MATERIAL 'W182    0001' (HNISOR='W182        ').

 ISOTOPE/MATERIAL INFO:
 W182 from /tmp/shem361_Jef2.2 (7431) at Wed Oct 12 14:12:29 2011                

 PROCESSING ISOTOPE/MATERIAL 'W183    0001' (HNISOR='W183        ').

 ISOTOPE/MATERIAL INFO:
 W183 from /tmp/shem361_Jef2.2 (7434) at Wed Oct 12 14:18:17 2011                

 PROCESSING ISOTOPE/MATERIAL 'W184    0001' (HNISOR='W184        ').

 ISOTOPE/MATERIAL INFO:
 W184 from /tmp/shem361_Jef2.2 (7437) at Wed Oct 12 14:24:06 2011                

 PROCESSING ISOTOPE/MATERIAL 'W186    0001' (HNISOR='W186        ').

 ISOTOPE/MATERIAL INFO:
 W186 from /tmp/shem361_Jef2.2 (7443) at Wed Oct 12 14:30:08 2011                

 PROCESSING ISOTOPE/MATERIAL 'Pa231   0001' (HNISOR='Pa231       ').

 ISOTOPE/MATERIAL INFO:
 Pa231 from /tmp/shem361_Jef2.2 (9131) at Wed Oct 12 15:15:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'U232    0001' (HNISOR='U232        ').

 ISOTOPE/MATERIAL INFO:
 U232 from /tmp/shem361_Jef2.2 (9219) at Wed Oct 12 15:28:07 2011                

 PROCESSING ISOTOPE/MATERIAL 'U233    0001' (HNISOR='U233        ').

 ISOTOPE/MATERIAL INFO:
 U233 from /tmp/shem361_Jef2.2 (9222) at Wed Oct 12 15:34:32 2011                

 PROCESSING ISOTOPE/MATERIAL 'U234    0001' (HNISOR='U234        ').

 ISOTOPE/MATERIAL INFO:
 U234 from /tmp/shem361_Jef2.2 (9225) at Wed Oct 12 15:41:52 2011                

 PROCESSING ISOTOPE/MATERIAL 'U236    0001' (HNISOR='U236        ').

 ISOTOPE/MATERIAL INFO:
 U236 from /tmp/shem361_Jef2.2 (9231) at Wed Oct 12 16:16:44 2011                

 PROCESSING ISOTOPE/MATERIAL 'U237    0001' (HNISOR='U237        ').

 ISOTOPE/MATERIAL INFO:
 U237 from /tmp/shem361_Jef2.2 (9234) at Wed Oct 12 16:23:32 2011                

 PROCESSING ISOTOPE/MATERIAL 'Np237   0001' (HNISOR='Np237       ').

 ISOTOPE/MATERIAL INFO:
 Np237 from /tmp/shem361_Jef2.2 (9346) at Wed Oct 12 17:01:26 2011               

 PROCESSING ISOTOPE/MATERIAL 'Np238   0001' (HNISOR='Np238       ').

 ISOTOPE/MATERIAL INFO:
 Np238 from /tmp/shem361_Jef2.2 (9349) at Wed Oct 12 17:08:04 2011               

 PROCESSING ISOTOPE/MATERIAL 'Np239   0001' (HNISOR='Np239       ').

 ISOTOPE/MATERIAL INFO:
 Np239 from /tmp/shem361_Jef2.2 (9352) at Wed Oct 12 17:14:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pu236   0001' (HNISOR='Pu236       ').

 ISOTOPE/MATERIAL INFO:
 Pu236 from /tmp/shem361_Jef2.2 (9428) at Wed Oct 12 17:21:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pu237   0001' (HNISOR='Pu237       ').

 ISOTOPE/MATERIAL INFO:
 Pu237 from /tmp/shem361_Jef2.2 (9431) at Wed Oct 12 17:27:25 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pu238   0001' (HNISOR='Pu238       ').

 ISOTOPE/MATERIAL INFO:
 Pu238 from /tmp/shem361_Jef2.2 (9434) at Wed Oct 12 17:41:14 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pu239   0001' (HNISOR='Pu239       ').

 ISOTOPE/MATERIAL INFO:
 Pu239 from /tmp/shem361_Jef2.2 (9437) at Wed Oct 12 17:58:24 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pu240   0001' (HNISOR='Pu240       ').

 ISOTOPE/MATERIAL INFO:
 Pu240 from /tmp/shem361_Jef2.2 (9440) at Wed Oct 12 18:15:05 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pu241   0001' (HNISOR='Pu241       ').

 ISOTOPE/MATERIAL INFO:
 Pu241 from /tmp/shem361_Jef2.2 (9443) at Wed Oct 12 18:30:01 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pu242   0001' (HNISOR='Pu242       ').

 ISOTOPE/MATERIAL INFO:
 Pu242 from /tmp/shem361_Jef2.2 (9446) at Wed Oct 12 18:44:52 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pu243   0001' (HNISOR='Pu243       ').

 ISOTOPE/MATERIAL INFO:
 Pu243 from /tmp/shem361_Jef2.2 (9449) at Wed Oct 12 18:52:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Am241   0001' (HNISOR='Am241       ').

 ISOTOPE/MATERIAL INFO:
 Am241 from /tmp/shem361_Jef2.2 (9543) at Wed Oct 12 19:08:03 2011               

 PROCESSING ISOTOPE/MATERIAL 'Am242   0001' (HNISOR='Am242       ').

 ISOTOPE/MATERIAL INFO:
 Am242 from /tmp/shem361_Jef2.2 (9546) at Wed Oct 12 19:14:54 2011               

 PROCESSING ISOTOPE/MATERIAL 'Am242m  0001' (HNISOR='Am242m      ').

 ISOTOPE/MATERIAL INFO:
 Am242m from /tmp/shem361_Jef2.2 (9547) at Wed Oct 12 19:21:45 2011              

 PROCESSING ISOTOPE/MATERIAL 'Am243   0001' (HNISOR='Am243       ').

 ISOTOPE/MATERIAL INFO:
 Am243 from /tmp/shem361_Jef2.2 (9549) at Wed Oct 12 19:29:50 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cm242   0001' (HNISOR='Cm242       ').

 ISOTOPE/MATERIAL INFO:
 Cm242 from /tmp/shem361_Jef2.2 (9631) at Wed Oct 12 19:43:39 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cm243   0001' (HNISOR='Cm243       ').

 ISOTOPE/MATERIAL INFO:
 Cm243 from /tmp/shem361_Jef2.2 (9634) at Wed Oct 12 19:50:44 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cm244   0001' (HNISOR='Cm244       ').

 ISOTOPE/MATERIAL INFO:
 Cm244 from /tmp/shem361_Jef2.2 (9637) at Wed Oct 12 19:58:34 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cm245   0001' (HNISOR='Cm245       ').

 ISOTOPE/MATERIAL INFO:
 Cm245 from /tmp/shem361_Jef2.2 (9640) at Wed Oct 12 20:05:44 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cm246   0001' (HNISOR='Cm246       ').

 ISOTOPE/MATERIAL INFO:
 Cm246 from /tmp/shem361_Jef2.2 (9643) at Wed Oct 12 20:12:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cm247   0001' (HNISOR='Cm247       ').

 ISOTOPE/MATERIAL INFO:
 Cm247 from /tmp/shem361_Jef2.2 (9646) at Wed Oct 12 20:20:13 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cm248   0001' (HNISOR='Cm248       ').

 ISOTOPE/MATERIAL INFO:
 Cm248 from /tmp/shem361_Jef2.2 (9649) at Wed Oct 12 20:27:38 2011               

 PROCESSING ISOTOPE/MATERIAL 'Bk249   0001' (HNISOR='Bk249       ').

 ISOTOPE/MATERIAL INFO:
 Bk249 from /tmp/shem361_Jef2.2 (9752) at Wed Oct 12 20:35:24 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cf249   0001' (HNISOR='Cf249       ').

 ISOTOPE/MATERIAL INFO:
 Cf249 from /tmp/shem361_Jef2.2 (9852) at Wed Oct 12 20:42:42 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cf250   0001' (HNISOR='Cf250       ').

 ISOTOPE/MATERIAL INFO:
 Cf250 from /tmp/shem361_Jef2.2 (9855) at Wed Oct 12 20:50:04 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cf251   0001' (HNISOR='Cf251       ').

 ISOTOPE/MATERIAL INFO:
 Cf251 from /tmp/shem361_Jef2.2 (9858) at Wed Oct 12 20:57:13 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cf252   0001' (HNISOR='Cf252       ').

 ISOTOPE/MATERIAL INFO:
 Cf252 from /tmp/shem361_Jef2.2 (9861) at Wed Oct 12 21:04:25 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cf253   0001' (HNISOR='Cf253       ').

 ISOTOPE/MATERIAL INFO:
 Cf253 from /tmp/shem361_Jef2.2 (9864) at Wed Oct 12 21:11:52 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cr52    0001' (HNISOR='Cr52        ').

 ISOTOPE/MATERIAL INFO:
 Cr52 from /tmp/shem361_Jef2.2 (2431) at Wed Oct 12 12:43:33 2011                

 PROCESSING ISOTOPE/MATERIAL 'Cr53    0001' (HNISOR='Cr53        ').

 ISOTOPE/MATERIAL INFO:
 Cr53 from /tmp/shem361_Jef2.2 (2434) at Wed Oct 12 12:48:54 2011                

 PROCESSING ISOTOPE/MATERIAL 'Cr54    0001' (HNISOR='Cr54        ').

 ISOTOPE/MATERIAL INFO:
 Cr54 from /tmp/shem361_Jef2.2 (2437) at Wed Oct 12 12:54:11 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mn55    0001' (HNISOR='Mn55        ').

 ISOTOPE/MATERIAL INFO:
 Mn55 from /tmp/shem361_Jef2.2 (2525) at Wed Oct 12 12:59:30 2011                

 PROCESSING ISOTOPE/MATERIAL 'Fe56    0001' (HNISOR='Fe56        ').

 ISOTOPE/MATERIAL INFO:
 Fe56 from /tmp/shem361_Jef2.2 (2631) at Wed Oct 12 13:10:45 2011                

 PROCESSING ISOTOPE/MATERIAL 'Hf174   0001' (HNISOR='Hf174       ').

 ISOTOPE/MATERIAL INFO:
 Hf174 from /tmp/shem361_Jef2.2 (7225) at Thu Oct 13 17:28:11 2011               

 PROCESSING ISOTOPE/MATERIAL 'Bi209   0001' (HNISOR='Bi209       ').

 ISOTOPE/MATERIAL INFO:
 Bi209 from /tmp/shem361_Jef2.2 (8325) at Wed Oct 12 14:41:40 2011               

 PROCESSING ISOTOPE/MATERIAL 'Th230   0001' (HNISOR='Th230       ').

 ISOTOPE/MATERIAL INFO:
 Th230 from /tmp/shem361_Jef2.2 (9034) at Wed Oct 12 14:53:35 2011               

 PROCESSING ISOTOPE/MATERIAL 'Th232   0001' (HNISOR='Th232       ').

 ISOTOPE/MATERIAL INFO:
 Th232 from /tmp/shem361_Jef2.2 (9040) at Wed Oct 12 15:08:53 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pa233   0001' (HNISOR='Pa233       ').

 ISOTOPE/MATERIAL INFO:
 Pa233 from /tmp/shem361_Jef2.2 (9137) at Wed Oct 12 15:21:55 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cm241   0001' (HNISOR='Cm241       ').

 ISOTOPE/MATERIAL INFO:
 Cm241 from /tmp/shem361_Jef2.2 (9628) at Wed Oct 12 19:36:34 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sr88    0002' (HNISOR='Sr88        ').

 ISOTOPE/MATERIAL INFO:
 Sr88 from /tmp/shem361_Jef2.2 (3837) at Wed Oct 12 23:45:56 2011                

 PROCESSING ISOTOPE/MATERIAL 'Sr89    0002' (HNISOR='Sr89        ').

 ISOTOPE/MATERIAL INFO:
 Sr89 from /tmp/shem361_Jef2.2 (3840) at Wed Oct 12 23:52:29 2011                

 PROCESSING ISOTOPE/MATERIAL 'Sr90    0002' (HNISOR='Sr90        ').

 ISOTOPE/MATERIAL INFO:
 Sr90 from /tmp/shem361_Jef2.2 (3843) at Wed Oct 12 23:59:06 2011                

 PROCESSING ISOTOPE/MATERIAL 'Y89     0002' (HNISOR='Y89         ').

 ISOTOPE/MATERIAL INFO:
 Y89 from /tmp/shem361_Jef2.2 (3925) at Thu Oct 13 00:05:56 2011                 

 PROCESSING ISOTOPE/MATERIAL 'Y90     0002' (HNISOR='Y90         ').

 ISOTOPE/MATERIAL INFO:
 Y90 from /tmp/shem361_Jef2.2 (3928) at Thu Oct 13 00:12:32 2011                 

 PROCESSING ISOTOPE/MATERIAL 'Y91     0002' (HNISOR='Y91         ').

 ISOTOPE/MATERIAL INFO:
 Y91 from /tmp/shem361_Jef2.2 (3931) at Thu Oct 13 00:19:08 2011                 

 PROCESSING ISOTOPE/MATERIAL 'Zr90    0002' (HNISOR='Zr90        ').

 ISOTOPE/MATERIAL INFO:
 Zr90 from /tmp/shem361_Jef2.2 (4025) at Thu Oct 13 00:25:55 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr92    0002' (HNISOR='Zr92        ').

 ISOTOPE/MATERIAL INFO:
 Zr92 from /tmp/shem361_Jef2.2 (4031) at Thu Oct 13 00:39:27 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr93    0002' (HNISOR='Zr93        ').

 ISOTOPE/MATERIAL INFO:
 Zr93 from /tmp/shem361_Jef2.2 (4034) at Thu Oct 13 00:46:05 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr94    0002' (HNISOR='Zr94        ').

 ISOTOPE/MATERIAL INFO:
 Zr94 from /tmp/shem361_Jef2.2 (4037) at Thu Oct 13 00:52:51 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr95    0002' (HNISOR='Zr95        ').

 ISOTOPE/MATERIAL INFO:
 Zr95 from /tmp/shem361_Jef2.2 (4040) at Thu Oct 13 00:59:29 2011                

 PROCESSING ISOTOPE/MATERIAL 'Zr96    0002' (HNISOR='Zr96        ').

 ISOTOPE/MATERIAL INFO:
 Zr96 from /tmp/shem361_Jef2.2 (4043) at Thu Oct 13 01:06:10 2011                

 PROCESSING ISOTOPE/MATERIAL 'Nb93    0002' (HNISOR='Nb93        ').

 ISOTOPE/MATERIAL INFO:
 Nb93 from /tmp/shem361_Jef2.2 (4125) at Thu Oct 13 01:13:24 2011                

 PROCESSING ISOTOPE/MATERIAL 'Nb94    0002' (HNISOR='Nb94        ').

 ISOTOPE/MATERIAL INFO:
 Nb94 from /tmp/shem361_Jef2.2 (4128) at Thu Oct 13 01:20:04 2011                

 PROCESSING ISOTOPE/MATERIAL 'Nb95    0002' (HNISOR='Nb95        ').

 ISOTOPE/MATERIAL INFO:
 Nb95 from /tmp/shem361_Jef2.2 (4131) at Thu Oct 13 01:26:47 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo95    0002' (HNISOR='Mo95        ').

 ISOTOPE/MATERIAL INFO:
 Mo95 from /tmp/shem361_Jef2.2 (4234) at Thu Oct 13 01:40:52 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo96    0002' (HNISOR='Mo96        ').

 ISOTOPE/MATERIAL INFO:
 Mo96 from /tmp/shem361_Jef2.2 (4237) at Thu Oct 13 01:47:40 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo97    0002' (HNISOR='Mo97        ').

 ISOTOPE/MATERIAL INFO:
 Mo97 from /tmp/shem361_Jef2.2 (4240) at Thu Oct 13 01:54:37 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo98    0002' (HNISOR='Mo98        ').

 ISOTOPE/MATERIAL INFO:
 Mo98 from /tmp/shem361_Jef2.2 (4243) at Thu Oct 13 02:01:31 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo99    0002' (HNISOR='Mo99        ').

 ISOTOPE/MATERIAL INFO:
 Mo99 from /tmp/shem361_Jef2.2 (4246) at Thu Oct 13 02:08:11 2011                

 PROCESSING ISOTOPE/MATERIAL 'Mo100   0002' (HNISOR='Mo100       ').

 ISOTOPE/MATERIAL INFO:
 Mo100 from /tmp/shem361_Jef2.2 (4249) at Thu Oct 13 02:15:07 2011               

 PROCESSING ISOTOPE/MATERIAL 'Tc99    0002' (HNISOR='Tc99        ').

 ISOTOPE/MATERIAL INFO:
 Tc99 from /tmp/shem361_Jef2.2 (4331) at Thu Oct 13 02:22:10 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ru99    0002' (HNISOR='Ru99        ').

 ISOTOPE/MATERIAL INFO:
 Ru99 from /tmp/shem361_Jef2.2 (4434) at Thu Oct 13 02:29:02 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ru100   0002' (HNISOR='Ru100       ').

 ISOTOPE/MATERIAL INFO:
 Ru100 from /tmp/shem361_Jef2.2 (4437) at Thu Oct 13 02:35:38 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru101   0002' (HNISOR='Ru101       ').

 ISOTOPE/MATERIAL INFO:
 Ru101 from /tmp/shem361_Jef2.2 (4440) at Thu Oct 13 02:42:27 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru102   0002' (HNISOR='Ru102       ').

 ISOTOPE/MATERIAL INFO:
 Ru102 from /tmp/shem361_Jef2.2 (4443) at Thu Oct 13 02:49:03 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru103   0002' (HNISOR='Ru103       ').

 ISOTOPE/MATERIAL INFO:
 Ru103 from /tmp/shem361_Jef2.2 (4446) at Thu Oct 13 02:55:45 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru104   0002' (HNISOR='Ru104       ').

 ISOTOPE/MATERIAL INFO:
 Ru104 from /tmp/shem361_Jef2.2 (4449) at Thu Oct 13 03:02:26 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru105   0002' (HNISOR='Ru105       ').

 ISOTOPE/MATERIAL INFO:
 Ru105 from /tmp/shem361_Jef2.2 (4452) at Thu Oct 13 03:09:13 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ru106   0002' (HNISOR='Ru106       ').

 ISOTOPE/MATERIAL INFO:
 Ru106 from /tmp/shem361_Jef2.2 (4455) at Thu Oct 13 03:15:48 2011               

 PROCESSING ISOTOPE/MATERIAL 'Rh103   0002' (HNISOR='Rh103       ').

 ISOTOPE/MATERIAL INFO:
 Rh103 from /tmp/shem361_Jef2.2 (4525) at Thu Oct 13 03:22:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Rh105   0002' (HNISOR='Rh105       ').

 ISOTOPE/MATERIAL INFO:
 Rh105 from /tmp/shem361_Jef2.2 (4531) at Thu Oct 13 03:29:40 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd104   0002' (HNISOR='Pd104       ').

 ISOTOPE/MATERIAL INFO:
 Pd104 from /tmp/shem361_Jef2.2 (4631) at Thu Oct 13 03:36:31 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd105   0002' (HNISOR='Pd105       ').

 ISOTOPE/MATERIAL INFO:
 Pd105 from /tmp/shem361_Jef2.2 (4634) at Thu Oct 13 03:43:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd106   0002' (HNISOR='Pd106       ').

 ISOTOPE/MATERIAL INFO:
 Pd106 from /tmp/shem361_Jef2.2 (4637) at Thu Oct 13 03:51:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd107   0002' (HNISOR='Pd107       ').

 ISOTOPE/MATERIAL INFO:
 Pd107 from /tmp/shem361_Jef2.2 (4640) at Thu Oct 13 03:57:51 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pd108   0002' (HNISOR='Pd108       ').

 ISOTOPE/MATERIAL INFO:
 Pd108 from /tmp/shem361_Jef2.2 (4643) at Thu Oct 13 04:04:42 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ag107   0002' (HNISOR='Ag107       ').

 ISOTOPE/MATERIAL INFO:
 Ag107 from /tmp/shem361_Jef2.2 (4725) at Thu Oct 13 04:18:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ag109   0002' (HNISOR='Ag109       ').

 ISOTOPE/MATERIAL INFO:
 Ag109 from /tmp/shem361_Jef2.2 (4731) at Thu Oct 13 04:25:35 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd110   0002' (HNISOR='Cd110       ').

 ISOTOPE/MATERIAL INFO:
 Cd110 from /tmp/shem361_Jef2.2 (4837) at Thu Oct 13 04:39:22 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd111   0002' (HNISOR='Cd111       ').

 ISOTOPE/MATERIAL INFO:
 Cd111 from /tmp/shem361_Jef2.2 (4840) at Thu Oct 13 04:46:34 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd112   0002' (HNISOR='Cd112       ').

 ISOTOPE/MATERIAL INFO:
 Cd112 from /tmp/shem361_Jef2.2 (4843) at Thu Oct 13 04:53:39 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd113   0002' (HNISOR='Cd113       ').

 ISOTOPE/MATERIAL INFO:
 Cd113 from /tmp/shem361_Jef2.2 (4846) at Thu Oct 13 05:00:25 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd114   0002' (HNISOR='Cd114       ').

 ISOTOPE/MATERIAL INFO:
 Cd114 from /tmp/shem361_Jef2.2 (4849) at Thu Oct 13 05:07:18 2011               

 PROCESSING ISOTOPE/MATERIAL 'In113   0002' (HNISOR='In113       ').

 ISOTOPE/MATERIAL INFO:
 In113 from /tmp/shem361_Jef2.2 (4925) at Thu Oct 13 05:27:35 2011               

 PROCESSING ISOTOPE/MATERIAL 'In115   0002' (HNISOR='In115       ').

 ISOTOPE/MATERIAL INFO:
 In115 from /tmp/shem361_Jef2.2 (4931) at Thu Oct 13 05:35:01 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn115   0002' (HNISOR='Sn115       ').

 ISOTOPE/MATERIAL INFO:
 Sn115 from /tmp/shem361_Jef2.2 (5034) at Thu Oct 13 05:41:53 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn116   0002' (HNISOR='Sn116       ').

 ISOTOPE/MATERIAL INFO:
 Sn116 from /tmp/shem361_Jef2.2 (5037) at Thu Oct 13 05:48:40 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn117   0002' (HNISOR='Sn117       ').

 ISOTOPE/MATERIAL INFO:
 Sn117 from /tmp/shem361_Jef2.2 (5040) at Thu Oct 13 05:55:29 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn118   0002' (HNISOR='Sn118       ').

 ISOTOPE/MATERIAL INFO:
 Sn118 from /tmp/shem361_Jef2.2 (5043) at Thu Oct 13 06:02:11 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn119   0002' (HNISOR='Sn119       ').

 ISOTOPE/MATERIAL INFO:
 Sn119 from /tmp/shem361_Jef2.2 (5046) at Thu Oct 13 06:08:54 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn120   0002' (HNISOR='Sn120       ').

 ISOTOPE/MATERIAL INFO:
 Sn120 from /tmp/shem361_Jef2.2 (5049) at Thu Oct 13 06:15:47 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb121   0002' (HNISOR='Sb121       ').

 ISOTOPE/MATERIAL INFO:
 Sb121 from /tmp/shem361_Jef2.2 (5125) at Thu Oct 13 06:56:46 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te122   0002' (HNISOR='Te122       ').

 ISOTOPE/MATERIAL INFO:
 Te122 from /tmp/shem361_Jef2.2 (5231) at Thu Oct 13 07:30:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te123   0002' (HNISOR='Te123       ').

 ISOTOPE/MATERIAL INFO:
 Te123 from /tmp/shem361_Jef2.2 (5234) at Thu Oct 13 07:37:47 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te124   0002' (HNISOR='Te124       ').

 ISOTOPE/MATERIAL INFO:
 Te124 from /tmp/shem361_Jef2.2 (5237) at Thu Oct 13 07:44:50 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te125   0002' (HNISOR='Te125       ').

 ISOTOPE/MATERIAL INFO:
 Te125 from /tmp/shem361_Jef2.2 (5240) at Thu Oct 13 07:51:40 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te126   0002' (HNISOR='Te126       ').

 ISOTOPE/MATERIAL INFO:
 Te126 from /tmp/shem361_Jef2.2 (5243) at Thu Oct 13 07:58:33 2011               

 PROCESSING ISOTOPE/MATERIAL 'I127    0002' (HNISOR='I127        ').

 ISOTOPE/MATERIAL INFO:
 I127 from /tmp/shem361_Jef2.2 (5325) at Thu Oct 13 08:39:50 2011                

 PROCESSING ISOTOPE/MATERIAL 'Xe128   0002' (HNISOR='Xe128       ').

 ISOTOPE/MATERIAL INFO:
 Xe128 from /tmp/shem361_Jef2.2 (5437) at Thu Oct 13 09:14:02 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe129   0002' (HNISOR='Xe129       ').

 ISOTOPE/MATERIAL INFO:
 Xe129 from /tmp/shem361_Jef2.2 (5440) at Thu Oct 13 09:21:06 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe130   0002' (HNISOR='Xe130       ').

 ISOTOPE/MATERIAL INFO:
 Xe130 from /tmp/shem361_Jef2.2 (5443) at Thu Oct 13 09:27:55 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe131   0002' (HNISOR='Xe131       ').

 ISOTOPE/MATERIAL INFO:
 Xe131 from /tmp/shem361_Jef2.2 (5446) at Thu Oct 13 09:34:52 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe132   0002' (HNISOR='Xe132       ').

 ISOTOPE/MATERIAL INFO:
 Xe132 from /tmp/shem361_Jef2.2 (5449) at Thu Oct 13 09:41:38 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe133   0002' (HNISOR='Xe133       ').

 ISOTOPE/MATERIAL INFO:
 Xe133 from /tmp/shem361_Jef2.2 (5452) at Thu Oct 13 09:48:24 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe134   0002' (HNISOR='Xe134       ').

 ISOTOPE/MATERIAL INFO:
 Xe134 from /tmp/shem361_Jef2.2 (5455) at Thu Oct 13 09:55:11 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe135   0002' (HNISOR='Xe135       ').

 ISOTOPE/MATERIAL INFO:
 Xe135 from /tmp/shem361_Jef2.2 (5458) at Thu Oct 13 10:01:54 2011               

 PROCESSING ISOTOPE/MATERIAL 'Xe136   0002' (HNISOR='Xe136       ').

 ISOTOPE/MATERIAL INFO:
 Xe136 from /tmp/shem361_Jef2.2 (5461) at Thu Oct 13 10:08:37 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs133   0002' (HNISOR='Cs133       ').

 ISOTOPE/MATERIAL INFO:
 Cs133 from /tmp/shem361_Jef2.2 (5525) at Thu Oct 13 10:16:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs134   0002' (HNISOR='Cs134       ').

 ISOTOPE/MATERIAL INFO:
 Cs134 from /tmp/shem361_Jef2.2 (5528) at Thu Oct 13 10:22:44 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs135   0002' (HNISOR='Cs135       ').

 ISOTOPE/MATERIAL INFO:
 Cs135 from /tmp/shem361_Jef2.2 (5531) at Thu Oct 13 10:29:28 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs136   0002' (HNISOR='Cs136       ').

 ISOTOPE/MATERIAL INFO:
 Cs136 from /tmp/shem361_Jef2.2 (5534) at Thu Oct 13 10:36:18 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cs137   0002' (HNISOR='Cs137       ').

 ISOTOPE/MATERIAL INFO:
 Cs137 from /tmp/shem361_Jef2.2 (5537) at Thu Oct 13 10:43:02 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba134   0002' (HNISOR='Ba134       ').

 ISOTOPE/MATERIAL INFO:
 Ba134 from /tmp/shem361_Jef2.2 (5637) at Thu Oct 13 10:49:48 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba135   0002' (HNISOR='Ba135       ').

 ISOTOPE/MATERIAL INFO:
 Ba135 from /tmp/shem361_Jef2.2 (5640) at Thu Oct 13 10:56:36 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba136   0002' (HNISOR='Ba136       ').

 ISOTOPE/MATERIAL INFO:
 Ba136 from /tmp/shem361_Jef2.2 (5643) at Thu Oct 13 11:03:20 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba137   0002' (HNISOR='Ba137       ').

 ISOTOPE/MATERIAL INFO:
 Ba137 from /tmp/shem361_Jef2.2 (5646) at Thu Oct 13 11:10:10 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ba138   0002' (HNISOR='Ba138       ').

 ISOTOPE/MATERIAL INFO:
 Ba138 from /tmp/shem361_Jef2.2 (5649) at Thu Oct 13 11:17:05 2011               

 PROCESSING ISOTOPE/MATERIAL 'La139   0002' (HNISOR='La139       ').

 ISOTOPE/MATERIAL INFO:
 La139 from /tmp/shem361_Jef2.2 (5728) at Thu Oct 13 11:31:03 2011               

 PROCESSING ISOTOPE/MATERIAL 'La140   0002' (HNISOR='La140       ').

 ISOTOPE/MATERIAL INFO:
 La140 from /tmp/shem361_Jef2.2 (5731) at Thu Oct 13 11:37:51 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce140   0002' (HNISOR='Ce140       ').

 ISOTOPE/MATERIAL INFO:
 Ce140 from /tmp/shem361_Jef2.2 (5837) at Thu Oct 13 11:44:45 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce141   0002' (HNISOR='Ce141       ').

 ISOTOPE/MATERIAL INFO:
 Ce141 from /tmp/shem361_Jef2.2 (5840) at Thu Oct 13 11:51:40 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce142   0002' (HNISOR='Ce142       ').

 ISOTOPE/MATERIAL INFO:
 Ce142 from /tmp/shem361_Jef2.2 (5843) at Thu Oct 13 11:58:25 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce143   0002' (HNISOR='Ce143       ').

 ISOTOPE/MATERIAL INFO:
 Ce143 from /tmp/shem361_Jef2.2 (5846) at Thu Oct 13 12:05:17 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ce144   0002' (HNISOR='Ce144       ').

 ISOTOPE/MATERIAL INFO:
 Ce144 from /tmp/shem361_Jef2.2 (5849) at Thu Oct 13 12:12:09 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pr141   0002' (HNISOR='Pr141       ').

 ISOTOPE/MATERIAL INFO:
 Pr141 from /tmp/shem361_Jef2.2 (5925) at Thu Oct 13 12:19:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pr142   0002' (HNISOR='Pr142       ').

 ISOTOPE/MATERIAL INFO:
 Pr142 from /tmp/shem361_Jef2.2 (5928) at Thu Oct 13 12:26:21 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pr143   0002' (HNISOR='Pr143       ').

 ISOTOPE/MATERIAL INFO:
 Pr143 from /tmp/shem361_Jef2.2 (5931) at Thu Oct 13 12:33:05 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd142   0002' (HNISOR='Nd142       ').

 ISOTOPE/MATERIAL INFO:
 Nd142 from /tmp/shem361_Jef2.2 (6025) at Thu Oct 13 12:39:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd143   0002' (HNISOR='Nd143       ').

 ISOTOPE/MATERIAL INFO:
 Nd143 from /tmp/shem361_Jef2.2 (6028) at Thu Oct 13 12:47:13 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd144   0002' (HNISOR='Nd144       ').

 ISOTOPE/MATERIAL INFO:
 Nd144 from /tmp/shem361_Jef2.2 (6031) at Thu Oct 13 12:54:07 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd145   0002' (HNISOR='Nd145       ').

 ISOTOPE/MATERIAL INFO:
 Nd145 from /tmp/shem361_Jef2.2 (6034) at Thu Oct 13 13:01:25 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd146   0002' (HNISOR='Nd146       ').

 ISOTOPE/MATERIAL INFO:
 Nd146 from /tmp/shem361_Jef2.2 (6037) at Thu Oct 13 13:08:24 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd147   0002' (HNISOR='Nd147       ').

 ISOTOPE/MATERIAL INFO:
 Nd147 from /tmp/shem361_Jef2.2 (6040) at Thu Oct 13 13:15:08 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd148   0002' (HNISOR='Nd148       ').

 ISOTOPE/MATERIAL INFO:
 Nd148 from /tmp/shem361_Jef2.2 (6043) at Thu Oct 13 13:22:12 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pm147   0002' (HNISOR='Pm147       ').

 ISOTOPE/MATERIAL INFO:
 Pm147 from /tmp/shem361_Jef2.2 (6149) at Thu Oct 13 13:36:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pm148   0002' (HNISOR='Pm148       ').

 ISOTOPE/MATERIAL INFO:
 Pm148 from /tmp/shem361_Jef2.2 (6152) at Thu Oct 13 13:42:45 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pm148m  0002' (HNISOR='Pm148m      ').

 ISOTOPE/MATERIAL INFO:
 Pm148m from /tmp/shem361_Jef2.2 (6153) at Thu Oct 13 13:49:30 2011              

 PROCESSING ISOTOPE/MATERIAL 'Pm149   0002' (HNISOR='Pm149       ').

 ISOTOPE/MATERIAL INFO:
 Pm149 from /tmp/shem361_Jef2.2 (6155) at Thu Oct 13 13:56:14 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm147   0002' (HNISOR='Sm147       ').

 ISOTOPE/MATERIAL INFO:
 Sm147 from /tmp/shem361_Jef2.2 (6234) at Thu Oct 13 14:10:18 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm148   0002' (HNISOR='Sm148       ').

 ISOTOPE/MATERIAL INFO:
 Sm148 from /tmp/shem361_Jef2.2 (6237) at Thu Oct 13 14:17:02 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm149   0002' (HNISOR='Sm149       ').

 ISOTOPE/MATERIAL INFO:
 Sm149 from /tmp/shem361_Jef2.2 (6240) at Thu Oct 13 14:24:01 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm150   0002' (HNISOR='Sm150       ').

 ISOTOPE/MATERIAL INFO:
 Sm150 from /tmp/shem361_Jef2.2 (6243) at Thu Oct 13 14:30:52 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm151   0002' (HNISOR='Sm151       ').

 ISOTOPE/MATERIAL INFO:
 Sm151 from /tmp/shem361_Jef2.2 (6246) at Thu Oct 13 14:38:09 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm152   0002' (HNISOR='Sm152       ').

 ISOTOPE/MATERIAL INFO:
 Sm152 from /tmp/shem361_Jef2.2 (6249) at Thu Oct 13 14:45:29 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm153   0002' (HNISOR='Sm153       ').

 ISOTOPE/MATERIAL INFO:
 Sm153 from /tmp/shem361_Jef2.2 (6252) at Thu Oct 13 14:52:12 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sm154   0002' (HNISOR='Sm154       ').

 ISOTOPE/MATERIAL INFO:
 Sm154 from /tmp/shem361_Jef2.2 (6255) at Thu Oct 13 14:59:09 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu151   0002' (HNISOR='Eu151       ').

 ISOTOPE/MATERIAL INFO:
 Eu151 from /tmp/shem361_Jef2.2 (6325) at Thu Oct 13 15:06:19 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu152   0002' (HNISOR='Eu152       ').

 ISOTOPE/MATERIAL INFO:
 Eu152 from /tmp/shem361_Jef2.2 (6328) at Thu Oct 13 15:13:26 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu153   0002' (HNISOR='Eu153       ').

 ISOTOPE/MATERIAL INFO:
 Eu153 from /tmp/shem361_Jef2.2 (6331) at Thu Oct 13 15:20:34 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu154   0002' (HNISOR='Eu154       ').

 ISOTOPE/MATERIAL INFO:
 Eu154 from /tmp/shem361_Jef2.2 (6334) at Thu Oct 13 15:27:39 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu155   0002' (HNISOR='Eu155       ').

 ISOTOPE/MATERIAL INFO:
 Eu155 from /tmp/shem361_Jef2.2 (6337) at Thu Oct 13 15:34:27 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu156   0002' (HNISOR='Eu156       ').

 ISOTOPE/MATERIAL INFO:
 Eu156 from /tmp/shem361_Jef2.2 (6340) at Thu Oct 13 15:41:12 2011               

 PROCESSING ISOTOPE/MATERIAL 'Eu157   0002' (HNISOR='Eu157       ').

 ISOTOPE/MATERIAL INFO:
 Eu157 from /tmp/shem361_Jef2.2 (6343) at Thu Oct 13 15:47:55 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd154   0002' (HNISOR='Gd154       ').

 ISOTOPE/MATERIAL INFO:
 Gd154 from /tmp/shem361_Jef2.2 (6431) at Thu Oct 13 15:54:49 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd155   0002' (HNISOR='Gd155       ').

 ISOTOPE/MATERIAL INFO:
 Gd155 from /tmp/shem361_Jef2.2 (6434) at Thu Oct 13 16:02:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd156   0002' (HNISOR='Gd156       ').

 ISOTOPE/MATERIAL INFO:
 Gd156 from /tmp/shem361_Jef2.2 (6437) at Thu Oct 13 16:09:41 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd157   0002' (HNISOR='Gd157       ').

 ISOTOPE/MATERIAL INFO:
 Gd157 from /tmp/shem361_Jef2.2 (6440) at Thu Oct 13 16:16:56 2011               

 PROCESSING ISOTOPE/MATERIAL 'Gd158   0002' (HNISOR='Gd158       ').

 ISOTOPE/MATERIAL INFO:
 Gd158 from /tmp/shem361_Jef2.2 (6443) at Thu Oct 13 16:24:21 2011               

 PROCESSING ISOTOPE/MATERIAL 'Tb159   0002' (HNISOR='Tb159       ').

 ISOTOPE/MATERIAL INFO:
 Tb159 from /tmp/shem361_Jef2.2 (6525) at Thu Oct 13 16:38:35 2011               

 PROCESSING ISOTOPE/MATERIAL 'Tb160   0002' (HNISOR='Tb160       ').

 ISOTOPE/MATERIAL INFO:
 Tb160 from /tmp/shem361_Jef2.2 (6528) at Thu Oct 13 16:45:22 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy160   0002' (HNISOR='Dy160       ').

 ISOTOPE/MATERIAL INFO:
 Dy160 from /tmp/shem361_Jef2.2 (6637) at Thu Oct 13 16:52:15 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy161   0002' (HNISOR='Dy161       ').

 ISOTOPE/MATERIAL INFO:
 Dy161 from /tmp/shem361_Jef2.2 (6640) at Thu Oct 13 16:59:21 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy162   0002' (HNISOR='Dy162       ').

 ISOTOPE/MATERIAL INFO:
 Dy162 from /tmp/shem361_Jef2.2 (6643) at Thu Oct 13 17:06:26 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy163   0002' (HNISOR='Dy163       ').

 ISOTOPE/MATERIAL INFO:
 Dy163 from /tmp/shem361_Jef2.2 (6646) at Thu Oct 13 17:13:48 2011               

 PROCESSING ISOTOPE/MATERIAL 'Dy164   0002' (HNISOR='Dy164       ').

 ISOTOPE/MATERIAL INFO:
 Dy164 from /tmp/shem361_Jef2.2 (6649) at Thu Oct 13 17:20:56 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ho165   0002' (HNISOR='Ho165       ').

 ISOTOPE/MATERIAL INFO:
 Ho165 from /tmp/shem361_Jef2.2 (6725) at Thu Oct 13 18:14:26 2011               

 PROCESSING ISOTOPE/MATERIAL 'Er166   0002' (HNISOR='Er166       ').

 ISOTOPE/MATERIAL INFO:
 Er166 from /tmp/shem361_Jef2.2 (6837) at Thu Oct 13 18:21:49 2011               

 PROCESSING ISOTOPE/MATERIAL 'Er167   0002' (HNISOR='Er167       ').

 ISOTOPE/MATERIAL INFO:
 Er167 from /tmp/shem361_Jef2.2 (6840) at Thu Oct 13 18:29:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Kr85    0002' (HNISOR='Kr85        ').

 ISOTOPE/MATERIAL INFO:
 Kr85 from /tmp/shem361_Jef2.2 (3646) at Wed Oct 12 23:05:42 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr86    0002' (HNISOR='Kr86        ').

 ISOTOPE/MATERIAL INFO:
 Kr86 from /tmp/shem361_Jef2.2 (3649) at Wed Oct 12 23:12:23 2011                

 PROCESSING ISOTOPE/MATERIAL 'Rb85    0002' (HNISOR='Rb85        ').

 ISOTOPE/MATERIAL INFO:
 Rb85 from /tmp/shem361_Jef2.2 (3725) at Wed Oct 12 23:19:16 2011                

 PROCESSING ISOTOPE/MATERIAL 'Rb87    0002' (HNISOR='Rb87        ').

 ISOTOPE/MATERIAL INFO:
 Rb87 from /tmp/shem361_Jef2.2 (3731) at Wed Oct 12 23:25:55 2011                

 PROCESSING ISOTOPE/MATERIAL 'Sr86    0002' (HNISOR='Sr86        ').

 ISOTOPE/MATERIAL INFO:
 Sr86 from /tmp/shem361_Jef2.2 (3831) at Wed Oct 12 23:32:39 2011                

 PROCESSING ISOTOPE/MATERIAL 'Sr87    0002' (HNISOR='Sr87        ').

 ISOTOPE/MATERIAL INFO:
 Sr87 from /tmp/shem361_Jef2.2 (3834) at Wed Oct 12 23:39:19 2011                

 PROCESSING ISOTOPE/MATERIAL 'Pd110   0002' (HNISOR='Pd110       ').

 ISOTOPE/MATERIAL INFO:
 Pd110 from /tmp/shem361_Jef2.2 (4649) at Thu Oct 13 04:11:27 2011               

 PROCESSING ISOTOPE/MATERIAL 'Ag111   0002' (HNISOR='Ag111       ').

 ISOTOPE/MATERIAL INFO:
 Ag111 from /tmp/shem361_Jef2.2 (4737) at Thu Oct 13 04:32:23 2011               

 PROCESSING ISOTOPE/MATERIAL 'Cd116   0002' (HNISOR='Cd116       ').

 ISOTOPE/MATERIAL INFO:
 Cd116 from /tmp/shem361_Jef2.2 (4855) at Thu Oct 13 05:20:44 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn122   0002' (HNISOR='Sn122       ').

 ISOTOPE/MATERIAL INFO:
 Sn122 from /tmp/shem361_Jef2.2 (5055) at Thu Oct 13 06:22:29 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn123   0002' (HNISOR='Sn123       ').

 ISOTOPE/MATERIAL INFO:
 Sn123 from /tmp/shem361_Jef2.2 (5058) at Thu Oct 13 06:29:11 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn124   0002' (HNISOR='Sn124       ').

 ISOTOPE/MATERIAL INFO:
 Sn124 from /tmp/shem361_Jef2.2 (5061) at Thu Oct 13 06:36:00 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn125   0002' (HNISOR='Sn125       ').

 ISOTOPE/MATERIAL INFO:
 Sn125 from /tmp/shem361_Jef2.2 (5064) at Thu Oct 13 06:42:45 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sn126   0002' (HNISOR='Sn126       ').

 ISOTOPE/MATERIAL INFO:
 Sn126 from /tmp/shem361_Jef2.2 (5067) at Thu Oct 13 06:49:36 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb123   0002' (HNISOR='Sb123       ').

 ISOTOPE/MATERIAL INFO:
 Sb123 from /tmp/shem361_Jef2.2 (5131) at Thu Oct 13 07:03:49 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb124   0002' (HNISOR='Sb124       ').

 ISOTOPE/MATERIAL INFO:
 Sb124 from /tmp/shem361_Jef2.2 (5134) at Thu Oct 13 07:10:33 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb125   0002' (HNISOR='Sb125       ').

 ISOTOPE/MATERIAL INFO:
 Sb125 from /tmp/shem361_Jef2.2 (5137) at Thu Oct 13 07:17:18 2011               

 PROCESSING ISOTOPE/MATERIAL 'Sb126   0002' (HNISOR='Sb126       ').

 ISOTOPE/MATERIAL INFO:
 Sb126 from /tmp/shem361_Jef2.2 (5140) at Thu Oct 13 07:24:07 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te127m  0002' (HNISOR='Te127m      ').

 ISOTOPE/MATERIAL INFO:
 Te127m from /tmp/shem361_Jef2.2 (5246) at Thu Oct 13 08:05:18 2011              

 PROCESSING ISOTOPE/MATERIAL 'Te128   0002' (HNISOR='Te128       ').

 ISOTOPE/MATERIAL INFO:
 Te128 from /tmp/shem361_Jef2.2 (5249) at Thu Oct 13 08:12:06 2011               

 PROCESSING ISOTOPE/MATERIAL 'Te130   0002' (HNISOR='Te130       ').

 ISOTOPE/MATERIAL INFO:
 Te130 from /tmp/shem361_Jef2.2 (5255) at Thu Oct 13 08:25:32 2011               

 PROCESSING ISOTOPE/MATERIAL 'I129    0002' (HNISOR='I129        ').

 ISOTOPE/MATERIAL INFO:
 I129 from /tmp/shem361_Jef2.2 (5331) at Thu Oct 13 08:47:07 2011                

 PROCESSING ISOTOPE/MATERIAL 'I130    0002' (HNISOR='I130        ').

 ISOTOPE/MATERIAL INFO:
 I130 from /tmp/shem361_Jef2.2 (5334) at Thu Oct 13 08:53:49 2011                

 PROCESSING ISOTOPE/MATERIAL 'I131    0002' (HNISOR='I131        ').

 ISOTOPE/MATERIAL INFO:
 I131 from /tmp/shem361_Jef2.2 (5337) at Thu Oct 13 09:00:29 2011                

 PROCESSING ISOTOPE/MATERIAL 'I135    0002' (HNISOR='I135        ').

 ISOTOPE/MATERIAL INFO:
 I135 from /tmp/shem361_Jef2.2 (5349) at Thu Oct 13 09:07:11 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ba140   0002' (HNISOR='Ba140       ').

 ISOTOPE/MATERIAL INFO:
 Ba140 from /tmp/shem361_Jef2.2 (5655) at Thu Oct 13 11:23:55 2011               

 PROCESSING ISOTOPE/MATERIAL 'Nd150   0002' (HNISOR='Nd150       ').

 ISOTOPE/MATERIAL INFO:
 Nd150 from /tmp/shem361_Jef2.2 (6049) at Thu Oct 13 13:29:07 2011               

 PROCESSING ISOTOPE/MATERIAL 'Pm151   0002' (HNISOR='Pm151       ').

 ISOTOPE/MATERIAL INFO:
 Pm151 from /tmp/shem361_Jef2.2 (6161) at Thu Oct 13 14:02:59 2011               

 PROCESSING ISOTOPE/MATERIAL 'Se82    0002' (HNISOR='Se82        ').

 ISOTOPE/MATERIAL INFO:
 Se82 from /tmp/shem361_Jef2.2 (3449) at Wed Oct 12 22:18:46 2011                

 PROCESSING ISOTOPE/MATERIAL 'Br79    0002' (HNISOR='Br79        ').

 ISOTOPE/MATERIAL INFO:
 Br79 from /tmp/shem361_Jef2.2 (3525) at Wed Oct 12 22:25:32 2011                

 PROCESSING ISOTOPE/MATERIAL 'Br81    0002' (HNISOR='Br81        ').

 ISOTOPE/MATERIAL INFO:
 Br81 from /tmp/shem361_Jef2.2 (3531) at Wed Oct 12 22:32:29 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr80    0002' (HNISOR='Kr80        ').

 ISOTOPE/MATERIAL INFO:
 Kr80 from /tmp/shem361_Jef2.2 (3631) at Wed Oct 12 22:39:09 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr82    0002' (HNISOR='Kr82        ').

 ISOTOPE/MATERIAL INFO:
 Kr82 from /tmp/shem361_Jef2.2 (3637) at Wed Oct 12 22:45:49 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr83    0002' (HNISOR='Kr83        ').

 ISOTOPE/MATERIAL INFO:
 Kr83 from /tmp/shem361_Jef2.2 (3640) at Wed Oct 12 22:52:30 2011                

 PROCESSING ISOTOPE/MATERIAL 'Kr84    0002' (HNISOR='Kr84        ').

 ISOTOPE/MATERIAL INFO:
 Kr84 from /tmp/shem361_Jef2.2 (3643) at Wed Oct 12 22:59:10 2011                

 PROCESSING ISOTOPE/MATERIAL 'Cd115m  0002' (HNISOR='Cd115m      ').

 ISOTOPE/MATERIAL INFO:
 Cd115m from /tmp/shem361_Jef2.2 (4852) at Thu Oct 13 05:13:58 2011              

 PROCESSING ISOTOPE/MATERIAL 'Te129m  0002' (HNISOR='Te129m      ').

 ISOTOPE/MATERIAL INFO:
 Te129m from /tmp/shem361_Jef2.2 (5252) at Thu Oct 13 08:18:47 2011              

 PROCESSING ISOTOPE/MATERIAL 'Se76    0002' (HNISOR='Se76        ').

 ISOTOPE/MATERIAL INFO:
 Se76 from /tmp/shem361_Jef2.2 (3431) at Wed Oct 12 21:52:18 2011                

 PROCESSING ISOTOPE/MATERIAL 'Se77    0002' (HNISOR='Se77        ').

 ISOTOPE/MATERIAL INFO:
 Se77 from /tmp/shem361_Jef2.2 (3434) at Wed Oct 12 21:58:59 2011                

 PROCESSING ISOTOPE/MATERIAL 'Se78    0002' (HNISOR='Se78        ').

 ISOTOPE/MATERIAL INFO:
 Se78 from /tmp/shem361_Jef2.2 (3437) at Wed Oct 12 22:05:34 2011                

 PROCESSING ISOTOPE/MATERIAL 'Se80    0002' (HNISOR='Se80        ').

 ISOTOPE/MATERIAL INFO:
 Se80 from /tmp/shem361_Jef2.2 (3443) at Wed Oct 12 22:12:12 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ge73    0002' (HNISOR='Ge73        ').

 ISOTOPE/MATERIAL INFO:
 Ge73 from /tmp/shem361_Jef2.2 (3234) at Wed Oct 12 21:25:28 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ge74    0002' (HNISOR='Ge74        ').

 ISOTOPE/MATERIAL INFO:
 Ge74 from /tmp/shem361_Jef2.2 (3237) at Wed Oct 12 21:32:00 2011                

 PROCESSING ISOTOPE/MATERIAL 'As75    0002' (HNISOR='As75        ').

 ISOTOPE/MATERIAL INFO:
 As75 from /tmp/shem361_Jef2.2 (3325) at Wed Oct 12 21:45:36 2011                

 PROCESSING ISOTOPE/MATERIAL 'Ge72    0002' (HNISOR='Ge72        ').

 ISOTOPE/MATERIAL INFO:
 Ge72 from /tmp/shem361_Jef2.2 (3231) at Wed Oct 12 21:18:47 2011                

 PROCESSING ISOTOPE/MATERIAL 'H2      0003' (HNISOR='H2          ').

 ISOTOPE/MATERIAL INFO:
 H2 from /tmp/shem361_Jef2.2 (128) at Wed Oct 12 10:15:34 2011                   

 PROCESSING ISOTOPE/MATERIAL 'H3      0003' (HNISOR='H3          ').

 ISOTOPE/MATERIAL INFO:
 H3 from /tmp/shem361_Jef2.2 (131) at Wed Oct 12 10:20:06 2011                   

 PROCESSING ISOTOPE/MATERIAL 'He3     0003' (HNISOR='He3         ').

 ISOTOPE/MATERIAL INFO:
 He3 from /tmp/shem361_Jef2.2 (225) at Wed Oct 12 10:24:42 2011                  

 PROCESSING ISOTOPE/MATERIAL 'Li7     0003' (HNISOR='Li7         ').

 ISOTOPE/MATERIAL INFO:
 Li7 from /tmp/shem361_Jef2.2 (328) at Wed Oct 12 10:39:24 2011                  

 PROCESSING ISOTOPE/MATERIAL 'Be9     0003' (HNISOR='Be9         ').

 ISOTOPE/MATERIAL INFO:
 Be9 from /tmp/shem361_Jef2.2 (425) at Wed Oct 12 09:42:45 2011                  

 PROCESSING ISOTOPE/MATERIAL 'N15     0003' (HNISOR='N15         ').

 ISOTOPE/MATERIAL INFO:
 N15 from /tmp/shem361_Jef2.2 (728) at Wed Oct 12 11:04:34 2011                  

 PROCESSING ISOTOPE/MATERIAL 'O17     0003' (HNISOR='O17         ').

 ISOTOPE/MATERIAL INFO:
 O17 from /tmp/shem361_Jef2.2 (828) at Wed Oct 12 11:14:30 2011                  

 PROCESSING ISOTOPE/MATERIAL 'Li6     0003' (HNISOR='Li6         ').

 ISOTOPE/MATERIAL INFO:
 Li6 from /tmp/shem361_Jef2.2 (325) at Wed Oct 12 10:34:25 2011                  

 PROCESSING ISOTOPE/MATERIAL 'N14     0003' (HNISOR='N14         ').

 ISOTOPE/MATERIAL INFO:
 N14 from /tmp/shem361_Jef2.2 (725) at Wed Oct 12 10:59:29 2011                  

 PROCESSING ISOTOPE/MATERIAL 'He4     0003' (HNISOR='He4         ').

 ISOTOPE/MATERIAL INFO:
 He4 from /tmp/shem361_Jef2.2 (228) at Wed Oct 12 10:29:28 2011                  

 OPTIONS
 -------
 IMPX       1   (0=NO PRINT/1=SHORT/2=MORE)
 IPROB      0   (0=DIRECT/1=ADJOINT)
 ITIME      1   (1=STEADY-STATE/2=PROMPT)
 NLIB       1   (NUMBER OF SETS OF LIBRARIES)
 NGF       30   (NUMBER OF FAST GROUP WITHOUT SELF-SHIELDING)
 IGRMAX   173   (LAST GROUP INDEX WITH SELF-SHIELDING)
 NBISO    444   (NUMBER OF ISOTOPES OR MATERIALS)
 NBMIX      3   (NUMBER OF MIXTURES)
 NRES       1   (NUMBER OF SETS OF RESONANT MIXTURES)
 NCOMB      3   (NUMBER OF DEPLETING MIXTURES)
 NEDMAC    12   (NUMBER OF CROSS SECTION EDITS)
 NGRO     361   (NUMBER OF ENERGY GROUPS)
 NL         2   (NUMBER OF LEGENDRE ORDERS)
 ITRANC     2   (0=NO TRANSPORT CORRECTION/1=APOLLO TYPE/2=RECOVER FROM LIBRARY/3=WIMS-D TYPE/4=LEAKAGE CORRECTION)
 IPROC      0   (-1=SKIP LIBRARY PROCESSING/0=DILUTION INTERPOLATION/1=USE PHYSICAL TABLES/2=BUILD A DRAGLIB/3=COMPUTE CALENDF TABLES/4=SLOWING-DOWN TABLES/5=ALL CALENDF)
 IMAC       1   (0=DO NOT/1=DO BUILD AN EMBEDDED MACROLIB)
 NDEL       6   (NUMBER OF PRECURSOR GROUPS)
 NDEPL    283   (NUMBER OF DEPLETING ISOTOPES)
 NFISS     21   (NUMBER OF FISSILE ISOTOPES)
 ISOADD     0   (0=COMPLETE BURNUP CHAIN/1=DO NOT)
 MAXISM   300   (MAX. NUMBER OF ISOTOPES PER MIXTURE)
 IPRECI     4   (CALENDF ACCURACY FLAG:1/2/3/4)

 CROSS SECTION EDIT NAME (LCM DIRECTORY NAME)
 --------------------------------------------
   1  NFTOT        2  NG           3  N2N   
   4  N3N          5  N4N          6  NA    
   7  NP           8  N2A          9  NNP   
  10  ND          11  NT          12  TRANC 

 AVAILABLE CROSS-SECTION LIBRARIES:
    1 -- DLIB_J2_361                                                     

                                                        NUMBER
 SPEC   LOCAL NAME    ISOTOPE       FROM LIBRARY  MIX   DENSITY     TEMP(K)    SIGZERO    SELF-SHIEL  THERMAL CORRECTION
 -----  ------------  ------------  ------------  ----  ----------  ---------  ---------  ----------  ------------------
     1  O16     0001  O16           DRAGON     1     1  4.6131E-02  1.200E+03  1.000E+10   0             0                 
     2  U235    0001  U235          DRAGON     1     1  8.0729E-04  1.200E+03  1.000E+10   1             0                 
     3  U238    0001  U238          DRAGON     1     1  2.2258E-02  1.200E+03  1.000E+10   1             0                 
     4  Zr91    0002  Zr91          DRAGON     1     2  3.8324E-02  1.000E+03  1.000E+10   0             0                 
     5  H1H2O   0003  H1_H2O        DRAGON     1     3  4.7508E-02  6.000E+02  1.000E+10   0             0                 
     6  O16H2O  0003  O16           DRAGON     1     3  2.3754E-02  6.000E+02  1.000E+10   0             0                 
     7  B10     0003  B10           DRAGON     1     3  2.0000E-11  6.000E+02  1.000E+10   0             0                 
     8  B11     0003  B11           DRAGON     1     3  8.0000E-11  6.000E+02  1.000E+10   0             0                 
     9  H1      0001  H1            DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    10  H2      0001  H2            DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    11  H3      0001  H3            DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    12  He3     0001  He3           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    13  He4     0001  He4           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    14  Li6     0001  Li6           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    15  Li7     0001  Li7           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    16  Be9     0001  Be9           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    17  B10     0001  B10           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    18  B11     0001  B11           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    19  N14     0001  N14           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    20  N15     0001  N15           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    21  O17     0001  O17           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    22  Fe57    0001  Fe57          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    23  Fe58    0001  Fe58          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    24  Co59    0001  Co59          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    25  Ni60    0001  Ni60          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    26  Ni61    0001  Ni61          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    27  Ni62    0001  Ni62          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    28  Ni64    0001  Ni64          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    29  Ge72    0001  Ge72          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    30  Ge73    0001  Ge73          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    31  Ge74    0001  Ge74          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    32  Ge76    0001  Ge76          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    33  As75    0001  As75          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    34  Se76    0001  Se76          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    35  Se77    0001  Se77          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    36  Se78    0001  Se78          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    37  Se80    0001  Se80          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    38  Se82    0001  Se82          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    39  Br79    0001  Br79          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    40  Br81    0001  Br81          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    41  Kr80    0001  Kr80          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    42  Kr82    0001  Kr82          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    43  Kr83    0001  Kr83          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    44  Kr84    0001  Kr84          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    45  Kr85    0001  Kr85          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    46  Kr86    0001  Kr86          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    47  Rb85    0001  Rb85          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    48  Rb87    0001  Rb87          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    49  Sr86    0001  Sr86          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    50  Sr87    0001  Sr87          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    51  Sr88    0001  Sr88          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    52  Sr89    0001  Sr89          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    53  Sr90    0001  Sr90          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    54  Y89     0001  Y89           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    55  Y90     0001  Y90           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    56  Y91     0001  Y91           DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    57  Zr90    0001  Zr90          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    58  Zr91    0001  Zr91          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    59  Zr92    0001  Zr92          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    60  Zr93    0001  Zr93          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    61  Zr94    0001  Zr94          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    62  Zr95    0001  Zr95          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    63  Zr96    0001  Zr96          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    64  Nb93    0001  Nb93          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    65  Nb94    0001  Nb94          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    66  Nb95    0001  Nb95          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    67  Mo95    0001  Mo95          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    68  Mo96    0001  Mo96          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    69  Mo97    0001  Mo97          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    70  Mo98    0001  Mo98          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    71  Mo99    0001  Mo99          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    72  Mo100   0001  Mo100         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    73  Tc99    0001  Tc99          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    74  Ru99    0001  Ru99          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    75  Ru100   0001  Ru100         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    76  Ru101   0001  Ru101         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    77  Ru102   0001  Ru102         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    78  Ru103   0001  Ru103         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    79  Ru104   0001  Ru104         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    80  Ru105   0001  Ru105         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    81  Ru106   0001  Ru106         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    82  Rh103   0001  Rh103         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    83  Rh105   0001  Rh105         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    84  Pd104   0001  Pd104         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    85  Pd105   0001  Pd105         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    86  Pd106   0001  Pd106         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    87  Pd107   0001  Pd107         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    88  Pd108   0001  Pd108         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    89  Pd110   0001  Pd110         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    90  Ag107   0001  Ag107         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    91  Ag109   0001  Ag109         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    92  Ag111   0001  Ag111         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    93  Cd110   0001  Cd110         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    94  Cd111   0001  Cd111         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    95  Cd112   0001  Cd112         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    96  Cd113   0001  Cd113         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    97  Cd114   0001  Cd114         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    98  Cd115m  0001  Cd115m        DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
    99  Cd116   0001  Cd116         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   100  In113   0001  In113         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   101  In115   0001  In115         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   102  Sn115   0001  Sn115         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   103  Sn116   0001  Sn116         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   104  Sn117   0001  Sn117         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   105  Sn118   0001  Sn118         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   106  Sn119   0001  Sn119         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   107  Sn120   0001  Sn120         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   108  Sn122   0001  Sn122         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   109  Sn123   0001  Sn123         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   110  Sn124   0001  Sn124         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   111  Sn125   0001  Sn125         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   112  Sn126   0001  Sn126         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   113  Sb121   0001  Sb121         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   114  Sb123   0001  Sb123         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   115  Sb124   0001  Sb124         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   116  Sb125   0001  Sb125         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   117  Sb126   0001  Sb126         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   118  Te122   0001  Te122         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   119  Te123   0001  Te123         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   120  Te124   0001  Te124         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   121  Te125   0001  Te125         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   122  Te126   0001  Te126         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   123  Te127m  0001  Te127m        DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   124  Te128   0001  Te128         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   125  Te129m  0001  Te129m        DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   126  Te130   0001  Te130         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   127  Te132   0001  Te132         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   128  I127    0001  I127          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   129  I129    0001  I129          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   130  I130    0001  I130          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   131  I131    0001  I131          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   132  I135    0001  I135          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   133  Xe128   0001  Xe128         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   134  Xe129   0001  Xe129         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   135  Xe130   0001  Xe130         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   136  Xe131   0001  Xe131         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   137  Xe132   0001  Xe132         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   138  Xe133   0001  Xe133         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   139  Xe134   0001  Xe134         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   140  Xe135   0001  Xe135         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   141  Xe136   0001  Xe136         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   142  Cs133   0001  Cs133         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   143  Cs134   0001  Cs134         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   144  Cs135   0001  Cs135         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   145  Cs136   0001  Cs136         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   146  Cs137   0001  Cs137         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   147  Ba134   0001  Ba134         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   148  Ba135   0001  Ba135         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   149  Ba136   0001  Ba136         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   150  Ba137   0001  Ba137         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   151  Ba138   0001  Ba138         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   152  Ba140   0001  Ba140         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   153  La139   0001  La139         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   154  La140   0001  La140         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   155  Ce140   0001  Ce140         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   156  Ce141   0001  Ce141         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   157  Ce142   0001  Ce142         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   158  Ce143   0001  Ce143         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   159  Ce144   0001  Ce144         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   160  Pr141   0001  Pr141         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   161  Pr142   0001  Pr142         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   162  Pr143   0001  Pr143         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   163  Nd142   0001  Nd142         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   164  Nd143   0001  Nd143         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   165  Nd144   0001  Nd144         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   166  Nd145   0001  Nd145         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   167  Nd146   0001  Nd146         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   168  Nd147   0001  Nd147         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   169  Nd148   0001  Nd148         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   170  Nd150   0001  Nd150         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   171  Pm147   0001  Pm147         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   172  Pm148   0001  Pm148         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   173  Pm148m  0001  Pm148m        DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   174  Pm149   0001  Pm149         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   175  Pm151   0001  Pm151         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   176  Sm147   0001  Sm147         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   177  Sm148   0001  Sm148         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   178  Sm149   0001  Sm149         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   179  Sm150   0001  Sm150         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   180  Sm151   0001  Sm151         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   181  Sm152   0001  Sm152         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   182  Sm153   0001  Sm153         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   183  Sm154   0001  Sm154         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   184  Eu151   0001  Eu151         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   185  Eu152   0001  Eu152         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   186  Eu153   0001  Eu153         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   187  Eu154   0001  Eu154         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   188  Eu155   0001  Eu155         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   189  Eu156   0001  Eu156         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   190  Eu157   0001  Eu157         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   191  Gd154   0001  Gd154         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   192  Gd155   0001  Gd155         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   193  Gd156   0001  Gd156         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   194  Gd157   0001  Gd157         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   195  Gd158   0001  Gd158         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   196  Gd160   0001  Gd160         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   197  Tb159   0001  Tb159         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   198  Tb160   0001  Tb160         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   199  Dy160   0001  Dy160         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   200  Dy161   0001  Dy161         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   201  Dy162   0001  Dy162         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   202  Dy163   0001  Dy163         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   203  Dy164   0001  Dy164         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   204  Ho165   0001  Ho165         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   205  Er166   0001  Er166         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   206  Er167   0001  Er167         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   207  Hf176   0001  Hf176         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   208  Hf177   0001  Hf177         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   209  Hf178   0001  Hf178         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   210  Hf179   0001  Hf179         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   211  Hf180   0001  Hf180         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   212  W182    0001  W182          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   213  W183    0001  W183          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   214  W184    0001  W184          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   215  W186    0001  W186          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   216  Pa231   0001  Pa231         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   217  U232    0001  U232          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   218  U233    0001  U233          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   219  U234    0001  U234          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   220  U236    0001  U236          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   221  U237    0001  U237          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   222  Np237   0001  Np237         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   223  Np238   0001  Np238         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   224  Np239   0001  Np239         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   225  Pu236   0001  Pu236         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   226  Pu237   0001  Pu237         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   227  Pu238   0001  Pu238         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   228  Pu239   0001  Pu239         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   229  Pu240   0001  Pu240         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   230  Pu241   0001  Pu241         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   231  Pu242   0001  Pu242         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   232  Pu243   0001  Pu243         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   233  Am241   0001  Am241         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   234  Am242   0001  Am242         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   235  Am242m  0001  Am242m        DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   236  Am243   0001  Am243         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   237  Cm242   0001  Cm242         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   238  Cm243   0001  Cm243         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   239  Cm244   0001  Cm244         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   240  Cm245   0001  Cm245         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   241  Cm246   0001  Cm246         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   242  Cm247   0001  Cm247         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   243  Cm248   0001  Cm248         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   244  Bk249   0001  Bk249         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   245  Cf249   0001  Cf249         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   246  Cf250   0001  Cf250         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   247  Cf251   0001  Cf251         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   248  Cf252   0001  Cf252         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   249  Cf253   0001  Cf253         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   250  Cr52    0001  Cr52          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   251  Cr53    0001  Cr53          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   252  Cr54    0001  Cr54          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   253  Mn55    0001  Mn55          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   254  Fe56    0001  Fe56          DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   255  Hf174   0001  Hf174         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   256  Bi209   0001  Bi209         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   257  Th230   0001  Th230         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   258  Th232   0001  Th232         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   259  Pa233   0001  Pa233         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   260  Cm241   0001  Cm241         DRAGON     1     1  0.0000E+00  1.200E+03  1.000E+10   0             0                 
   261  Sr88    0002  Sr88          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   262  Sr89    0002  Sr89          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   263  Sr90    0002  Sr90          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   264  Y89     0002  Y89           DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   265  Y90     0002  Y90           DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   266  Y91     0002  Y91           DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   267  Zr90    0002  Zr90          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   268  Zr92    0002  Zr92          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   269  Zr93    0002  Zr93          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   270  Zr94    0002  Zr94          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   271  Zr95    0002  Zr95          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   272  Zr96    0002  Zr96          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   273  Nb93    0002  Nb93          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   274  Nb94    0002  Nb94          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   275  Nb95    0002  Nb95          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   276  Mo95    0002  Mo95          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   277  Mo96    0002  Mo96          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   278  Mo97    0002  Mo97          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   279  Mo98    0002  Mo98          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   280  Mo99    0002  Mo99          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   281  Mo100   0002  Mo100         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   282  Tc99    0002  Tc99          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   283  Ru99    0002  Ru99          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   284  Ru100   0002  Ru100         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   285  Ru101   0002  Ru101         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   286  Ru102   0002  Ru102         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   287  Ru103   0002  Ru103         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   288  Ru104   0002  Ru104         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   289  Ru105   0002  Ru105         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   290  Ru106   0002  Ru106         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   291  Rh103   0002  Rh103         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   292  Rh105   0002  Rh105         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   293  Pd104   0002  Pd104         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   294  Pd105   0002  Pd105         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   295  Pd106   0002  Pd106         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   296  Pd107   0002  Pd107         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   297  Pd108   0002  Pd108         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   298  Ag107   0002  Ag107         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   299  Ag109   0002  Ag109         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   300  Cd110   0002  Cd110         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   301  Cd111   0002  Cd111         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   302  Cd112   0002  Cd112         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   303  Cd113   0002  Cd113         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   304  Cd114   0002  Cd114         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   305  In113   0002  In113         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   306  In115   0002  In115         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   307  Sn115   0002  Sn115         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   308  Sn116   0002  Sn116         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   309  Sn117   0002  Sn117         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   310  Sn118   0002  Sn118         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   311  Sn119   0002  Sn119         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   312  Sn120   0002  Sn120         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   313  Sb121   0002  Sb121         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   314  Te122   0002  Te122         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   315  Te123   0002  Te123         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   316  Te124   0002  Te124         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   317  Te125   0002  Te125         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   318  Te126   0002  Te126         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   319  I127    0002  I127          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   320  Xe128   0002  Xe128         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   321  Xe129   0002  Xe129         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   322  Xe130   0002  Xe130         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   323  Xe131   0002  Xe131         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   324  Xe132   0002  Xe132         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   325  Xe133   0002  Xe133         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   326  Xe134   0002  Xe134         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   327  Xe135   0002  Xe135         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   328  Xe136   0002  Xe136         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   329  Cs133   0002  Cs133         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   330  Cs134   0002  Cs134         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   331  Cs135   0002  Cs135         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   332  Cs136   0002  Cs136         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   333  Cs137   0002  Cs137         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   334  Ba134   0002  Ba134         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   335  Ba135   0002  Ba135         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   336  Ba136   0002  Ba136         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   337  Ba137   0002  Ba137         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   338  Ba138   0002  Ba138         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   339  La139   0002  La139         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   340  La140   0002  La140         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   341  Ce140   0002  Ce140         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   342  Ce141   0002  Ce141         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   343  Ce142   0002  Ce142         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   344  Ce143   0002  Ce143         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   345  Ce144   0002  Ce144         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   346  Pr141   0002  Pr141         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   347  Pr142   0002  Pr142         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   348  Pr143   0002  Pr143         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   349  Nd142   0002  Nd142         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   350  Nd143   0002  Nd143         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   351  Nd144   0002  Nd144         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   352  Nd145   0002  Nd145         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   353  Nd146   0002  Nd146         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   354  Nd147   0002  Nd147         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   355  Nd148   0002  Nd148         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   356  Pm147   0002  Pm147         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   357  Pm148   0002  Pm148         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   358  Pm148m  0002  Pm148m        DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   359  Pm149   0002  Pm149         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   360  Sm147   0002  Sm147         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   361  Sm148   0002  Sm148         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   362  Sm149   0002  Sm149         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   363  Sm150   0002  Sm150         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   364  Sm151   0002  Sm151         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   365  Sm152   0002  Sm152         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   366  Sm153   0002  Sm153         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   367  Sm154   0002  Sm154         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   368  Eu151   0002  Eu151         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   369  Eu152   0002  Eu152         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   370  Eu153   0002  Eu153         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   371  Eu154   0002  Eu154         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   372  Eu155   0002  Eu155         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   373  Eu156   0002  Eu156         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   374  Eu157   0002  Eu157         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   375  Gd154   0002  Gd154         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   376  Gd155   0002  Gd155         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   377  Gd156   0002  Gd156         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   378  Gd157   0002  Gd157         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   379  Gd158   0002  Gd158         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   380  Tb159   0002  Tb159         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   381  Tb160   0002  Tb160         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   382  Dy160   0002  Dy160         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   383  Dy161   0002  Dy161         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   384  Dy162   0002  Dy162         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   385  Dy163   0002  Dy163         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   386  Dy164   0002  Dy164         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   387  Ho165   0002  Ho165         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   388  Er166   0002  Er166         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   389  Er167   0002  Er167         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   390  Kr85    0002  Kr85          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   391  Kr86    0002  Kr86          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   392  Rb85    0002  Rb85          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   393  Rb87    0002  Rb87          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   394  Sr86    0002  Sr86          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   395  Sr87    0002  Sr87          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   396  Pd110   0002  Pd110         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   397  Ag111   0002  Ag111         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   398  Cd116   0002  Cd116         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   399  Sn122   0002  Sn122         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   400  Sn123   0002  Sn123         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   401  Sn124   0002  Sn124         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   402  Sn125   0002  Sn125         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   403  Sn126   0002  Sn126         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   404  Sb123   0002  Sb123         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   405  Sb124   0002  Sb124         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   406  Sb125   0002  Sb125         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   407  Sb126   0002  Sb126         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   408  Te127m  0002  Te127m        DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   409  Te128   0002  Te128         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   410  Te130   0002  Te130         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   411  I129    0002  I129          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   412  I130    0002  I130          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   413  I131    0002  I131          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   414  I135    0002  I135          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   415  Ba140   0002  Ba140         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   416  Nd150   0002  Nd150         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   417  Pm151   0002  Pm151         DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   418  Se82    0002  Se82          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   419  Br79    0002  Br79          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   420  Br81    0002  Br81          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   421  Kr80    0002  Kr80          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   422  Kr82    0002  Kr82          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   423  Kr83    0002  Kr83          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   424  Kr84    0002  Kr84          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   425  Cd115m  0002  Cd115m        DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   426  Te129m  0002  Te129m        DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   427  Se76    0002  Se76          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   428  Se77    0002  Se77          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   429  Se78    0002  Se78          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   430  Se80    0002  Se80          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   431  Ge73    0002  Ge73          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   432  Ge74    0002  Ge74          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   433  As75    0002  As75          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   434  Ge72    0002  Ge72          DRAGON     1     2  0.0000E+00  1.000E+03  1.000E+10   0             0                 
   435  H2      0003  H2            DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
   436  H3      0003  H3            DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
   437  He3     0003  He3           DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
   438  Li7     0003  Li7           DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
   439  Be9     0003  Be9           DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
   440  N15     0003  N15           DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
   441  O17     0003  O17           DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
   442  Li6     0003  Li6           DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
   443  N14     0003  N14           DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
   444  He4     0003  He4           DRAGON     1     3  0.0000E+00  6.000E+02  1.000E+10   0             0                 
->@END MODULE   : LIB:        
-->>TIME SPENT IN MODULE LIB:        :      6.000
<|GEOM  := GEO: :: CARCEL 3                                               |<0027
->@BEGIN MODULE : GEO:        
->@DESCRIPTION  : Geometry definition                                                     
->@CREDITS      : A. Hebert                                                               
->@COPYRIGHTS   : ECOLE POLYTECHNIQUE DE MONTREAL  
                  GNU LESSER GENERAL PUBLIC LICENSE
<|  X- REFL X+ REFL                                                       |<0028
<|  Y- REFL Y+ REFL                                                       |<0029
<|         MESHX 0.0 1.26                                                 |<0030
<|         MESHY 0.0 1.26                                                 |<0031
<|         RADIUS 0.0 0.410 0.418 0.480                                   |<0032
<|         MIX  1 0 2 3                                                   |<0033
<|  SPLITR 4  1  2                                                        |<0034
<|  ;                                                                     |<0035

 CREATION OF A LEVEL  1 GEOMETRY ON THE DIRECTORY NAMED '/           ' OF THE LCM OBJECT 'GEOM        ' WITH TYPE 2-D RECT. CELL  .
->@END MODULE   : GEO:        
-->>TIME SPENT IN MODULE GEO:        :      0.000
<|TRACK := SYBILT: GEOM ::                                                |<0040
->@BEGIN MODULE : SYBILT:     
->@DESCRIPTION  : Sybil 2-D tracking                                                      
->@CREDITS      : A. Hebert                                                               
->@COPYRIGHTS   : ECOLE POLYTECHNIQUE DE MONTREAL  
                  GNU LESSER GENERAL PUBLIC LICENSE
<|  TITLE 'REP'                                                           |<0041
<|  EDIT 1 MAXR 40 ;                                                      |<0042

 CARTESIAN MULTICELL OPTION (EURYDICE-2) BASED ON GEOMETRY LOCATED IN 'GEOM        '.


 NUMBER OF CELLS ALONG THE X-AXIS =   1
                 ALONG THE Y-AXIS =   1     AVAILABLE STORAGE MAXPTS =  40
 NUMBER OF MERGED VOLUMES =    8
 NUMBER OF DISTINCT PHYSICAL MIXTURES =    3


     GENERATING CELL   RADIUS

    1 'GEOM        '   0.00000E+00 1.02500E-01 2.05000E-01 3.07500E-01 4.10000E-01 4.18000E-01 4.49000E-01 4.80000E-01
                       A = 1.26000E+00   B = 1.26000E+00


 INFINITE DOMAIN.


 DP-0 APPROXIMATION AROUND EACH CARTESIAN CELL.

 QUADRATURE PARAMETERS:
 HETEROGENEOUS CELLS   -    ANGLES   NA =  3 IN (0,PI/4)
                          SEGMENTS   NX =  3

 HOMOGENEOUS CELLS     -    ANGLES   NH =  5

 CYLINDRICAL CELLS     -  SEGMENTS   MR =  5



 TOTAL NUMBER OF CELLS IN THE DOMAIN =    1
 TOTAL NUMBER OF MERGED CELLS =    1
 TOTAL NUMBER OF GENERATING CELLS =    1     AVAILABLE STORAGE MAXCEL =   40


 TOTAL NUMBER OF DISTINCT OUT-CURRENTS =    4
 TOTAL NUMBER OF OUT-CURRENTS SURROUNDING ALL THE CELLS =    4     AVAILABLE STORAGE MAXJ =  160


 SYBEUR: MAXIMUM STORAGE REQUIRED BY THE TRACKS =    1042 +   2869        AVAILABLE STORAGE MAXZ =   10000


 SYBEUR: EXACT STORAGE REQUIRED BY THE TRACKS =    341 INT +    798 REAL        ACCURACY =  3.808E-06


 NUMBER OF VOLUMES =    8     AVAILABLE STORAGE MAXBLK =   40


 STATE VECTOR:
 NREG       8   (NUMBER OF REGIONS)
 NUN        8   (NUMBER OF FLUX UNKNOWNS)
 ILK        1   (0=LEAKAGE PRESENT/1=LEAKAGE ABSENT)
 NBMIX      3   (MAXIMUM NUMBER OF MIXTURES USED)
 NSURF      0   (NUMBER OF OUTER SURFACES)
 ITG        4   (TYPE OF GEOMETRY)
 MAXZ   10000   (TRACKING LENGTH)
 MAXJ     160   (INTERNAL STORAGE LENGTH FOR CURRENTS)
 NUNCUR     4   (NUMBER OF ADDITIONAL INTERFACE CURRENT COMPONENTS)
 IBIHET     0   (0/1=DOUBLE HETEROGENEITY IS NOT/IS ACTIVE)
->@END MODULE   : SYBILT:     
-->>TIME SPENT IN MODULE SYBILT:     :      0.000
<|LIBRARY := SHI: LIBRARY TRACK :: EDIT 0 NOLJ ;                          |<0044
->@BEGIN MODULE : SHI:        
->@DESCRIPTION  : Self-shielding by improved Stammler method                              
->@CREDITS      : A. Hebert                                                               
->@COPYRIGHTS   : ECOLE POLYTECHNIQUE DE MONTREAL  
                  GNU LESSER GENERAL PUBLIC LICENSE
 LIBDRB: INVALID VALUE OF ZNPHI (  1.323E+00) IN GROUP 105. DILUTION=  5.280E+01 (  5.280E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  2.012E+00) IN GROUP 106. DILUTION=  5.734E+01 (  5.734E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.342E+00) IN GROUP 107. DILUTION=  5.733E+01 (  5.733E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.694E+00) IN GROUP 127. DILUTION=  5.708E+01 (  5.708E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.751E+00) IN GROUP 128. DILUTION=  5.809E+01 (  5.809E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.282E+00) IN GROUP 144. DILUTION=  5.778E+01 (  5.778E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.316E+00) IN GROUP 105. DILUTION=  5.024E+01 (  5.024E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  2.058E+00) IN GROUP 106. DILUTION=  5.034E+01 (  5.034E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.367E+00) IN GROUP 107. DILUTION=  5.029E+01 (  5.029E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.680E+00) IN GROUP 127. DILUTION=  5.074E+01 (  5.074E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.771E+00) IN GROUP 128. DILUTION=  5.106E+01 (  5.106E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.279E+00) IN GROUP 144. DILUTION=  5.078E+01 (  5.078E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.316E+00) IN GROUP 105. DILUTION=  5.024E+01 (  5.024E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  2.058E+00) IN GROUP 106. DILUTION=  5.034E+01 (  5.034E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.367E+00) IN GROUP 107. DILUTION=  5.029E+01 (  5.029E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.680E+00) IN GROUP 127. DILUTION=  5.073E+01 (  5.073E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.771E+00) IN GROUP 128. DILUTION=  5.106E+01 (  5.106E+01). KPHIR= 173.                         
 LIBDRB: INVALID VALUE OF ZNPHI (  1.279E+00) IN GROUP 144. DILUTION=  5.078E+01 (  5.078E+01). KPHIR= 173.                         
->@END MODULE   : SHI:        
-->>TIME SPENT IN MODULE SHI:        :      1.000
<|SYS := ASM: LIBRARY TRACK ;                                             |<0046
->@BEGIN MODULE : ASM:        
->@DESCRIPTION  : To built system matrices (CP and IC)                                    
->@CREDITS      : A. Hebert, G. Marleau, R. Roy                                           
->@COPYRIGHTS   : ECOLE POLYTECHNIQUE DE MONTREAL  
                  GNU LESSER GENERAL PUBLIC LICENSE


 COMPUTATION OF DRAGON COMPLETE CP BY DOOR =   SYBIL       


 USE TRANSPORT CORRECTED CROSS-SECTIONS (ITRANC=   2 )

 OPTIONS
 -------
 IMPX       1   (0=NO PRINT/1=SHORT/2=MORE)
 ITPIJ      1   (1=WIJ/2=PIJ/3=WIJK/4=PIJK)
 LNORM      1   (0=NORMALIZE PIJ TO 1/1=DO NOT)
 LALBS      1   (0=RECOVER AND SAVE WIS/1=DO NOT)
 IPHASE     2   (1=GENERAL FLUX SOLUTION/2=PIJ APPROACH)
 ISTRM      1   (1=HOMO BN OR NO LEAKAGE/2=ECCO/3=TIBERE)
 KNORM      4   (0=NO/1=GELBARD/2=DIAGONAL/3=NON-LINEAR/4=HELIOS)
 NGRP     361   (NUMBER OF GROUPS)
 NUN        8   (NUMBER OF UNKNOWNS)
 NBMIX      3   (NUMBER OF MIXTURES)
 NANI       1   (NUMBER OF LEGENDRE ORDERS SCATTERING XS)
 IDIFF      0   (0/1: DIFFUSION COEFFICIENTS ABSENT/PRESENT)
 DOOR           (SYBIL       )
->@END MODULE   : ASM:        
-->>TIME SPENT IN MODULE ASM:        :      0.000
<|FLUX := FLU: SYS LIBRARY TRACK ::                                       |<0048
->@BEGIN MODULE : FLU:        
->@DESCRIPTION  : Solve the flux equations                                                
->@CREDITS      : R. Roy, A. Hebert, G. Marleau                                           
->@COPYRIGHTS   : ECOLE POLYTECHNIQUE DE MONTREAL  
                  GNU LESSER GENERAL PUBLIC LICENSE
<|  TYPE K B1 PNL BUCK BUCK 4.57567E-03 ;                                 |<0049




 P. I. M.    SOLUTION TO TRANSPORT EQUATION

 CALCULATION TYPE            =     K-EFF
 FORWARD/BACKWARD OPTION     =    DIRECT
 (AN)ISOTROPY OPTION         = ISOTROPIC
 LEAKAGE TYPE                =      B1  
 LEAKAGE OPTION              =       PNL
 BUCKLING                    =   IMPOSED
 INITIAL TOTAL BUCKLING      =  0.45757E-02
 FLUX SOLUTION DOOR          =    TRAFIC
 NB. OF GROUPS               =       361
 NB. OF REGIONS              =         8
 NB. OF UNKNOWNS PER GROUP   =         8
 MAX. OUTER ITERATIONS       =       401
 MAX. THERMAL ITERATIONS     =       722
 ACCELERATION SCHEME         =( 3 FREE, 3 ACCELERATED)
 REBALANCING OPTION          = ON 
 SELF-SCATTERING REDUCTION   = ON 
 FUNDAMENTAL MODE            = ON 
 EIGENVALUE TOLERANCE        =  1.000E-05
 UNKNOWN OUTER TOLERANCE     =  5.000E-05
 UNKNOWN INNER TOLERANCE     =  5.000E-05


 USE TRANSPORT CORRECTED CROSS-SECTIONS
 OUT(  0) EIG: PRC= 1.00E+00 TAR= 1.00E-05 KEFF= 4.706028E-02 BUCK= 4.57567E-03
          IN(  1) FLX: PRC= 5.02E+00 TAR= 5.00E-05 IGDEB=            1 ACCE=     1.00000
          IN(  2) FLX: PRC= 4.57E-02 TAR= 5.00E-05 IGDEB=            1 ACCE=     1.00000
          IN(  3) FLX: PRC= 2.40E-03 TAR= 5.00E-05 IGDEB=            1 ACCE=     1.00000
          IN(  4) FLX: PRC= 2.80E-05 TAR= 5.00E-05 IGDEB=          362 ACCE=     1.04144
 FLU2DR: NO LEAKAGE-> REBALANCING ON
 FLU2DR: CPU TIME=        0. INTERNAL CONVERGENCE       REACHED AFTER     4 ITERATIONS.

 B1DIF: SOLUTION OF B1   EQUATIONS WITH TYPE K   
        NUMBER OF ITERATIONS =  1
        BUCKLING =  4.57567E-03
        K-EFFECTIVE =  0.999888  (  0.999888 )
        K-INFINITE =  1.272996
        MIGRATION AREA =  5.96936E+01

 OUT(  1) EIG: PRC= 9.53E-01 TAR= 1.00E-05 KEFF= 9.998879E-01 BUCK= 4.57567E-03
 OUT(  1) FLX:                             FNOR= 1.000112E+00 ACCE=     1.00000
          IN(  1) FLX: PRC= 1.84E-03 TAR= 5.00E-05 IGDEB=            1 ACCE=     1.00000
          IN(  2) FLX: PRC= 1.23E-05 TAR= 5.00E-05 IGDEB=          362 ACCE=     1.00000
 FLU2DR: NO LEAKAGE-> REBALANCING ON
 FLU2DR: CPU TIME=        1. INTERNAL CONVERGENCE       REACHED AFTER     2 ITERATIONS.

 B1DIF: SOLUTION OF B1   EQUATIONS WITH TYPE K   
        NUMBER OF ITERATIONS =  1
        BUCKLING =  4.57567E-03
        K-EFFECTIVE =  1.000000  (  1.000000 )
        K-INFINITE =  1.273152
        MIGRATION AREA =  5.96968E+01

 OUT(  2) EIG: PRC= 1.12E-04 TAR= 1.00E-05 KEFF= 9.999996E-01 BUCK= 4.57567E-03
 OUT(  2) FLX:                             FNOR= 1.000000E+00 ACCE=     1.00000
          IN(  1) FLX: PRC= 5.99E-06 TAR= 5.00E-05 IGDEB=          362 ACCE=     1.00000
 FLU2DR: NO LEAKAGE-> REBALANCING ON
 FLU2DR: CPU TIME=        0. INTERNAL CONVERGENCE       REACHED AFTER     1 ITERATIONS.

 B1DIF: SOLUTION OF B1   EQUATIONS WITH TYPE K   
        NUMBER OF ITERATIONS =  1
        BUCKLING =  4.57567E-03
        K-EFFECTIVE =  1.000000  (  1.000000 )
        K-INFINITE =  1.273152
        MIGRATION AREA =  5.96968E+01

 OUT(  3) EIG: PRC= 2.24E-09 TAR= 1.00E-05 KEFF= 9.999996E-01 BUCK= 4.57567E-03
 OUT(  3) FLX: PRC= 5.87E-06 TAR= 5.00E-05 FNOR= 1.000000E+00 ACCE=     1.00000
 FLU2DR: CPU TIME=        1. EXTERNAL CONVERGENCE       REACHED AFTER     3 ITERATIONS.

 ++ TRACKING CALLED=   7 TIMES FINAL KINF=1.273153E+00 FINAL KEFF=9.999996E-01 B2= 4.57567E-03 PRECISION= 2.24E-09
 ++ TOTAL NUMBER OF FLUX CALCULATIONS=      2527
->@END MODULE   : FLU:        
-->>TIME SPENT IN MODULE FLU:        :      1.000
<|EDITION := EDI: LIBRARY TRACK FLUX ::                                   |<0051
->@BEGIN MODULE : EDI:        
->@DESCRIPTION  : Editing module                                                          
->@CREDITS      : A. Hebert, G. Marleau                                                   
->@COPYRIGHTS   : ECOLE POLYTECHNIQUE DE MONTREAL  
                  GNU LESSER GENERAL PUBLIC LICENSE
<|  EDIT 3 MICR RES MERG COMP COND 4.0 SAVE  ;                            |<0052

 EDITION-RELATED OPTIONS
 -----------------------
 NMERGE       1   (NUMBER OF MERGED REGIONS)
 NGCOND       2   (NUMBER OF CONDENSED ENERGY GROUPS)
 IFFAC        0   (=1: 4 FACTORS CALCULATION REQUESTED)
 ILUPS        0   (=1: REMOVE UP-SCATTERING CONTRIBUTIONS)
 NACTI        0   (NUMBER OF MIXTURES WITH ACTIVATION EDITS)
 NSTATS       0   (TYPE OF STATISTIC CALCULATIONS)
 IADF         0   (=0: DO NOT COMPUTE ADF INFO; =1: USE ALBS INFO; =2: USE BOUNDARY REGION AVERAGED FLUX INFO)
 IEUR         0   (=1/2/3: SYBIL OR EXCELL MACRO-TRACKING/NXT MACRO-TRACKING/ELSE)
 NBMICR      -2   (=-1: PROCESS ALL ISOTOPES; >1 NUMBER OF ISOTOPES TO PROCESS)
 IPRINT       3   (PRINT LEVEL)
 NSAVES       2   (=0: NO COMPUTE/NO SAVE; =1: COMPUTE/NO SAVE; =2: COMPUTE/SAVE)
 NWGTH        0   (=0: FLUX WEIGHTING FOR P1 INFO; =1: CURRENT WEIGHTING FOR P1 INFO)
 MAXPTS       8   (ALLOCATED STORAGE LENGTH FOR REGION-DEPENDENT ARRAYS)
 IHF          1   (=1: H-FACTOR CALCULATION REQUESTED)
 NDEL         6   (NUMBER OF DELAYED PRECURSOR GROUPS)
 LGEO         0   (=0: MACRO-GEOMETRY NOT AVAILABLE; =1: IS AVAILABLE)
 IADJ         0   (=0: DIRECT FLUX; =1: ADJOINT FLUX)


 MERGING INDEX:
     1    1    1    1    1    1    1    1

 EDI: SAVE MICROLIB INFO ON DIRECTORY 'REF-CASE0001'.




     REGION      VOLUME       REGION      VOLUME       REGION      VOLUME       REGION      VOLUME       REGION      VOLUME  
        1     1.58760E+00

 E N E R G Y   L I M I T S   (EV)
  1.9640E+07 >   1 >   4.0000E+00 >   2 >   1.1000E-04

 F L U X E S   A N D    R E A C T I O N    R A T E S
 ---------------------------------------------------

 G R O U P   :   1
 REGION   AVERAGE     INTEGRATED     COLLISION    ABSORPTION    NU*FISSION      LEAKAGE     PRODUCTION        SCATTERING RATES
           FLUX          FLUX          RATE          RATE          RATE          RATE          RATE      WITHIN GROUP  OUT OF GROUP
    1   1.98324E+01   3.14859E+01   1.58514E+01   3.20605E-01   2.16209E-01   1.97195E-01   9.99999E-01   1.50506E+01   4.80139E-01

 G R O U P   :   2
 REGION   AVERAGE     INTEGRATED     COLLISION    ABSORPTION    NU*FISSION      LEAKAGE     PRODUCTION        SCATTERING RATES
           FLUX          FLUX          RATE          RATE          RATE          RATE          RATE      WITHIN GROUP  OUT OF GROUP
    1   3.95829E+00   6.28419E+00   7.23932E+00   4.64846E-01   7.83790E-01   1.45271E-02   1.45026E-08   6.77390E+00   5.75320E-04

 MERGED/CONDENSED SET OF X-S SAVED IN LCM DIRECTORY 'REF-CASE0001'.


 F L U X E S   A N D   H O M O G E N I Z E D   X - S
 ---------------------------------------------------

 G R O U P   :   1
 REGION   AVERAGE         SPH          NTOT0       DIFFUSION     ABSORPTION     NUSIGF        FISSION          SCATTERING X-S
           FLUX          FACTOR         X-S       COEFFICIENT       X-S          X-S          SPECTRUM   WITHIN GROUP  OUT OF GROUP
    1   1.98324E+01   1.00000E+00   5.03445E-01   1.36876E+00   1.01825E-02   6.86685E-03   1.00000E+00   4.78013E-01   1.52493E-02

 FLUX DISADVANTAGE FACTOR =   1.01274E+00

 G R O U P   :   2
 REGION   AVERAGE         SPH          NTOT0       DIFFUSION     ABSORPTION     NUSIGF        FISSION          SCATTERING X-S
           FLUX          FACTOR         X-S       COEFFICIENT       X-S          X-S          SPECTRUM   WITHIN GROUP  OUT OF GROUP
    1   3.95829E+00   1.00000E+00   1.15199E+00   5.05214E-01   7.39707E-02   1.24724E-01   1.45026E-08   1.07793E+00   9.15505E-05

 FLUX DISADVANTAGE FACTOR =   9.45191E-01


 CROSS SECTION OF MERGED/CONDENSED ISOTOPE '*MAC*RES0001':


 LCMLIB: CONTENT OF ACTIVE DIRECTORY '/           ' OF THE TABLE    'EDITION     ':

 BLOCK NAME----------    LENGTH    TYPE

    1  'SIGNATURE   '         3    CHARACTER       ='L_EDIT      '
    2  'TITLE       '        18    CHARACTER       
    3  'STATE-VECTOR'        40    INTEGER         
    4  'LAST-EDIT   '         3    CHARACTER       
    5  'REF-CASE0001'        -1    DIRECTORY       
    6  'REF:IMERGE  '         8    INTEGER         
    7  'REF:MATCOD  '         8    INTEGER         
    8  'REF:VOLUME  '         8    REAL            
    9  'REF:IGCOND  '         2    INTEGER         


 TOTAL NUMBER OF WORDS ON DIRECTORY '/           ' =        90

->@END MODULE   : EDI:        
-->>TIME SPENT IN MODULE EDI:        :      1.000
<|END: ;                                                                  |<0054


 NORMAL END OF EXECUTION FOR DRAGON 4  Version 4.0.6 ($Revision: 1666 $)               
 CHECK FOR WARNING IN LISTING
 BEFORE ASSUMING YOUR RUN WAS SUCCESSFUL
