# flow_ctrl_ex12.tcl
set n 1
while "$n < 3" {
    incr n
    if {$n > 4} {break}
    if "$n > 3" {continue}
    puts "n is $n"
}
puts "Exited loop with n equal to $n"

