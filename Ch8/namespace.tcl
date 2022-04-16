

namespace eval space1 {
    variable t 5
    proc add {a b} {
        variable t
        return [expr {$a + [expr {$b + $t}]}]
    }

    namespace eval space2 {
        variable y 6
        proc add {a b} {
            variable y
            return [expr {$a + [expr {$b + $y}]}]
        }
    }
}

puts [space1::add 1 2]
#8
puts [space1::space2::add 1 2]
#9

puts ${space1::t}
#5

set space1::t 6
puts [space1::add 1 2]
#9