# design_reuse_ex13.tcl
set mylut [get_cells \
    {lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/cnt[17]_i_1}]
set lut_i0 [get_pins -of $mylut -filter "REF_PIN_NAME==I0"]
set lut_i0_bel [get_bel_pins -of $lut_i0]
SLICE_X2Y113/B6LUT/A4


