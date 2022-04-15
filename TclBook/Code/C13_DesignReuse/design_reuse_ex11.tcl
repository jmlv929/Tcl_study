# design_reuse_ex11.tcl
proc fix_block {block fid} {
    set loc [get_property LOC [get_cells $block]]
    foreach i_block $block i_loc $loc {
        puts $fid "set_property LOC $i_loc \[get_cells $i_block]"
    }
}
set fid [open block_loc.xdc w]
set fix_bram 1
set fix_dsp 1
set fix_uram 0

if {$fix_bram==1} {
    set brams [get_cells -quiet -hierarchical -filter \
        { PRIMITIVE_TYPE =~ BLOCKRAM.BRAM.* || PRIMITIVE_TYPE =~ BMEM.*.* }]
    fix_block $brams $fid
}

if {$fix_dsp==1} {
    set dsps [get_cells -quiet -hierarchical -filter { REF_NAME =~ "DSP48E*"}]
    fix_block $dsps $fid
}

if {$fix_uram==1} {
    set urams [get_cells -quiet -hierarchical -filter \
        { PRIMITIVE_TYPE =~ BLOCKRAM.URAM.*}]
    fix_block $urams $fid
}

close $fid


