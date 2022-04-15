# array_ex4.tcl
array set height {
    Tom   168
    Jerry 186
    Nina  174
    Mary  160
}
puts "Tom's height: $height(Tom)"
set n0 Jerry
puts "${n0}'s height: $height($n0)"
puts "$height(Lili)"
