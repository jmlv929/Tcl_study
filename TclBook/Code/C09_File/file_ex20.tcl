# file_ex20.tcl
package require csv
set fn mycsv.csv
set fid [open $fn r]
while {[gets $fid line] >= 0} {
    puts [csv::split $line]
}
close $fid

