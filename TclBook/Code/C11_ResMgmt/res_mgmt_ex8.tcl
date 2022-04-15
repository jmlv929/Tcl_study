# res_mgmt_ex8.tcl
get_files -of [get_filesets constrs_1]
get_files -compile_order constraints -used_in implementation
report_compile_order -constraints -used_in implementation

