# string_ex7.tcl
set str "Hello Tcl"
string range $str 0 4
string range $str end-2 end
string range $str 0 0
string length [string range $str 4 0]

