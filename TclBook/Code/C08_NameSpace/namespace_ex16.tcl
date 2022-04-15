# namespace_ex16.tcl
namespace eval mymath {
    proc add {a b} {
        return [expr {$a + $b}]
    }

    proc mul {a b} {
        return [expr {$a * $b}]
    }
    namespace ensemble create
}
mymath add 1 3
mymath mul 1 3
mymath m 1 3

