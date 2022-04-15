# others_ex12.tcl
set mynet [get_nets rst_gen_i0/rst_clk_rx]
::xilinx::designutils::insert_buffer -net $mynet
