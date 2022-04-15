# proc_ex8.tcl
proc get_last_value {a b} {
    set x [expr {$a + $b}]
    set y [expr {$a - $b}]
}
get_last_value 1 2
