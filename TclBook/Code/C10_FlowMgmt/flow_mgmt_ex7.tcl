# flow_mgmt_ex7.tcl
set_property STEPS.POWER_OPT_DESIGN.IS_ENABLED true \
    [get_runs impl_1]
set_property STEPS.POST_PLACE_POWER_OPT_DESIGN.IS_ENABLED true \
    [get_runs impl_1]
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED true \
    [get_runs impl_1]
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.DIRECTIVE Explore \
    [get_runs impl_1]
set_property -name {STEPS.ROUTE_DESIGN.ARGS.MORE OPTIONS} \
    -value -tns_cleanup -objects [get_runs impl_1]
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true \
    [get_runs impl_1]
set_property report_strategy {Timing Closure Reports} \
    [get_runs impl_1]
