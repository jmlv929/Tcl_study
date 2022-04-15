# list_ex12.tcl
set num [list 11 22 33]
lassign $num x y z
puts $x
puts $y
puts $z
set x [lindex $num 0]
set y [lindex $num 1]
set z [lindex $num 2]

