# file_ex19.tcl
set fn mycsv.csv
set fid [open $fn r]
while {[gets $fid line] >= 0} {
    puts $line
    puts [split $line ,]
}
close $fid

