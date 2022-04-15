# array_ex6.tcl
array set height {
    Tom   168
    Jerry 186
    Nina  174
    Mary  160
}
set pair [array get height]
foreach {key value} $pair {
    puts "$key -> $value"
}
array set heightx [array get height]
parray heightx
