# proc_ex6.tcl
proc mypower {a {b 2}} {
    if {$b == 2} {
        return [expr $a * $a]
    }
    set value 1
    for {set i 0} {$i < $b} {incr i} {
        set value [expr $value * $a]
    }
    return $value
}
puts [mypower 4]
puts [mypower 4 3]

