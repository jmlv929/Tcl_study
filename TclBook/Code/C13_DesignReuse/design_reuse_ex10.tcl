# design_reuse_ex10.tcl
set max 4
set path [get_timing_paths -setup -max $max -nworst 1 -unique_pins]
set fn ff_loc.xdc
set fid [open $fn w]
foreach i_path $path {
    set ff [get_cells -of $i_path -filter "REF_NAME =~ FD*E" -quiet]
    if {[llength $ff]==0} {
        continue
    } else {
        set bel [get_property BEL $ff]
        set loc [get_property LOC $ff]
    }
    foreach i_ff $ff i_bel $bel i_loc $loc {
        puts $fid "set_property BEL $i_bel \[get_cells $i_ff\]"
        puts $fid "set_property LOC $i_loc \[get_cells $i_ff\]"
    }
}
close $fid
