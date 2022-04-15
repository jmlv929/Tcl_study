# others_ex11.tcl
set mycell [get_cells u_pr_top/tx_reg]
set myrpin [get_pins -of $mycell -filter "REF_PIN_NAME==R"]
set myrnet [get_nets -of $myrpin]
set_property DONT_TOUCH FALSE $myrnet
disconnect_net -objects $myrpin
puts "$myrpin"
puts "This pin is successfully disconnected"
set_property DONT_TOUCH TRUE $myrnet
puts "$myrnet is successfully recovered"
set mycepin [get_pins -of $mycell -filter "REF_PIN_NAME==CE"]
set mycenet [get_nets -of $mycepin]
set_property DONT_TOUCH FALSE $mycenet
connect_net -hier -net $mycenet -objects $myrpin

