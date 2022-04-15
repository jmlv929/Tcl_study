# flow_ctrl_ex5.tcl
set n 0
switch -exact -- $n {
    0 {
        set str zero
    }
    1 {
        set str one
    }
    2 {
        set str two
    }
    default {
        set str hello
    }
}
