# others_ex5.tcl
open_checkpoint place.dcp

for {set iter 0} {$iter < 2} {incr iter} {
  phys_opt_design -directive AggressiveExplore
  report_timing_summary -file popt_AE${iter}.rpt

  phys_opt_design -directive AggressiveFanoutOpt
  report_timing_summary -file popt_AFO${iter}.rpt

  phys_opt_design -directive AlternateReplication
  report_timing_summary -file popt_AR${iter}.rpt
}

route_design -directive Explore
report_timing_summary -file routed_timing.rpt

