proc inc_by_v1 {args} {
    if {[llength $args] < 1} {
        error "Not enough args"
    }
    set inc [lindex $args 0]
    set res {}
    foreach i_args [lrange $args 1 end] {
        lappend res [expr {$i_args + $inc}]
    }
    return $res
}

proc inc_by_v2 {inc args} {
    set res {}
    foreach i_args $args {
        lappend res [expr {$i_args + $inc}]
    }
    return $res
}

#However, you can explictly bind a variable name to a variable anywhere in the call stack with the upvar command. This allows you to implement call by name for parameters which are variables.
proc my_inc {var {inc 1}} {
    upvar $var v
    set v [expr {$v + $inc}]
    return $v
}

proc inc_array {arr {inc 1}} {
    upvar $arr a
    foreach n [array names a] {
        incr a($n) $inc
    }
}
#A procedure is a code block containing a series of commands. Procedures are called functions in many programming languages. It is a good programming practice for procedures to do only one specific task. Procedures bring modularity to programs. The proper use of procedures brings the following advantages:

Reducing duplication of code
Decomposing complex problems into simpler pieces
Improving clarity of the code
Reuse of code
Information hiding

#########################################################################
proc tclver {} {
    set v [info tclversion]
    puts "This is Tcl version $v"
}

proc circle_area {r} {
    set pi 3.1415
    return [expr {$pi * $r ** 2}]
}

proc maximum {x y} {
    if {$x > $y} {
        return $x
    } else {
        return $y
    }
}

proc sum_int {args} {
    set s 0
    foreach i_args $args {
        incr s $i_args
    }
    return $s
}

proc power {a {b 2}} {
    if {$b == 2} {
        return [expr $a * $a]
    }
    set value 1
    for {set i 0} {$i < $b} {incr i} {
        set value [expr $value * $a]
    }
    return $value
}

proc circle_property {r} {
    set pi 3.1415
    set length [expr {2 * $pi * $r}]
    set area [expr {$pi * $r ** 2}]
    return [list $length $area]
}

proc factorial n {
    if {$n == 0} {
        return 1
    } else {
        return [expr {$n * [factorial [expr {$n - 1}]]}]
    }
}

proc test {} {
    puts "Inside procedure"
    set x 4
    puts "x is $x"
}

set x 1
puts "Outside procedure"
puts "x is $x"
test
puts "Outside procedure"
puts "x is $x"


proc upvar_test {} {
    upvar x y
    puts "Inside procedure"
    puts "y is $y"
    set y 4
    puts "y is $y"
}

set x 1
puts "Outside procedure"
puts "x is $x"
upvar_test
puts "Outside procedure"
puts "x is $x"


proc global_test {} {
    global x
    puts "Inside test procedure x is $x"
    proc nested {} {
        global x
        puts "Inside nested x is $x"
    }
}
set x 1
global_test
nested
puts "Outside x is $x"


proc tamp {name1 name2} {
    upvar $name1 Ronalod
    upvar $name2 Dom
    puts "Ronalod=$Ronalod, Dom=$Dom"
    set Ronalod "Brian"
    set Dom "Fenton"
    puts "NOW: Ronalod=$Ronalod, Dom=$Dom"
}

proc ArgTest {a {b foo} args} {
   foreach param {a b args} {
      puts stdout "\t$param = [set $param]"
   }
}


proc ArgTest {a b} {
    set x [list $a $b]
    puts $x
    foreach i $x {
        puts $i
    }
}

proc ArgTest {a {b foo} args} {
    set x [list $a $b $args]
    puts $x
    foreach i $x {
        puts $i
    }
}


