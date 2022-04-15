# others_ex6.tcl
open_checkpoint place.dcp

### Set User Clock Uncertainty of 200ps
set_clock_uncertainty -setup 0.200 [get_clocks clk300]

for {set iter 0} {$iter < 2} {incr iter} {
  phys_opt_design -directive AggressiveExplore
  phys_opt_design -directive AggressiveFanoutOpt
  phys_opt_design -directive AlternateReplication
}

### Reset User Clock Uncertainty ###
set_clock_uncertainty -setup 0.000 [get_clocks clk300]
report_timing_summary -file physopt_timing.rpt

route_design -directive Explore
report_timing_summary -file routed_timing.rpt

