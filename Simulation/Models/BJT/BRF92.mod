* Filename:  BFR92A_SPICE.PRM
* BFR92A SPICE MODEL
* PHILIPS SEMICONDUCTORS
* Date : September 1995
*
* PACKAGE : SOT23 DIE MODEL : BFR90A
* 1: COLLECTOR; 2: BASE; 3: EMITTER;
.SUBCKT BFR92A 1 2 3
Q1 6 5 7 7 BFR90A
* SOT23 parasitic model
               Lb  4 5 .4n
               Le  7 8 .83n
               L1  2 4 .35n
               L2  1 6 .17n
               L3  3 8 .35n
              Ccb  4 6 71f
              Cbe  4 8 2f
              Cce 6 8 71f
*
* PHILIPS SEMICONDUCTORS                                     Version:   1.0
* Filename:   BFR90A.PRM                                     Date: Feb 1992
*
.MODEL  BFR90A   NPN
+              IS = 4.11877E-016
+              BF = 1.02639E+002
+              NF = 9.97275E-001
+             VAF = 6.26719E+001
+             IKF = 3.20054E+000
+             ISE = 4.01062E-015
+              NE = 1.57708E+000
+              BR = 1.81086E+001
+              NR = 9.96202E-001
+             VAR = 3.36915E+000
+             IKR = 1.28155E+000
+             ISC = 2.79905E-016
+              NC = 1.07543E+000
+              RB = 1.00000E+001
+             IRB = 1.00000E-006
+             RBM = 1.00000E+001
+              RE = 1.16450E+000
+              RC = 2.32000E+000
+              EG = 1.11000E+000
+             XTI = 3.00000E+000
+             CJE = 8.90512E-013
+             VJE = 6.00000E-001
+             MJE = 2.58570E-001
+              TF = 1.54973E-011
+             XTF = 3.91402E+001
+             VTF = 2.15279E+000
+             ITF = 2.13776E-001
+             CJC = 5.46563E-013
+             VJC = 3.80824E-001
+             MJC = 2.02935E-001
.ENDS