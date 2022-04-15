# list_ex23.tcl
set bel {LUT1 LUT2 LUT3 AFF BFF CFF}
lsearch -glob $bel {[AB]FF}
lsearch -glob -inline $bel {[AB]FF}
lsearch -glob -all $bel {[AB]FF}
lsearch -glob -all -inline $bel {[AB]FF}
