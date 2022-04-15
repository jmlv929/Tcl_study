# file_ex14.tcl
set fn readme.txt
set fid [open $fn r]
while {[eof $fid]!=1} {
    gets $fid line
    puts $line
}
close $fid
