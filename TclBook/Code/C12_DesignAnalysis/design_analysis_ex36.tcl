# design_analysis_ex36.tcl
report_qor_suggestions -name qor_suggestions -max_paths 100
cd [get_property DIRECTORY [current_project]]
set dir_name ML_STRAT
file mkdir ./$dir_name
cd ./$dir_name
write_qor_suggestions -strategy_dir ./
