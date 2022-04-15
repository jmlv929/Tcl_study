# proc_ex29.tcl
proc bad_example {m} {
    upvar 1 x myx
    upvar 1 y myy
    if {$myx > $myy} { return 1 } else {return 0}
}
set x 2
set y 1
bad_example k
puts $k
unset x
bad_example k

