# others_ex13.tcl
set mynet [get_nets rst_gen_i0/rst_clk_rx]
set_property CLOCK_BUFFER_TYPE BUFG $mynet
