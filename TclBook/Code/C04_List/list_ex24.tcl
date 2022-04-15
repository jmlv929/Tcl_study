# list_ex24.tcl
set bel {LUT1 LUT2 LUT3 AFF BFF CFF}
lsearch -glob $bel {LUT*}
lsearch -glob -not $bel {LUT*}
lsearch -glob -all -not $bel {LUT*}
lsearch -glob -inline -not $bel {LUT*}
lsearch -glob -all -inline -not $bel {LUT*}
