# design_analysis_ex29.tcl
set tp1 [get_timing_paths -group usbClk \
    
    -filter "DELAY_TYPE == max && LOGIC_LEVELS > 3"]
get_cells -of $tp1
get_pins -of $tp1
get_nets -of $tp1
