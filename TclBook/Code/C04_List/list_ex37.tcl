# list_ex37.tcl
set num [list 1 2 3 4]
set reverse_num {}
foreach i_num $num {
    set reverse_num [linsert $reverse_num 0 $i_num]
}
puts $reverse_num
