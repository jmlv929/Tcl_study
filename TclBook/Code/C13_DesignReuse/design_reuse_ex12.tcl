# design_reuse_ex12.tcl
set myLUT2 [get_cells u0/u1/i_365]
set_property LOCK_PINS {I0:A5 I1:A6} $myLUT2
get_property LOCK_PINS $myLUT2
reset_property LOCK_PINS $myLUT2
