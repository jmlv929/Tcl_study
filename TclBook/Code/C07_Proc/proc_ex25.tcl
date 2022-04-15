# proc_ex25.tcl
proc bottom {b} { 
    puts "Bottom: $b, level is [info level]"
}
proc top {a} {
    puts "Top: $a, level is [info level]"
    bottom b
}
puts "Outside procedure, level is [info level]"
top a
