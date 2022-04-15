# file_ex16.tcl
set fn test.txt
set fid [open $fn w]
set data "This is some test data"
puts $fid $data
close $fid
