# list_ex13.tcl
set num [list 11 22 33]
lassign $num x y
puts $x
puts $y
lassign $num x y z p
puts $x
puts $y
puts $z
puts [llength $p]
