# array_ex9.tcl
set keys   {Tom Jerry Nina Mary}
set values {168 186   174  160}
foreach i_keys $keys i_values $values {
    set height($i_keys) $i_values
}
parray height

set pairs {Tom 168 Jerry 186 Nina 174 Mary 160}
foreach {key value} $pair {
    set heightx($key) $value
}
parray heightx
