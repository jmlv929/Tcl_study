# namespace_ex10.tcl
namespace eval scope {
    variable num 2
    proc print_ns {} {
        variable num
        puts "Inside namespace: $num"
    }
}
set scope::num 8
scope::print_ns
set ns ::scope
upvar #0 ${ns}::num y
set y "Hello world"
scope::print_ns
namespace upvar $ns num x
set x "Hello Tcl"
scope::print_ns

