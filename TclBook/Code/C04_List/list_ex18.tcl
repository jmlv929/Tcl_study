# list_ex18.tcl
set num [list 11 22 33 44]
lreplace $num 1 2 77 88
puts $num
lreplace $num 1 1 99
lreplace $num 1 3 77 88
lreplace $num 1 2 77 88 99