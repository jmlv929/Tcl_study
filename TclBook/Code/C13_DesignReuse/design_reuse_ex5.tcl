# design_reuse_ex5.tcl
set dsps [get_cells -quiet -hierarchical -filter \
    { REF_NAME =~ "DSP48E*"}]
read_checkpoint -incremental ./routed.dcp \
    -reuse_objects [get_cells cpuEngine] \
    -fix_objects $dsps
