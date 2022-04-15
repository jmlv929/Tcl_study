# file_ex18.tcl
set title [list {Period(ns)} {Fmax(MHz)} {Clock Group}]
set value [list 3.33 300 tx_clk]
set fn mycsv.csv
set fid [open $fn w]
puts $fid [join $title ,]
puts $fid [join $value ,]
close $fid
