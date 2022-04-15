# design_analysis_ex40.tcl
report_design_analysis -logic_level_distribution -logic_level_dist_paths 100 \
    -name LogicLevelA
report_design_analysis -logic_level_distribution -logic_level_dist_paths 100 \
    -min_level 10 -max_level 20 -end_point_clocks cpuClk -name LogicLevelB
report_design_analysis -logic_level_distribution -logic_level_dist_paths 100 \
    -cells [get_cells usbEngine0]  -name usbEngine0_LogicLevel
report_design_analysis -logic_level_distribution -logic_level_dist_paths 100 \
    -cells [get_cells usbEngine0]  -name usbEngine0_LogicLevel \
    -file usbEngine0_LogicLevel.rpt
