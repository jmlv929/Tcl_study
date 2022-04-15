# others_ex7.tcl
set_clock_uncertainty -setup 0.1 [get_clocks clk625]
place_design
phys_opt_design
set_clock_uncertainty -setup 0 [get_clocks clk625]
route_design
