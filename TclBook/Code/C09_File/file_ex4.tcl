# file_ex4.tcl
glob -types {f r w} ./src/*
glob -types {d r w} ./src/*
glob -types f ./src/*
glob -types f *{pin,me}*
glob -directory ./src -types d *
glob -directory ./ -types d *
