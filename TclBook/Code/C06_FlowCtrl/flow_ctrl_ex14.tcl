# flow_ctrl_ex14.tcl
set old {this is a Tcl book}
set new {}
for {set i [expr {[llength $old] - 1}]} {$i >= 0} {incr i -1} {
    lappend new [lindex $old $i]
}
puts $new
