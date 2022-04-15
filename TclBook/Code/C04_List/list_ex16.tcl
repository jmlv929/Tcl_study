# list_ex16.tcl
set num [list 11 22 33]
linsert $num 0 44
puts $num
linsert $num 1 55
linsert $num end 66
linsert $num 1 77 88
linsert $num 9 99 aa
linsert $num end-3 99
linsert $num -1 99

