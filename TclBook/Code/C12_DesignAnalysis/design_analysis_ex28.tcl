# design_analysis_ex28.tcl
set tp1 [get_timing_paths -group usbClk \
    -filter "DELAY_TYPE == max && LOGIC_LEVELS > 3"]
set tp2 [get_timing_paths -group usbClk \
    -filter "DELAY_TYPE == max && MAX_FANOUT > 50"]
set tp3 [get_timing_paths -group usbClk \
    -filter "DELAY_TYPE == max && SLACK < 0"]
set tp4 [get_timing_paths -group usbClk \
    -filter "DELAY_TYPE == max && SKEW < -0.1 || SKEW > 0.1"]
set tp5 [get_timing_paths -group usbClk \
    -filter "DELAY_TYPE == max && UNCERTAINTY > 0.1"]


