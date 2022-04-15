# list_ex38.tcl
set score {Math 97 English 98 Science 100}
foreach {key value} $score {
    puts "$key: $value"
}
