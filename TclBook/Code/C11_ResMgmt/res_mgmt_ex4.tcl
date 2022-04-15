# res_mgmt_ex4.tcl
report_property -class file
report_property -all [get_selected_objects]
report_property \
[get_files C:/SDemo2019/Vivado/tcl_ctrl/wavegen_prj/Sources/hdl/wave_gen.v]
report_property [get_selected_objects] -regexp .*TYPE
report_property [get_selected_objects] -regexp USED_IN.*
get_selected_objects
C:/SDemo2019/Vivado/tcl_ctrl/wavegen_prj/Sources/hdl/wave_gen.v
