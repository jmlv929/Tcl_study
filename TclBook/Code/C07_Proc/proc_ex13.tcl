# proc_ex13.tcl
proc inc_by {args} {
    if {[llength $args] < 1} {
        return -code error "Not enough args"
    }
    set inc [lindex $args 0]
    set res {}
    foreach i_args [lrange $args 1 end] {
        lappend res [expr {$i_args + $inc}]
    }
    return $res
}
inc_by 100 1 2 3 4
inc_by

