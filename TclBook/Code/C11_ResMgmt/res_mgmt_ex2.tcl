# res_mgmt_ex2.tcl
set src_files [get_files -of [get_filesets sources_1]]
set verilog_files [get_files -of [get_filesets sources_1] *.v]
set sim_files [get_files -of [get_filesets sim_1]]
set ip_files [get_files -of [get_fileset sources_1] *.xci]
set hdl_files [get_files -of [get_filesets {sources_1 sim_1}]]
