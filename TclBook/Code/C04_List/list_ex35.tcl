# list_ex35.tcl
set color [list red green yellow]
set c1 red
if {$c1 in $color} {
    puts "Right"
} else {
    puts "Wrong"
}

