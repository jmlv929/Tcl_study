# res_mgmt_ex13.tcl
report_ip_status -name ip_status
upgrade_ip [get_ips char_fifo]
upgrade_ip [get_ips]
