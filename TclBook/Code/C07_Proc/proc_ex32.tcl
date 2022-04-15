# proc_ex31.tcl
proc arg_test {a {b foo} args} {
   foreach param {a b args} {
       upvar 0 $param x
       puts -nonewline "\t$param = $x"
   }
}
set x one
set y two
set z three
puts [arg_test $x]
puts [arg_test $x $y]
puts [arg_test $x $y $z]
puts [arg_test $x $y $z $y $x]

