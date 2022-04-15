# others_ex14.tcl
::xilinx::debugutils::add_probe -net cpuEngine/or1200_cpu/p_0_in[10] \
    -port myprobe -iostandard HSTL -loc W26
