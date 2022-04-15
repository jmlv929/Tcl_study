# file_ex7.tcl
file rename src source
file rename ./source/top.sv ./source/top_backup.sv
file rename ./source/uart.vhd ./tb/uart.vhd
glob ./source/*.vhd
glob ./tb/*.vhd
glob -nocomplain ./source/*.vhd


