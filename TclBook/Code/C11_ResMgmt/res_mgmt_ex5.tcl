# res_mgmt_ex5.tcl
set f \
[get_files C:/SDemo2019/Vivado/tcl_ctrl/wavegen_prj/Sources/hdl/wave_gen.v]
foreach i_property [list_property $f] {
    puts "$i_property :\t [get_property $i_property $f]"
}
