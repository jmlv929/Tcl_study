# run_synth_v2.tcl
# Read sources (RTL IP & constraints)
set phase synth_design
set fn post_synth_${date}
# Run synthesis top module  
synth_design -top $top -part $part -directive $synDirective
# Gen dcp
run::gen_dcp $phase $SynOutputDir $fn
run::design_analysis $phase $SynOutputDir $fn

