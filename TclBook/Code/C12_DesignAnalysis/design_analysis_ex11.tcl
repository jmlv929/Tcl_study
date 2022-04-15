# design_analysis_ex11.tcl
set buffer_fifo [get_cells -hier -filter "NAME =~ cpuEngine/*" buffer_fifo]
join $buffer_fifo \n
