

puts [string is double 3.14]
#1

puts [string is int 3.14]
#0

puts [string length "hello world"]
#11

puts [string index "hello world" 4]
#o

puts [string index "hello world" end]
#d

puts [string range "hello world" 3 8]
#lo wor

set a "hello world"
puts $a
#hello world

append a "!!!"
puts $a
#hello world!!!

puts [string replace $a 1 3]
#ho world!!!

puts $a
#hello world!!!

puts [string first "wo" $a]
#6

puts [string last "wo" $a]
#6

puts [string match "he*" $a]
#1

puts [string match "he?" $a]
#0

set b 4
puts [format %f $b]
#4.000000

puts $a
#hello world!!!
puts [string toupper $a]
#HELLO WORLD!!!