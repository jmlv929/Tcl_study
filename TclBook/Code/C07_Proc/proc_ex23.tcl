# proc_ex23.tcl
proc copy_array_v1 {a1 a2} {
    upvar $a1 x1
    upvar $a2 x2
    foreach {key value} [array get x1] {
        set x2($key) $value
    }
}

array set a1 {
    name Tom
    age  34
    gender Male
}
array set a2 {}
copy_array_v1 a1 a2
parray a2
