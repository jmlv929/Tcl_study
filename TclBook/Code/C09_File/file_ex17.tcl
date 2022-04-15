# file_ex17.tcl
set fn test.txt
if {[file exists $fn]} {
    puts stderr "The file $fn has already existed"
    break
} else {
    set fid [open $fn w]
    set data "This is some test data"
    puts $fid $data
    close $fid
}
