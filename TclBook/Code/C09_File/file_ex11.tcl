# file_ex11.tcl
set fid [open readme.txt r]
set fdata [read $fid]
puts $fdata
close $fid
set data [split $fdata "\n"]
foreach line $data {
    puts $line
}

