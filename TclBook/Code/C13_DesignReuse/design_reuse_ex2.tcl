# design_reuse_ex2.tcl
read_checkpoint -incremental -directive TimingClosure ./routed.dcp
opt_design
place_design
phys_opt_design
route_design

