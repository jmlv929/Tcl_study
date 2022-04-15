# proc_ex16.tcl
proc global_test {} {
    global x
    puts "Inside global_test procedure x is $x"
    proc nested {} {
        global x
        puts "Inside nested x is $x"
    }
}
set x 1
global_test
nested
puts "Outside x is $x"
