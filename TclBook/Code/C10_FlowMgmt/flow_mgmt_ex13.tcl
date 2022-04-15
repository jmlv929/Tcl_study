# flow_mgmt_ex13.tcl
set start_time [clock format [clock seconds] -format "%s"]
opt_design > ./check_opt.log
set end_time [clock format [clock seconds] -format "%s"]
set opt_elapse [clock format [expr $end_time - $start_time] \
    -format "%H:%M:%S" -gmt true]

set start_time [clock format [clock seconds] -format "%s"]
place_design > ./check_place.log
set end_time [clock format [clock seconds] -format "%s"]
set place_elapse [clock format [expr $end_time - $start_time] \
    -format "%H:%M:%S" -gmt true]


