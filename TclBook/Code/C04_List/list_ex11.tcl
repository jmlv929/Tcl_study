# list_ex11.tcl
set color [list red green blue black orange]
lrange $color 1 3
lrange $color 2 end
lrange $color end-2 end
lrange $color 3 3
llength [lrange $color 3 1] 
lrange $color {end - 2} end
