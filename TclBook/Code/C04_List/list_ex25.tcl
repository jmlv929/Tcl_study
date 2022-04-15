# list_ex25.tcl
set bel {LUT1 LUT2 LUT3 AFF BFF CFF}
lsearch -glob -start 1 $bel {LUT*}
lsearch -glob -all -start 1 $bel {LUT*}
lsearch -glob -inline -start 1 $bel {LUT*}
lsearch -glob -all -inline -start 1 $bel {LUT*}
