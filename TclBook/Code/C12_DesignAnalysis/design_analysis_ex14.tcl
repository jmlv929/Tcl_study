# design_analysis_ex14.tcl
set cell_e1 [get_cells -hier \
    -regexp {usbEngine0/u4/u0/buf0_reg\[[0-4]\]}]
puts "#N: [llength $cell_e1]"
set cell_e2 [get_cells -hier \
    -regexp {usbEngine0/u4/u0/buf0_reg\[1[0-4]\]}]
puts "#N: [llength $cell_e2]"
set cell_e3 [get_cells -hier \
    -regexp {usbEngine0/u4/u0/buf0_reg\[([0-4]||1[0-4])\]}]
puts "#N: [llength $cell_e3]"
set cell_e4 {}
set N 5
for {set i 0} {$i<$N} {incr i} {
    lappend cell_e4 [get_cells usbEngine0/u4/u0/buf0_reg[$i]]
}
puts "#N: [llength $cell_e4]"
