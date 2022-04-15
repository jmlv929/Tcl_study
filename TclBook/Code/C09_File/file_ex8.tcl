# file_ex8.tcl
proc move_to_dir {fn dir} {
    foreach i_fn $fn {
        file rename $i_fn [file join $dir [file tail $i_fn]]
    }
}
set fn [glob ./src/*.sv]
set dir ./tb
move_to_dir $fn $dir
