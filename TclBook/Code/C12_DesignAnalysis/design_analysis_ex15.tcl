# design_analysis_ex15.tcl
set mycell [get_cells reset_reg_reg] 
join [get_pins -of $mycell] \n
join [get_pins -of $mycell -filter "DIRECTION == OUT"] \n
join [get_pins -of $mycell -filter "REF_PIN_NAME == D"] \n
join [get_pins -of $mycell -filter "IS_ENABLE == 1"] \n
join [get_pins -of $mycell -filter "IS_CLOCK == 1"] \n
join [get_pins -of $mycell -filter "IS_CONNECTED == 1"] \n
join [get_nets -of $mycell] \n
join [get_nets -of $mycell -filter "TYPE == POWER"] \n
