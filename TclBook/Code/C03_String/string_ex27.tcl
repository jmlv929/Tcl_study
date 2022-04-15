# string_ex27.tcl
for {set i 5} {$i < 10} {incr i 2} {
    puts [format "%2d %10.4f" $i [expr exp($i)]]
}
