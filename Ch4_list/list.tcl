set a {1 2 3 454 7}
puts $a
#1 2 3 454 7

set a [list 2 5 6]
puts $a
#2 5 6

set b {{1 4 6} {3 6 8}}
puts $b
#{1 4 6} {3 6 8}

puts [llength $a]
#3

puts [llength $b]
#2

puts [lindex $a 1]
#5

puts [lindex $a end]
#6

puts $b
# {1 4 6} {3 6 8}

puts [lindex $b 1 2]
# 8

lappend b { 1 3 5}
puts $b
#{1 4 6} {3 6 8} { 1 3 5}
puts [llength $b]
#3

puts [lrange $b 1 2]
#{3 6 8} { 1 3 5}

puts [linsert $b 2 4]
#{1 4 6} {3 6 8} 4 { 1 3 5}
puts $b
#{1 4 6} {3 6 8} { 1 3 5}

puts [lreplace $b 0 1]
#{ 1 3 5}

puts [lreplace $b 0 1 7 88]
#7 88 { 1 3 5}
puts $b
#{1 4 6} {3 6 8} { 1 3 5}

puts [lset b 0 1]
#1 {3 6 8} { 1 3 5}
puts $b
#1 {3 6 8} { 1 3 5}

puts [lsearch $b {3 6 8}]
#1

puts $b
#1 {3 6 8} { 1 3 5}

puts [lsort $b]
#{ 1 3 5} 1 {3 6 8}

set date 2019/09/10
puts $date
#2019/09/10

puts [split $date /]
#2019 09 10

set data abdbfsglsfbasdbr
puts $data
#abdbfsglsfbasdbr

puts [split $data {b}]
#a d fsglsf asd r
puts $data
#abdbfsglsfbasdbr

set x [split $data {b}]
puts $x
#a d fsglsf asd r

puts [join $x b]
#abdbfsglsfbasdbr

set cat {black white blue orange}
puts $cat
#black white blue orange

set a black
set b green
puts [expr {$a in $cat}]
#1
puts [expr {$b in $cat}]
#0

puts $cat
#black white blue orange

foreach {cat_i} $cat {
    puts $cat_i
}
#black
#white
#blue
#orange
