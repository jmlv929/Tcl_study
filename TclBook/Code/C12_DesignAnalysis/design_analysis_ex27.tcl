# design_analysis_ex27.tcl
set grp [get_path_group usbClk]
set paths [get_timing_paths -group $grp -max_paths 100]  
report_timing -of_objects $paths -name timing_1 
report_timing -group $grp -max_paths 100 -name timing_2
