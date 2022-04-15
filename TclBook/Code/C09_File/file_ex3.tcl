# file_ex3.tcl
cd ./test
pwd
glob *
glob */
glob ./src/*.sv
glob ./src/*.vhd ./tb/*.sv
glob ./*/*.sv 
glob {{src,tb}/*.[sv]*}
