# list_ex42.tcl
set num {11 22}
set i 0
foreach {x y z} $num {
    puts "$i: x=$x, y=$y, z=$z"
    incr i
}
