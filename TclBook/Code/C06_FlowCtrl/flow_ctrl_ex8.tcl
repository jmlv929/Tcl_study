# flow_ctrl_ex8.tcl
set x cat
switch -exact -- $x {
    cat -
    dog {
        set type pet
    }
    desk -
    chair {
        set type furniture
    }
}
