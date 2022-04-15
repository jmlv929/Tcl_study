# design_analysis_ex10.tcl
set cpu_cell [get_cells -hier cpu_*]
show_objects $cpu_cell -name cpu_cell
set buffer_fifo [get_cells -hier buffer_fifo]
show_objects $buffer_fifo -name buffer_fifo
