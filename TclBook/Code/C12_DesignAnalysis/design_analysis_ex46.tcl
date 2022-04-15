# design_analysis_ex46.tcl
set myff [get_cells -hier -filter "REF_NAME == FDCE"]
show_objects $myff -name AsynRstFF
set mydsp1 [get_cells -hier -filter "REF_NAME =~ DSP48E* && MREG == 0"]
show_objects $mydsp1 -name DSP48_mreg_violation
set mydsp2 [get_cells -hier -filter "REF_NAME =~ DSP48E* && PREG == 0"]
show_objects $mydsp2 -name DSP48_preg_violation
