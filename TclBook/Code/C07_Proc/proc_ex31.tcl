# proc_ex31.tcl
set a 11
set x a
puts "$x = [set $x]"
upvar 0 $x y
puts "$x = $y"
