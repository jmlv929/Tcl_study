# design_analysis_ex44.tcl
set net [get_nets reset_reg]
set mypin [get_pins -of $net -filter "DIRECTION==IN" -leaf]
set target_pin [filter $mypin \
    "REF_PIN_NAME != CLR && REF_PIN_NAME != R && \
    REF_PIN_NAME != PRE && REF_PIN_NAME != S"]
show_objects $target_pin -name data_pin
