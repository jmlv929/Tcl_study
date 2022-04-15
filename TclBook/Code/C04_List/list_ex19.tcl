# list_ex19.tcl
set num [list 11 22 33]
lset num 0 44
puts $num
lset num end 99
puts $num
lset num 1 55
puts $num
lset num 3 66
lset num end+1 66
