# expression_ex5.tcl
for {set i 1} {$i < 16} {incr i 4} {
    puts "2^$i:\t [expr {2 ** $i}]"
}
