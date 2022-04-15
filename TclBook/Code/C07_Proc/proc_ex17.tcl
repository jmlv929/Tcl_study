# proc_ex17.tcl
proc test {{log 0}} {
    global LOG_DEBUG 
    if {$log == $LOG_DEBUG} {
        puts "log"
    } else {
        puts "no log"
    }
}

set LOG_DEBUG 1
test
test 1
