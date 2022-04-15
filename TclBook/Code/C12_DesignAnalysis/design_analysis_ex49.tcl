# design_analysis_ex49.tcl
report_exceptions -name exceptions_1
report_exceptions -coverage -name exceptions_2
report_exceptions -from clk_rx_clk_core -to clk_tx_clk_core \
    -name exceptions_3
