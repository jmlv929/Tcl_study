# list_ex26.tcl
set x {28 30 20 26}
lsearch -exact -integer $x 28
set period {3.333 5 10 6.667 10}
lsearch -exact -real $period 10
lsearch -exact -real -inline -all $period 10
set x {Tom 28 Jerry 30}
lsearch -exact -integer $x 28
