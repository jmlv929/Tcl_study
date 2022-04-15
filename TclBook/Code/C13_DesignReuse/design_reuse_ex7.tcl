# design_reuse_ex7.tcl
open_checkpoint pre_opt.dcp
read_qor_suggestions ./post_route.rqs
read_checkpoint -incremental -directive TimingClosure ./reference_routed.dcp
opt_design -directive Default
place_design
phys_opt_design
route_design
