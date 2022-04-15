# list_ex36.tcl
set num [list 1 2 3 4]
foreach i_num $num {
    lappend even [expr {2 * $i_num}]
}
puts $even
