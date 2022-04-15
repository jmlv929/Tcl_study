# others_ex4.tcl
open_checkpoint place.dcp

phys_opt_design –force_replication_on_nets $my_hifan_nets
report_timing_summary -file popt1.rpt

phys_opt_design -directive AggressiveExplore
report_timing_summary -file popt2.rpt

route_design -directive Explore
report_timing_summary -file routed_timing.rpt

