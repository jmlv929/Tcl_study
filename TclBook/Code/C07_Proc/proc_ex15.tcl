# proc_ex15.tcl
proc local {} {
    puts "Inside procedure"
    set x 4
    puts "x is $x"
}
set x 5
puts "Outside procedure"
puts "x is $x"
local
puts "Outside procedure"
puts "x is $x"

