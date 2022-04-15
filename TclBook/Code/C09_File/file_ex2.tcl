# file_ex2.tcl
set dir1 C:\data\tcl
set dir2 C:/data/tcl
set f    C:/data/tcl/mem.tcl
file split $dir2
file split $f
file join C:/data tcl mem.tcl
