# others_ex1.tcl
set_property BLOCK_SYNTH.RETIMING 1 [get_cells u1]
set_property BLOCK_SYNTH.STRATEGY {AREA_OPTIMIZED} [get_cells u2]
set_property BLOCK_SYNTH.STRATEGY {PERFORMANCE_OPTIMIZED} [get_cells u3]
set_property BLOCK_SYNTH.STRATEGY {DEFAULT} [get_cells u3/inst1]
set_property BLOCK_SYNTH.STRATEGY {ALTERNATE_ROUTABILITY} [get_cells u4]
