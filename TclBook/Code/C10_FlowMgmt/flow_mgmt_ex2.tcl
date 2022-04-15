# flow_mgmt_ex2.tcl
set run [get_runs synth_1]
join [list_property_value STEPS.SYNTH_DESIGN.ARGS.DIRECTIVE $run] \n
