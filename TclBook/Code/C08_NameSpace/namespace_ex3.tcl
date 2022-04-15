# namespace_ex3.tcl
namespace eval ns3 {
    namespace eval ns31 {
        proc print {} {
            puts "This is Tcl"
        }
    }
    namespace eval ns32 {
        proc print {} {
            puts "This is C++"
        }
    }
    proc print {} {
        puts "This is Python"
    }
}
ns3::ns31::print
ns3::ns32::print
ns3::print
