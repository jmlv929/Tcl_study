# namespace_ex12.tcl
namespace eval scope {
    variable num 2
    proc print_ns {} {
        upvar 1 num x
        puts "Inside namespace [info level]: $x"
    }
    namespace eval sub_scope {
        proc print_ns {} {
            upvar 1 num y
            puts "Inside namespace [info level]: $y"
        }
    }
}
set num Tcl
scope::print_ns
scope::sub_scope::print_ns

