# list_ex9.tcl
set t {{a b} {c {d e f}} g}
llength $t
lindex $t 0
lindex $t 0 1
lindex $t 1 1 2
lindex $t {1 1 2}
lindex [lindex [lindex $t 1] 1] 2
