# namespace_ex2.tcl
set a 1
set b 2
set c 3
ns1::print
ns1::add $a $b
ns2::print
ns2::add $a $b $c
print
::print
