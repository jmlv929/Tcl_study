# others_ex3.tcl
set_property BLOCK_SYNTH.RETIMING 1 [get_cells middle]
set_property BLOCK_SYNTH.STRATEGY {AREA_OPTIMIZED} [get_cells middle]
set_property BLOCK_SYNTH.RETIMING 0 [get_cells middle/bottom]

