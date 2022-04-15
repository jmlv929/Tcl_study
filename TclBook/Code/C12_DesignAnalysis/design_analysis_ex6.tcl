# design_analysis_ex6.tcl
get_slrs
#SLR0 SLR1
get_clock_regions -of [get_slrs SLR0]
#X0Y0 X1Y0 X2Y0 X3Y0 X4Y0 X5Y0 ...
get_slrs -of [get_clock_regions X0Y0]
#SLR0
get_tiles -of [get_slrs SLR0]
#GTY_L_TERM_T_X0Y299 NULL_X1Y310 NULL_X2Y310 ...
get_slrs -of [get_tiles CLEL_R_X0Y0]
#SLR0
get_sites -of [get_slrs SLR0]
#SLICE_X0Y299 SLICE_X1Y299 SLICE_X2Y299 ...
get_slrs -of [get_sites SLICE_X0Y0]
#SLR0
get_bels -of [get_slrs SLR0]
#SLICE_X0Y299/A5LUT SLICE_X0Y299/A6LUT ...
get_slrs -of [get_bels SLICE_X0Y0/DFF]
#SLR0
