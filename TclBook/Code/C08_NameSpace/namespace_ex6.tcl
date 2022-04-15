# namespace_ex6.tcl
namespace eval counter {
    variable cnt 0
    proc up {} {
        variable cnt
        return [incr cnt]
    }
    proc down {} {
        variable cnt
        return [incr cnt -1]
    }
    proc reset {} {
        variable cnt
        set cnt 0
    }
}
counter::up
counter::up
counter::down
counter::reset
counter::up
