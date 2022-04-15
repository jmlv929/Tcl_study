# design_analysis_ex7.tcl
current_instance
get_cells 
#A B
get_cells A/a1
#A/a1
get_cells {B/b1 B/b2}
#B/b1 B/b2
get_pins A/a1/D
#A/a1/D
current_instance B
#B
get_cells 
#B/b1 B/b2
get_nets
#B/b1/net1

