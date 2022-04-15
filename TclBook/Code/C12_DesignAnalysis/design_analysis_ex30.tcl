# design_analysis_ex30.tcl
proc custom_report {tp fn} {
    set fid [open $fn w]
    set title {Startpoint Endpoint LaunchClock CaptureClock \
        LOGIC_LEVELS MAX_FANOUT Slack}
    puts $fid [join $title ,]
    set property {}
    foreach i_tp $tp {
        lappend property [get_property STARTPOINT_PIN $i_tp]
        lappend property [get_property ENDPOINT_PIN $i_tp]
        lappend property [get_property STARTPOINT_CLOCK $i_tp]
        lappend property [get_property ENDPOINT_CLOCK $i_tp]
        lappend property [get_property LOGIC_LEVELS $i_tp]
        lappend property [get_property MAX_FANOUT $i_tp]
        lappend property [get_property SLACK $i_tp]
        puts $fid [join $property ,]
        unset property
    }
    close $fid
}
set tp [get_timing_paths -group usbClk -max 10 \
    -filter "DELAY_TYPE == max && LOGIC_LEVELS > 2"]
custom_report $tp tp.csv
