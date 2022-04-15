# proc_ex12.tcl
proc circle_property {r} {
    set pi 3.1415
    set length [expr {2 * $pi * $r}]
    set area [expr {$pi * $r ** 2}]
    return [list $length $area]
}
circle_property 8
