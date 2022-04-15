# flow_ctrl_ex1.tcl
set x 1
if {$x > 0} {
    set x -$x 
}
puts $x

if yes {
    puts "This message is always shown"
}

if true {
    puts "This message is always shown"
}

if {no || false} {
    puts "This message is never shown"
}

