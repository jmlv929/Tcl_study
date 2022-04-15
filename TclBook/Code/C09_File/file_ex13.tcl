# file_ex13.tcl
set fn readme.txt
set fid [open $fn r]
while {[gets $fid line] >= 0} {
    puts $line
}
close $fid
