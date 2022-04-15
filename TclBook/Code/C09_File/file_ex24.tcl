# file_ex24.tcl
package require csv
# Make the lists to convert to csv-format
set title [list {Period(ns)} {Fmax(MHz)} {Clock Group}]
set value [list 3.33 300 tx_clk]
set fn mycsv.csv
# Write the data to a file
set fid [open $fn w]
set fdata [list $title $value]
puts $fid [csv::joinlist $fdata]
close $fid
