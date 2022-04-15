# file_ex22.tcl
package require csv
package require struct::queue

::struct::queue fdata
set chan [open myfile.csv] 
csv::read2queue $chan fdata
close $chan

while {[fdata size] > 0} {
    puts [fdata get]
}
