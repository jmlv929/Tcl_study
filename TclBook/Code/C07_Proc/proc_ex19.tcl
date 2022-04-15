# proc_ex19.tcl
proc sum {a b} {
    set s [expr {$a + $b}]
    return $s
}
set x 3
set y 4
sum $x $y
