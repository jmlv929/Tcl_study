# file_ex23.tcl
package require csv
# Make the lists to convert to csv-format
set title [list {Period(ns)} {Fmax(MHz)} {Clock Group}]
set value [list 3.33 300 tx_clk]
set fn mycsv.csv
# Write the data to a file
set fid [open $fn w]
puts $fid [csv::join $title]
puts $fid [csv::join $value]
close $fid
