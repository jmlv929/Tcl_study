# others_ex10.tcl
set fanout [all_fanout [all_inputs] -endpoints_only -flat -only_cells]
set ireg [filter $fanout "REF_NAME =~ FD*E"]
set_property IOB TRUE [get_cells $ireg]
set fanin [all_fanin [all_outputs] -startpoints_only -flat -only_cells]
set oreg [filter $fanin "REF_NAME =~ FD*E"]
set_property IOB TRUE [get_cells $oreg]
set_property IOB true [get_cells AA_reg]
