# file_ex12.tcl
set fn readme.txt
set fsize [file size $fn]
set fid [open $fn r]
set fdata [read $fid $fsize]
close $fid
