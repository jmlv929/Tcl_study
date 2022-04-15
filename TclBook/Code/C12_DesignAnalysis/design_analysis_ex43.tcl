# design_analysis_ex43.tcl
report_high_fanout_nets -name high_fanout_nets
report_high_fanout_nets -load_types -name high_fanout_nets1
report_high_fanout_nets -clock_regions -name high_fanout_nets2
report_high_fanout_nets -fanout_greater_than 1000 \
    -fanout_lesser_than 2000 -name high_fanout_nets3
report_high_fanout_nets -cells cpuEngine -max_nets 4 \
    -name high_fanout_nets4
report_high_fanout_nets -cells cpuEngine -max_nets 4 \
    -timing -name high_fanout_nets5
