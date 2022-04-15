# proc_ex7.tcl
proc arg_test {a {b foo} args} {
   foreach param {a b args} {
       puts -nonewline "\t$param = [set $param]"
   }
}
set x one
set y two
set z three
puts [arg_test $x]
puts [arg_test $x $y]
puts [arg_test $x $y $z]
puts [arg_test $x $y $z $y $x]

