# file_ex15.tcl
set fn readme.txt
set fid [open $fn r]
while {[eof $fid]!=1} {
    puts [gets $fid]
}
close $fid
