# array_ex10.tcl
array set height {
    Tom   168
    Jerry 186
    Nina  174
    Mary  160
}
set keys {}
set values {}
foreach {i_keys i_values} [array get height] {
    lappend keys $i_keys
    lappend values $i_values
}
puts "Keys: $keys"
puts "Values: $values"
