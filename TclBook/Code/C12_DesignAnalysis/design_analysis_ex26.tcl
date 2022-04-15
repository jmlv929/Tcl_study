# design_analysis_ex26.tcl
set start_cell [get_cells usbEngine0/u4/inta_reg]
set end_cell [get_cells cpuEngine/or1200_immu_top/icpu_err_o_reg]
set start_clk [get_clocks usbClk]
set end_clk [get_clocks cpuClk]
set mycell [get_cells fftEngine]
set t1 [get_cells {wbArbEngine/s2/msel/arb2/retry_cntr[6]_i_5}]
set t2 [get_cells {wbArbEngine/s4/msel/arb1/retry_cntr[6]_i_3}]
set tp1 [get_timing_paths -from $start_cell -to $end_cell \
    -setup -max 10 -nworst 1]
set tp2 [get_timing_paths -from $start_clk -to $end_clk \
    -setup -max 10 -nworst 1]
set tp3 [get_timing_paths -setup -nworst 1 -max 100 \
    -slack_lesser_than 0 -group usbClk]
set tp4 [get_timing_paths -setup -nworst 1 -max 100 \
    -cell $mycell]
set tp5 [get_timing_paths -through $t1 -setup \
    -max 10 -nworst 1]
set tp6 [get_timing_paths -through $t1 -through $t2 -setup \
    -max 10 -nworst 1]

