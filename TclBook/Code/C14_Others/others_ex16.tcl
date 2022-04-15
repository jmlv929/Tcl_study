# others_ex16.tcl
set fn "init.tcl"
set fid [open $fn w]
set new_bram [get_cells -hier -filter "REF_NAME==RAMB18E2"]
set old_bram {sp_1kx16/WIDE_PRIM18.ram}
set x [list_property $new_bram]
set xinit [lsearch -glob -all -inline $x {INIT*}]

foreach i_xinit $xinit {
    set val [get_property $i_xinit $new_bram]
    if {[llength $val]} {
        puts $fid "set_property -name $i_xinit -value $val \
            -objects \[get_cells $old_bram\]"
    }
}
close $fid

