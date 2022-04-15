# array_ex7.tcl
array set height {
    Tom   168
    Jerry 186
    Nina  174
    Mary  160
}
puts "Before: [array size height]"
unset height(Tom)
unset height(Mary)
puts "After: [array size height]"
unset height
puts [array exists height]
