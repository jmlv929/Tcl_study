# namespace_ex1.tcl
namespace eval ns1 {
    proc print {} {
        puts "This is Tcl"
    }
    proc add {a b} {
        return [expr {$a + $b}]
    }
}

namespace eval ns2 {
    proc print {} {
        puts "This is C++"
    }
}
proc ns2::add {a b c} {
    return [expr {$a + $b + $c}]
}

proc print {} {
    puts "This is Python"
}

set a 1
set b 2
set c 3
ns1::print
ns1::add $a $b
ns2::print
ns2::add $a $b $c
print


