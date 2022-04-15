# flow_mgmt_ex3.tcl
set steps [list opt place phys_opt route]
set run [get_runs impl_1]
array set directive {}
foreach s $steps {
    puts "${s}_design Directives:"
    set drtv [list_property_value STEPS.${s}_DESIGN.ARGS.DIRECTIVE $run]
    set directive($s) $drtv
    set drtv [regsub -all {\s} $drtv \n]
    puts "$drtv\n"
}
