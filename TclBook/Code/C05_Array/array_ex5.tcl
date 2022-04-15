# array_ex5.tcl
array set height {
    Tom   168
    Jerry 186
    Nina  174
    Mary  160
}
set elmt_name [array names height]
foreach i_elmt_name $elmt_name {
    puts "$i_elmt_name -> $height($i_elmt_name)"
}
