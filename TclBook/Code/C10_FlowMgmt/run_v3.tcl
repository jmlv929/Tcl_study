# run_v3.tcl
set date               1019
set device             xc7k70t
set package            fbg676
set speed              -1
set part               $device$package$speed
set top                wave_gen
set srcDir             ./Sources
set SynOutputDir       ./SynOutputDir
set ImplOutputDir      ./ImplOutputDir
set synDtv             default
set synDcp             1
set synAna             1
set synIPEn            0

set optDtv             Default
set placeDtv           Default
set physOptDtvAp       Default
set routeDtv           Default
set physOptArEn        1
set physOptDtvAr       Default

set optDcp             1
set placeDcp           1
set physOptApDcp       1
set routeDcp           1
set physOptArDcp       1

set optAna             1
set placeAna           1
set physOptApAna       1
set routeAna           1
set physOptArAna       1

source run_read_src_v3.tcl
if {$synIPEn==1} {source run_synth_ip_v3.tcl}
source run_ns_v3.tcl
source run_synth_v3.tcl
source run_impl_v3.tcl
source run_bitstream_v3.tcl
