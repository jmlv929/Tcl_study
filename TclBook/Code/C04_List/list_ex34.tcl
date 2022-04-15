# list_ex34.tcl
set color [list red green yellow]
set c1 red
set c2 black
expr {$c1 in $color}
expr {$c2 in $color}
expr {$c1 ni $color}
expr {$c2 ni $color}
lsearch -exact $color $c1
