# proc_ex30.tcl
proc array_values {array_name} {
    upvar 1 $array_name a
    set values {}
    foreach {key value} [array get a] {
        lappend values $value
    }
    return $values
}
array set myarray {
    0 Tcl
    1 C++
    2 Java
    3 Python
}
set v [array_values myarray]
