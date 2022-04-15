# design_analysis_ex18.tcl
get_ports 
get_ports -filter "DIRECTION == IN"
get_ports -filter "DIRECTION == IN" Data*
get_ports -filter "IOSTANDARD == LVCMOS18"
set myport [get_ports RxActive_pad_1_i]
get_package_pins -of $myport
get_io_standards -of $myport
get_iobanks -of $myport
get_sites -of $myport


