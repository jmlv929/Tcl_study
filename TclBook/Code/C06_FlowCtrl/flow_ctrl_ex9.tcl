# flow_ctrl_ex9.tcl
set n pen
switch -exact -- $n {
    # This comment will cause an error
    cat {
        puts pet
    }
    table {
        puts furniture
    }
    default {
        puts unknown
    }
}
