# res_mgmt_ex6.tcl
# Project mode
set_property file_type {VHDL 2008} [get_files C:/myuram.vhd]
set_property file_type SystemVerilog [get_files C:/mybram.v]
# Non-Project mode
read_verilog -sv ./mybram.v
read_vhdl -vhdl2008 ./myuram.vhd
