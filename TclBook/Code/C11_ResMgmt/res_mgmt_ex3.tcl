# res_mgmt_ex3.tcl
get_files -compile_order sources -used_in synthesis \
    -of [get_filesets sources_1]
get_files -compile_order sources -used_in synthesis \
    -of [get_files -of [get_filesets sources_1] *.xci]
get_files -compile_order sources -used_in simulation \
    -of [get_filesets sources_1]
