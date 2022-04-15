# design_analysis_ex13.tcl
set block {RAMB36E1 FIFO36E1 DSP48E1 RAMB18E1 FIFO18E1}
array set cell_block {}
foreach i_block $block {
    set cell [get_cells -hier -filter "REF_NAME == $i_block" -quiet]
    if {[llength $cell] > 0} {
        show_objects $cell -name cell_${i_block}
        set cell_block($i_block) $cell
    }
}
