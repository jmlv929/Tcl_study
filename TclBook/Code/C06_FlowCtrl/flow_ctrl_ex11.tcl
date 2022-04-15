# flow_ctrl_ex11.tcl
set n 1
while {$n < 3} {
    puts "n is $n"
    incr n
}
puts "Exited loop with n equal to $n"

while {true} {
    puts "Done"
    break
}
