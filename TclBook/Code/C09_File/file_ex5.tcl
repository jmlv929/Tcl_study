# file_ex5.tcl
cd ./test
file mkdir xdc
file delete pin.txt
file delete *.txt
file delete {*}[glob *.txt]
file delete xdc
file delete tb
file delete -force tb
