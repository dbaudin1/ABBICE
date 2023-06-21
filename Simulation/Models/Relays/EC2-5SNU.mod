* 1: Coila
* 2: Coilb
* 3: COM
* 4: NC
* 5: NO
.subckt DPST 1 2 3 4 5
S1 3 4 n001 2 SW_NC
S2 3 5 n001 2 SW_NO
R2 1 n001 250
L1 1 n001 5m
.model SW_NC SW(Ron=1000G Roff=75m Vt=3.75 Vh=0)
.model SW_NO SW(Ron=75m Roff=1000G Vt=3.75 Vh=0)
.ends DPST