# list_ex28.tcl
set rate [list 100 50 350 300]
lsort -integer $rate
lsort -integer -decreasing $rate
set period [list 10 5 2.5 3.33]
lsort -real $period
lsort -real -decreasing $period
