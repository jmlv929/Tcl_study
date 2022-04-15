# design_analysis_ex38.tcl
report_utilization -name util -file util.rpt
report_utilization -cells [get_cells cpuEngine] \
    -file cpuEngine_util.rpt
foreach x [get_pblocks] {
    puts "Reporting Pblock: $x ----------------------------------"
    report_utilization -append -file C:/Data/pblocks_util.txt -pblocks $x  
} 
    
