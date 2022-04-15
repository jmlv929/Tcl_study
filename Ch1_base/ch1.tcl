set a 0

if {$a>1} {
    puts "a is bigger than 1"
} else {
    puts "a is smaller than 1"
}
#a is smaller than 1

incr a
puts $a
#1
info exists a
#1
puts [set a]
# set a 返回变量a的值
