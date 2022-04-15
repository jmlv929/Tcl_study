# design_analysis_ex20.tcl
get_clocks
sysClk gt0_txusrclk_i ...
get_clocks -include_generated_clocks sysClk
sysClk clkfbout cpuClk wbClk usbClk phyClk0 phyClk1 fftClk
get_nets -of [get_clocks sysClk]
sysClk
get_ports -of [get_clocks sysClk]
sysClk
get_pins -of [get_clocks clkfbout]
clkgen/mmcm_adv_inst/CLKFBOUT
get_property -min PERIOD [get_clocks]
10.000
get_property PERIOD [get_clocks]
10.000 12.800 12.800 ...
get_property -max PERIOD [get_clocks]
20.000
get_clocks -filter "PERIOD == 10"
sysClk clkfbout usbClk phyClk0 phyClk1 fftClk
report_property [get_clocks sysClk]

