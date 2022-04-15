# design_analysis_ex32.tcl
set xnets1 [xilinx::designutils::get_inter_slr_nets \
    -from SLR0 -to SLR1]
set xnets1 [filter $xnets1 "TYPE != GLOBAL_CLOCK"]
set xnets2 [xilinx::designutils::get_inter_slr_nets \
    -from SLR1 -to SLR2]
set xnets2 [filter $xnets2 "TYPE != GLOBAL_CLOCK"]
set xnets1_len [llength $xnets1]
set path1 [get_timing_paths -nworst 1 -max $xnets1_len \
    -through $xnets1 -filter {INTER_SLR_COMPENSATION != ""}]
set xnets2_len [llength $xnets2]
set path1 [get_timing_paths -nworst 1 -max $xnets2_len \
    -through $xnets2 -filter {INTER_SLR_COMPENSATION != ""}]

