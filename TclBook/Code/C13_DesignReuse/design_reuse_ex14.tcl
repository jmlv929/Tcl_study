# design_reuse_ex14.tcl
set mylut [get_cells {lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/cnt[17]_i_1}]
set mypath  [get_timing_paths -through $mylut -delay_type max -nworst 2]
foreach i_mypath $mypath {
    set mynets  [get_nets -of $i_mypath]
    set mycells [get_cells -of $i_mypath]
    set_property IS_ROUTE_FIXED 1 [get_nets $mynets]
    set_property IS_LOC_FIXED 1 [get_cells $mycells]
    set_property IS_BEL_FIXED 1 [get_cells $mycells]
    set mypins  [get_pins -of $i_mypath -leaf -filter "DIRECTION==IN"]
    foreach i_mypins $mypins {
        set i_cell [get_cells -of $i_mypins]
        set i_cell_ref_name [get_property REF_NAME $i_cell]
        if {[regexp {LUT[1-6]} $i_cell_ref_name]} {
            set lut_pin [lindex [split $i_mypins /] end]
            set bel_full_pin [get_bel_pins -of $i_mypins]
            set bel_pin [lindex [split $bel_full_pin /] end]
            if {[info exists lut_array($i_cell)]} {
                if {[regexp "$lut_pin:$bel_pin" $lut_array($i_cell)]==0} {
                    set lut_array($i_cell) "$lut_array($i_cell) $lut_pin:$bel_pin"
                }
            } else {
                set lut_array($i_cell) "$lut_pin:$bel_pin"
            }
        }
    }
}
parray lut_array
foreach lut_name [array names lut_array] {
    puts "Creating LOC_PINS constraint $lut_array($lut_name) for LUT $lut_name."
    set_property LOCK_PINS "$lut_array($lut_name)" [get_cells $lut_name]
}
array unset lut_array
