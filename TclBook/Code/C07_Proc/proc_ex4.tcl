# proc_ex4.tcl
proc get_max {num1 num2} {
    if {$num1 > $num2} {
        return $num1
    } else {
        return $num2
    }
}

get_max 6 4
get_max -6 4
get_max 4
