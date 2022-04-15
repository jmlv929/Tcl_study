# others_ex2.tcl
set_property BLOCK_SYNTH.STRATEGY {ALTERNATE_ROUTABILITY} [get_cells mod_inst]
set_property BLOCK_SYNTH.KEEP_EQUIVALENT_REGISTER 1 [get_cells mod_inst]
set_property BLOCK_SYNTH.FSM_EXTRACTION {OFF} [get_cells mod_inst]
