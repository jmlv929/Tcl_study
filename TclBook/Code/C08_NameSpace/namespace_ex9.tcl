# namespace_ex9.tcl
namespace eval scope {
    variable num 2
    proc print_ns {} {
        variable num
        puts "Inside namespace: $num"
    }
    namespace eval sub_scope {
        proc print_ns {} {
            variable num
            puts "Inside namespace: $num"
        }
    }
}
scope::print_ns
scope::sub_scope::print_ns

