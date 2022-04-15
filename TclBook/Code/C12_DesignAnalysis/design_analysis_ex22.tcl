# design_analysis_ex22.tcl
report_clocks
report_clock_networks -name network_1
report_clock_utilization -name clkutil
report_clock_utilization -clock_roots_only -name clkutil_1

