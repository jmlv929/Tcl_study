# proc_ex1.tcl
proc get_max {num1 num2} {
    if {$num1 > $num2} {
        set res $num1
    } else {
        set res $num2
    }
    return $res
}

get_max 6 4
get_max -6 4
get_max 4
