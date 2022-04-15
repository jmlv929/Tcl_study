# namespace_ex14.tcl
namespace import mymath::*
mul 1 2
namespace forget mymath::mul
add 1 2
mul 1 2
