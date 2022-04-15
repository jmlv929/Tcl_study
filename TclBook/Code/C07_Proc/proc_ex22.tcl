# proc_ex22.tcl
proc array_sum_v2 {array_list} {
    set sum 0
    foreach {key value} $array_list {
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
array_sum_v2 [array get x]
