# design_analysis_ex19.tcl
set myport [get_ports RxActive_pad_1_i]
set myproperty {DIRECTION PACKAGE_PIN IOBANK LOC}
foreach i_p $myproperty {
    puts "$i_p: [get_property $i_p $myport]"
}
