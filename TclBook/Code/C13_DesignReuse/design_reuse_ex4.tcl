# design_reuse_ex4.tcl
set brams [get_cells -quiet -hierarchical -filter \
    { PRIMITIVE_TYPE =~ BLOCKRAM.BRAM.*}]
set dsps [get_cells -quiet -hierarchical -filter \
    { REF_NAME =~ "DSP48E*"}]
read_checkpoint -incremental ./routed.dcp \
    -reuse_objects $brams \
    -reuse_objects $dsps \
    -fix_objects [current_design]
