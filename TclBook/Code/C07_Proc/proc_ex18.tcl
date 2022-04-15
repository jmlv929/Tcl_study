# proc_ex18.tcl
proc change_global {} {
    upvar X y
    puts "Inside procedure"
    puts "y is $y"
    incr y 2
    puts "y is $y"
}
set X 3
puts "Outside procedure"
puts "X is $X"
change_global
puts "Outside procedure"
puts "X is $X"

