# design_analysis_ex23.tcl
report_timing_summary -delay_type min_max -max_paths 100 \
    -nworst 1 -name timing_1 
report_timing_summary -setup -max_paths 100 \
    -nworst 1 -routable_nets -name timing_2 
