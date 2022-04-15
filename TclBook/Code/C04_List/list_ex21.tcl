# list_ex21.tcl
set bel {LUT1 LUT2 LUT3 AFF BFF CFF}
lsearch $bel LUT2
lsearch $bel LUT4
lsearch -glob $bel {*FF}
lindex $bel 3
lsearch -exact $bel {*FF}
