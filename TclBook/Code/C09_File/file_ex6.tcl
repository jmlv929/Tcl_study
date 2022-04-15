# file_ex6.tcl
file copy ./src/top.sv ./src/top_old.sv
file copy ./src/top.sv ./src/top_old.sv
file copy -force ./src/top.sv ./src/top_old.sv
file copy ./src/top.sv ./src/uart.vhd ./tb
glob ./tb/*


