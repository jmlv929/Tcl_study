# flow_mgmt_ex8.tcl
set_property STEPS.SYNTH_DESIGN.TCL.PRE \
    [ get_files C:/report.tcl -of [get_fileset utils_1] ] [get_runs synth_1]
set_property STEPS.OPT_DESIGN.TCL.POST \
    [ get_files C:/report.tcl -of [get_fileset utils_1] ] [get_runs impl_1]
