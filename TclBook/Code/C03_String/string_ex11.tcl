# string_ex11.tcl
set str1 grey
set str2 green
string compare $str1 $str2
string compare $str2 $str1
string compare Green green
string compare -nocase Green green
string compare -length 3 $str1 $str2

