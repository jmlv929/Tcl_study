# proc_ex28.tcl
proc good_example {x y m} {
    upvar 1 $x myx
    upvar 1 $y myy
    upvar 1 $m mym
    if {$myx > $myy} { set mym 1 } else {set mym 0}
}
set a 2
set b 1
good_example a b k
puts $k
