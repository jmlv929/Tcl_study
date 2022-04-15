# string_ex26.tcl
for {set i 97} {$i < 101} {incr i} {
    puts [format "%4d %#6x %#6o %2c" $i $i $i $i]
}
