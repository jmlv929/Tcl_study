# string_ex14.tcl
set str1 grey
set str2 green
time {expr {$str1 == $str2}} 1000
time {expr {$str1 eq $str2}} 1000
time {string equal $str1 $str2} 1000
