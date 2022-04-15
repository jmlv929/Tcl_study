# flow_ctrl_ex15.tcl
set a [list red yellow green black orange white]
set row 3
set col 2
for {set i 0} {$i < $row} {incr i} {
    for {set j 0} {$j < $col} {incr j} {
        set n [expr {$i * $col + $j}]
        set color($i.$j) [lindex $a $n]
    }
}
parray color
