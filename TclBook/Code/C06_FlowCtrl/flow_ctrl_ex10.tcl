# flow_ctrl_ex10.tcl
set n cat
switch -exact -- $n {
    cat {
        puts pet
        # This comment is okay
    }
    table {
        puts furniture
    }
    default {
        puts unknown
    }
}
