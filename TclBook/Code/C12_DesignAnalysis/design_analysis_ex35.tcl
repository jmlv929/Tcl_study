# design_analysis_ex35.tcl
read_vhdl <some_file>.vhd
read_qor_suggestions rqs_report.rqs
synth_design -top <top> -part <part>
opt_design
