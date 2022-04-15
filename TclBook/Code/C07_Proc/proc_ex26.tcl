# proc_ex26.tcl
proc bottom {x} {
    upvar 2 m mym
    upvar 1 k myk
    puts "$mym $myk"
}
proc top {y} {
    upvar 1 n myn
    set k 11
    bottom x
}
set m 22
set n 00
top y
