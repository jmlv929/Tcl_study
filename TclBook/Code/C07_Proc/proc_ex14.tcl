# proc_ex14.tcl
proc opt_inc_by {inc args} {
    set res {}
    foreach i_args $args {
        lappend res [expr {$i_args + $inc}]
    }
    return $res
}
opt_inc_by 100 1 2 3 4
