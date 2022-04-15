# proc_ex21.tcl
proc array_sum_v1 {array_name} {
    upvar $array_name a
    set sum 0
    foreach {key value} [array get a] {
        set sum [expr {$sum + $value}]
    }
    return $sum
}
array set x {
    0 10
    1 20
    2 30
    3 40
}
array_sum_v1 x
