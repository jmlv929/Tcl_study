# namespace_ex8.tcl
set num 0
namespace eval scope {
    variable num 2
    proc print_ns {} {
        variable num
        puts "Inside namespace: $num"
    }

    proc print_global {} {
        global num
        puts "Outside namespace: $num"
    }

    proc print_local {} {
        set num 3
        puts "Inside procedure: $num"
    }

}
scope::print_ns
scope::print_global
scope::print_local



