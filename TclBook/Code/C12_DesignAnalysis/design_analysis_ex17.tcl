# design_analysis_ex17.tcl
set mypin [get_pins {cpuEngine/iwb_biu/AR[0]}]
set n1 [get_nets -of $mypin]
set n2 [get_nets -of $mypin -segments]
set n3 [get_nets -of $mypin -segments -top]
set n4 [get_nets -of $mypin -boundary_type upper]
set n5 [get_nets -of $mypin -boundary_type lower]
set n6 [get_nets -of $mypin -boundary_type both]
