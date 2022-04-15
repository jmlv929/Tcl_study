# design_analysis_ex16.tcl
set mypin [get_pins reset_reg_reg/D]
get_cells -of $mypin
get_nets -of $mypin
set mynet [get_nets reset_IBUF]
get_cells -of $mynet
join [get_pins -of $mynet] \n
get_pins -of $mynet -leaf
get_pins -of $mynet -filter "DIRECTION == OUT"

