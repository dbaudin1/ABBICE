* End of RELAY_SPDT_BHV_BOUNCE model
* Behavioral model of a relay. (No contact bounce)
.subckt RELAY_SPDT_BHV coila coilb no nc com
+ PARAMS:
+ T_make = 20mSec ; Time for contact to close when current is turned off/on
+ T_break= 10mSec ; Time for contact to open when current is turned off/on
+ I_pull = 35ma ; Pull-in current
+ I_drop = 25ma ; Drop-out current
+ R_coil = 100 ; Coil resistance
+ L_coil = 5mH ; Coil inductance

+ R_open = 100MEG ; open circuit contact resistance
+ R_close= .05 ; closed circuit contact resistance
* electrical model of coil
v_winding coila a1 0
r_winding a1 a2 {R_coil}
l_winding a2 coilb {L_coil}
* make a voltage from the current
e_cc cc 0 value = {limit(I(v_winding),-3*I_pull,3*I_pull)}
r_cc cc 0 1k
* use digital to create a switch with hysteresis
o_mag cc 0 relay_1 DGTLNET=d digio_1
* by using min/max delay we can use a single N-device to simulate both
* the no and nc contacts.
u_dly buf dpwr dgnd d cnt relay_2 digio_1 MNTYMXDLY=4
n_cnt com no nc relay_3 DGTLNET=cnt digio_1
.model relay_1 doutput (
+ s0name="0" s0vlo={-I_pull} s0vhi={I_pull}
+ s1name="1" s1vlo={I_drop} s1vhi={4*I_pull}
+ s2name="1" s2vlo={-4*I_pull} s2vhi={-I_drop}
+ timestep={T_make/1000}
+ )
.model relay_2 ugate (
+ tplhmn={T_break} tphlmn={T_break}
+ tplhmx={T_make} tphlmx={T_make}
+ )
.model relay_3 dinput (
+ s0name="0" s0tsw={T_make/1000} s0rlo={R_open} s0rhi={R_close}
+ s1name="1" s1tsw={T_make/1000} s1rlo={R_close} s1rhi={R_open}
+ s2name="R" s2tsw={T_make/1000} s2rlo={R_open} s2rhi={R_open}
+ s3name="F" s3tsw={T_make/1000} s3rlo={R_open} s3rhi={R_open}
+ s4name="X" s4tsw={T_make/1000} s4rlo={R_open} s4rhi={R_open} 
+ s5name="Z" s5tsw={T_make/1000} s5rlo={R_open} s5rhi={R_open}
+ )
.model digio_1 uio
.ends
* End of RELAY_SPDT_BHV model