# design_analysis_ex51.tcl
write_xdc -constraints VALID -exclude_physical \
    ./valid_timing_constraints.xdc
write_xdc -constraints INVALID -exclude_physical \
    ./invalid_timing_constraints.xdc
