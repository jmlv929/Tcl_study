# proc_ex9.tcl
proc get_last_value {a b} {
    set x [expr {$a + $b}]
    set y [expr {$a - $b}]
    puts "x is $x"
}
get_last_value 1 2
