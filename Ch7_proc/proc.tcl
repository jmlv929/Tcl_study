
proc get_min {a b} {
    if {$a>$b} {
        set res $b
    } else {
        set res $a
    }
    return $res
}

puts [get_min 3 8]
# 3

proc add {a {b 2}} {
    return [expr $a + $b]
}
puts [add 4 8]
#12

puts [add 4]
#6


set cat(0) "a"
set cat(1) "b"

proc puts_func {a} {
    upvar $a my_cat
    puts $my_cat(0)
    puts $my_cat(1)
} 
puts_func cat
# a
# b