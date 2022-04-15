# string_ex18.tcl
set p1 {*\?} 
string match $p1 why?
set p2 {*bus\[[0-4]\]}
set str {bus[3]}
string match $p2 $str

