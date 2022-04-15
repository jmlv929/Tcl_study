# design_analysis_ex6.tcl
set uram_in_slr0 [get_sites -of [get_slrs SLR0] URAM288*]
highlight_objects -color green $uram_in_slr0
show_objects -name uram_in_slr0 $uram_in_slr0
set uram_in_slr1 [get_sites -of [get_slrs SLR1] URAM288*]
mark_objects -color red $uram_in_slr1
get_highlighted_objects
get_marked_objects
unhighlight_objects $uram_in_slr0
highlight_objects $uram_in_slr0
unhighlight_objects -color yellow
unmark_objects  $uram_in_slr1
mark_objects -color red $uram_in_slr1
unmark_objects -color red
