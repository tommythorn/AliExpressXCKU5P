
o
Command: %s
1870*	planAhead2:
&open_checkpoint ddr4_rw_top_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.042 . Memory (MB): peak = 1136.930 ; gain = 0.0002default:defaulth px� 
Y
Loading part %s157*device2&
xcku5p-ffvb676-1-e2default:defaultZ21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.6082default:default2
1556.1332default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3772default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2020.22default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2
DRIVE2default:default2R
<u_ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/cal_RESET_n[0]2default:default2
DRIVE2default:default8Z18-550h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2
SLEW2default:default2R
<u_ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/cal_RESET_n[0]2default:default2
SLEW2default:default8Z18-550h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2N
8u_ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/sys_clk_in2default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:022default:default2
00:00:022default:default2
2409.2072default:default2
9.8362default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
2.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:022default:default2
00:00:022default:default2
2409.2072default:default2
9.8362default:defaultZ17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
G:/xilinx/Vivado/2020.2/data/ip2default:defaultZ19-2313h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
2462.5902default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 128 instances were transformed.
  DSP48E1 => DSP48E2 (DSP_ALU, DSP_A_B_DATA, DSP_C_DATA, DSP_MULTIPLIER, DSP_M_DATA, DSP_OUTPUT, DSP_PREADD, DSP_PREADD_DATA): 3 instances
  IBUFDS => IBUFDS (DIFFINBUF, IBUFCTRL): 1 instance 
  IOBUFDS => IOBUFDS (DIFFINBUF, IBUFCTRL, INV, OBUFT(x2)): 2 instances
  IOBUFE3 => IOBUFE3 (IBUFCTRL, INBUF, OBUFT_DCIEN): 18 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 31 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUF(x2)): 1 instance 
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 68 instances
  RAM32M16 => RAM32M16 (RAMD32(x14), RAMS32(x2)): 4 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2020.2 (64-bit)2default:default2
30647662default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:322default:default2
00:00:392default:default2
2466.5982default:default2
1329.6682default:defaultZ17-268h px� 
k
Command: %s
53*	vivadotcl2:
&write_bitstream -force ddr4_rw_top.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xcku5p2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xcku5p2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
aNo routable loads: 123 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2�
 "�
7u_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_riu/LMB_CE_riu7u_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_riu/LMB_CE_riu2default:default"�
7u_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_riu/LMB_UE_riu7u_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_riu/LMB_UE_riu2default:default"�
Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[12]Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[12]2default:default"�
Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[13]Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[13]2default:default"�
Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[14]Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[14]2default:default"�
Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[15]Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_xsdb_arbiter/Q[15]2default:default"�
Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_fixdly_rdy_upp/SYNC[0].sync_reg[1]Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_fixdly_rdy_upp/SYNC[0].sync_reg[1]2default:default"�
Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_low/SYNC[0].sync_reg[1]Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_low/SYNC[0].sync_reg[1]2default:default"�
Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_fixdly_rdy_low/SYNC[0].sync_reg[1]Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_fixdly_rdy_low/SYNC[0].sync_reg[1]2default:default"�
Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_upp/SYNC[0].sync_reg[1]Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_upp/SYNC[0].sync_reg[1]2default:default"�
Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_fixdly_rdy_low/SYNC[1].sync_reg[1]Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_fixdly_rdy_low/SYNC[1].sync_reg[1]2default:default"�
Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_low/SYNC[1].sync_reg[1]Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_low/SYNC[1].sync_reg[1]2default:default"�
Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_fixdly_rdy_upp/SYNC[1].sync_reg[1]Ku_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_fixdly_rdy_upp/SYNC[1].sync_reg[1]2default:default"�
Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_upp/SYNC[1].sync_reg[1]Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_upp/SYNC[1].sync_reg[1]2default:default"�
Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_low/SYNC[2].sync_reg[1]Hu_ddr4_0/inst/u_ddr4_mem_intfc/u_phy2clb_phy_rdy_low/SYNC[2].sync_reg[1]2default:..."0
(the first 15 of 121 listed)2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px� 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 1 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
b
Writing bitstream %s...
11*	bitstream2%
./ddr4_rw_top.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:432default:default2
00:00:402default:default2
2927.6802default:default2
461.0822default:defaultZ17-268h px� 


End Record