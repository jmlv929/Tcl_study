# design_analysis_ex34.tcl
report_qor_suggestions -name qor_suggestions -max_paths 100
write_qor_suggestions -of_objects [get_qor_suggestions \
    {RQS_TIMING-33-1 RQS_TIMING-44-1 RQS_TIMING-27-1 RQS_XDC-1-1 RQS_CLOCK-9-1 }] \
    C:/SDemo2019/project_2/rqs_report.rqs -force
get_property COMMAND [get_qor_suggestions RQS_TIMING-27-1]
set_property BLOCK_SYNTH.RETIMING 1 [get_cells { {clk300_to_clk600_ffs_i} }]
import_files -fileset utils_1 C:/SDemo2019/Lab2/project_2/rqs_report.rqs
set_property RQS_FILES \
    {C:/SDemo2019/project_2/project_2.srcs/utils_1/imports/project_2/rqs_report.rqs} \
    [get_runs synth_2]
set_property RQS_FILES \
    {C:/SDemo2019/project_2/project_2.srcs/utils_1/imports/project_2/rqs_report.rqs} \
    [get_runs impl_2]
