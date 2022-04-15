# design_analysis_ex12.tcl
set all_fdce [get_cells -hier -filter "REF_NAME == FDCE"]
set cpuEngine_fdce1 [get_cells -hier \
    -filter "NAME =~ cpuEngine/* && REF_NAME == FDCE"]
set cpuEngine_fdce2 [filter $all_fdce "NAME =~ cpuEngine/*"]
