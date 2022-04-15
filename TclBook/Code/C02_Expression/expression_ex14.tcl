# expression_ex14.tcl
for {set i 0} {$i < 4} {incr i} {
    puts "[expr {rand()}]"
}
