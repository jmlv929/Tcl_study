# proc_ex24.tcl
proc copy_array_v2 {a} {
    upvar $a x
    foreach {key value} [array get x] {
        set y($key) $value
    }
    return [array get y]
}
array set a {
    name Tom
    age  34
    gender Male
}

array set b [copy_array_v2 a]
parray b
