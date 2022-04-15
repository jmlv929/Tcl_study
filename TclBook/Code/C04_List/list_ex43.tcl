# list_ex43.tcl
set course {Math Science English Physics}
set score  {98   97      86      88}
foreach i_course $course i_score $score {
    puts "$i_course: $i_score"
}
