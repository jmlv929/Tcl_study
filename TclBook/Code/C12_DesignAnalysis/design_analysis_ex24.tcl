# design_analysis_ex24.tcl
set start_cell [get_cells usbEngine0/u4/inta_reg]
set end_cell [get_cells cpuEngine/or1200_immu_top/icpu_err_o_reg]
set start_clk [get_clocks usbClk]
set end_clk [get_clocks cpuClk]
set mycell [get_cells fftEngine]
set t1 [get_cells {wbArbEngine/s2/msel/arb2/retry_cntr[6]_i_5}]
set t2 [get_cells {wbArbEngine/s4/msel/arb1/retry_cntr[6]_i_3}]
report_timing -from $start_cell -to $end_cell \
    -setup -max 10 -nworst 1 -name timing_1 
report_timing -from $start_clk -to $end_clk \
    -setup -max 10 -nworst 1 -name timing_2 
report_timing -setup -nworst 1 -max 100 -slack_lesser_than 0 \
    -group [get_path_groups usbClk] -name timing_3
report_timing -setup -nworst 1 -max 100 \
    -cells $mycell -name timing_4
report_timing -through $t1 -setup \
    -max 10 -nworst 1 -name timing_5
report_timing -through $t1 -through $t2 -setup \
    -max 10 -nworst 1 -name timing_6

