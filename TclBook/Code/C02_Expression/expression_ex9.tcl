# expression_ex9.tcl
set a 26
set b 19
expr {($a > $b) ? $a : $b}
expr {($a > $b) ? ($a - $b) : ($b - $a)}
set x -4
expr {($x > 0) ? $x : -$x}
expr {($a > $b) ? [puts "Max: $a"] : [puts "Max: $b"]}
