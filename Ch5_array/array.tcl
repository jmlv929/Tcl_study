set Tom(height) 168
puts $Tom(height)
#168

array set x {
    height 168
    career student
}
puts $x(height)
#168

set y [array names x]
puts $y
#height career

set a {age book}
set b {45 lazavi}

foreach i $a j $b {
    set Tom($i) $j
}

puts $Tom(age)
# 45