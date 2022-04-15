# design_analysis_ex21.tcl
set x1 [get_cells -hier -filter "NAME =~fftEngine/* && REF_NAME == FDCE"]
#fftEngine/control_reg_reg[17] fftEngine/control_reg_reg[19] ...
set x2 [get_cells -hier -regexp fftEngine/.* -filter "REF_NAME == FDCE"]
#fftEngine/control_reg_reg[17] fftEngine/control_reg_reg[19] ...
llength $x1
#1146
llength $x2
#1146
