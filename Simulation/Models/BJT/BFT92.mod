* Filename:  BFT92_SPICE.PRM
* BFT92 SPICE MODEL
* PHILIPS SEMICONDUCTORS
* Date : September 1995
*
* PACKAGE : SOT23 DIE MODEL : BFT92
* 1: COLLECTOR; 2: BASE; 3: EMITTER;
.SUBCKT BFT92 1 2 3
Q1 6 5 7 7 BFT92
* SOT23 parasitic model
               Lb  4 5 .4n 
               Le  7 8 .83n
               L1  2 4 .35n
               L2  1 6 .17n
               L3  3 8 .35n
              Ccb  4 6 71f
              Cbe  4 8 2f
              Cce  6 8 71f
* PHILIPS SEMICONDUCTORS                                       Version:    2.0
* Filename:    BFT92.PRM                                       Date: July 1992
*
.MODEL  BFT92   PNP
+              IS = 4.37563E-016
+              BF = 3.35815E+001
+              NF = 1.00972E+000
+             VAF = 2.33946E+001
+             IKF = 9.95381E-002
+             ISE = 8.70539E-014
+              NE = 1.94395E+000
+              BR = 4.94721E+000
+              NR = 1.00254E+000
+             VAR = 3.90385E+000
+             IKR = 5.28157E-003
+             ISC = 3.58864E-014
+              NC = 1.39333E+000
+              RB = 5.00000E+000
+             IRB = 1.00000E-006
+             RBM = 5.00000E+000
+              RE = 1.00000E+000
+              RC = 1.00000E+001
+              EG = 1.11000E+000
+             XTI = 3.00000E+000
+             CJE = 7.46659E-013
+             VJE = 6.00000E-001
+             MJE = 3.56829E-001
+              TF = 1.74921E-011
+             XTF = 1.35455E+000
+             VTF = 1.55654E-001
+             ITF = 1.00000E-003
+             PTF = 4.50000E+001
+             CJC = 9.37103E-013
+             VJC = 3.96455E-001
+             MJC = 1.99949E-001
.ENDS