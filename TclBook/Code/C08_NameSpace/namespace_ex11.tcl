# namespace_ex11.tcl
namespace eval scope1 {
    variable num 2
    proc print_ns {} {
        namespace upvar [namespace current] num x
        puts "Inside namespace: $x"
    }
}
namespace eval scope2 {
    variable num Tcl
    proc print_ns {} {
        namespace upvar ::scope1 num y
        puts "Inside namespace: $y"
    }
}

scope1::print_ns
scope2::print_ns
