# string_ex17.tcl
string match {*.[ch]} fir.c
string match {*.[ch]} fir.h
string match {*.[ch]} fir.ch
string match {*[1-9]} bus1
string match {*[1-9][2-7]} bus26
string match {*[1-9][2-7]} bus28
set pat {m[a-zA-Z0-9_]?}
string match $pat mc*
string match $pat mc
string match $pat m9k
string match $pat m_k
string match $pat mc9k
