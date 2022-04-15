# res_mgmt_ex14.tcl
write_ip_tcl [get_ips char_fifo] -force ./char_fifo.tcl
write_ip_tcl -ip_name char_fifo1 [get_ips char_fifo] ./char_fifo1.tcl
write_ip_tcl [get_ips] -force
write_ip_tcl -multiple_files [get_ips] -force
