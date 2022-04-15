# flow_ctrl_ex7.tcl
set x ONE
set y 1
set z ONE
switch -exact -- $x \
    $z {
        set v [expr {$y + 1}]
        puts "MATCH \$z. $y+$z is $v"
    } \
    ONE {
        set v [expr {$y + 1}]
        puts "MATCH ONE. $y+one is $v"
    } \
    default {
        puts "$x is NOT A MATCH"
    }
