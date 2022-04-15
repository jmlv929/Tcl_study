# proc_ex5.tcl
proc sum_int {args} {
    set s 0
    foreach i_args $args {
        incr s $i_args
    }
    return $s
}
puts [sum_int 1]
puts [sum_int 1 2]
puts [sum_int 1 2 3]
puts [sum_int 1 2 3 4]

