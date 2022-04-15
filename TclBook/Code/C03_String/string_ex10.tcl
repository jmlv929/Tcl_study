# string_ex10.tcl
set str "Hello Tcl"
string length $str
set str1 [string replace $str 0 4 Great]
string length $str1
set str2 [string replace $str 0 4 My]
string length $str2
set str3 [string replace $str 0 4 "I Like"]
string length $str3
set str4 [string replace $str 0 4 "You Like"]
string length $str4
set str5 [string replace $str 0 0 "You Like"]
string length $str5

