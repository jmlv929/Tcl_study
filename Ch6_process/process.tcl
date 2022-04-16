set sex female

if {[string equal $sex male]} {
    puts "this is a boy"
} else {
    puts "this is a girl"
}
#this is a girl


set n 0


if {n==1} {
    puts "n is 1"
} elseif { n== 2} {
    puts "n is 2"
} else {
    puts "n is 0"
}
#n is 0


set n 1
puts $n
# 1

switch $n {
    0 {
        set str 0
    }
    1 {
        set str 1
    }
    default {
        set str 2
    }
}
puts $str
# 1


set t 4

while {$t<7} {
    puts "$t"
    incr t
}
#4
#5
#6

set color {yellow blue purple red green}

for {set i 0} {$i < 3} { incr i} {
    puts [lindex $color $i]
}
#yellow
#blue
#purple