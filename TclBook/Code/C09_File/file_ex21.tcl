# file_ex21.tcl
package require csv
package require struct::matrix

::struct::matrix data
set chan [open myfile.csv] 
csv::read2matrix $chan data  , auto 
close $chan

set rows [data rows]

for {set row 0} {$row < $rows} {incr row} {
    puts [data get row $row]
}
