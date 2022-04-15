# flow_mgmt_ex9.tcl
set step $ACTIVE_STEP
report_timing_summary -file timing_summary_${step}.rpt
if {$step == {route_design}} {
    report_route_status -file route_status.rpt
}
