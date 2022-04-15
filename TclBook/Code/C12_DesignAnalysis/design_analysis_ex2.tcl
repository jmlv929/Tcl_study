# design_analysis_ex2.tcl
set bels_in_slice [get_bels -of [get_sites SLICE_X0Y0]]
#SLICE_X0Y0/A5LUT SLICE_X0Y0/A6LUT SLICE_X0Y0/AFF ...
set lut_in_slice [get_bels -of [get_sites SLICE_X0Y0] \
    -filter "TYPE =~ *6LUT"]
#SLICE_X0Y0/A6LUT SLICE_X0Y0/B6LUT SLICE_X0Y0/C6LUT ...
llength $lut_in_slice
set ff_in_slice [get_bels -of [get_sites SLICE_X0Y0] \
    -filter "TYPE =~ *FF || TYPE =~ *FF2"]
#SLICE_X0Y0/AFF SLICE_X0Y0/AFF2 SLICE_X0Y0/BFF ...
llength $ff_in_slice
set all_luts [get_bels -filter "TYPE =~ *6LUT"]
#SLICE_X0Y599/A6LUT SLICE_X0Y599/B6LUT SLICE_X0Y599/C6LUT ...
llength $all_luts
set all_ffs [get_bels -filter "TYPE =~ *FF || TYPE =~ *FF2"]
#SLICE_X0Y599/AFF SLICE_X0Y599/AFF2 SLICE_X0Y599/BFF ...
llength $all_ffs
