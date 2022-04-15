# list_ex41.tcl
set num {11 22 33 44}
set i 0
foreach {x y z} $num {
    puts "$i: x=$x, y=$y, z=$z"
    incr i
}
