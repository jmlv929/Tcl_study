# namespace_ex13.tcl
namespace eval mymath {
    namespace export add
    proc add {a b} {
        return [expr {$a + $b}]
    }

    namespace export mul
    proc mul {a b} {
        return [expr {$a * $b}]
    }

    proc cmpr {a b} {
        if {$a > $b} {return 1} else {return 0}
    }
}
namespace import mymath::add
namespace import mymath::mul
set a 3
set b 4
add $a $b
mul $a $b
mymath::cmpr $a $b
cmpr $a $b

