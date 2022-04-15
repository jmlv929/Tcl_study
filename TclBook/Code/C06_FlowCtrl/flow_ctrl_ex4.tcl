# flow_ctrl_ex4.tcl
set n 0
if {$n == 0} {
    set str zero
} elseif {$n == 1} {
    set str one
} elseif {$n == 2} {
    set str two
} else {
    set str hello
}
puts $str
