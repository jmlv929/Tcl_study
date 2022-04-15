# design_analysis_ex3.tcl
set all_dsp [get_sites DSP48E2*]
#DSP48E2_X0Y238 DSP48E2_X0Y239 ...
set all_ramb36 [get_sites RAMB36*]
#RAMB36_X0Y119 RAMB36_X1Y119 RAMB36_X2Y119 ...
set all_uram [get_sites URAM288*]
#URAM288_X0Y156 URAM288_X0Y157 URAM288_X0Y158
llength $all_dsp
llength $all_ramb36
llength $all_uram
