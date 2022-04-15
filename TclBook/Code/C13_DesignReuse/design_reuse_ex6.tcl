# design_reuse_ex6.tcl
# Generate RQS suggestions from the reference DCP
open_checkpoint reference_routed.dcp
report_qor_suggestions -file post_route_rqs.rpt
write_qor_suggestions -force ./post_route.rqs


