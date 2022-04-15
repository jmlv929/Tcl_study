# proc_ex3.tcl
proc c2f {c} {
    return [expr {$c * 9.0 / 5.0 + 32}]
}

puts [c2f 0]
puts [c2f 37]
puts [c2f 100]
