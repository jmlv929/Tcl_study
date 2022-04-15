# proc_ex20.tcl
proc sum_up {a b} {
    upvar $a m
    upvar $b n
    set s [expr {$m + $n}]
    return $s
}
set x 3
set y 4
sum_up x y
