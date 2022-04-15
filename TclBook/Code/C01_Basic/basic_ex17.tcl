# basic_ex17.tcl
set var1 3.14
set var2 hello
set var3 5
foreach num {1 2 3} {
    puts "var$num = [set var$num]"
}
