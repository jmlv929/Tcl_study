# flow_mgmt_ex10.tcl
set device             xc7k70t
set package            fbg676
set speed              -1
set part               $device$package$speed
set prjName            wavegen_netlist
set prjDir             ./$prjName
set srcDir             ./Sources

create_project $prjName $prjDir -part $part
set_property design_mode GateLvl [current_fileset]
add_files [glob $srcDir/netlist/*.dcp]
add_files [glob $srcDir/ip/*.xcix]
add_files -fileset constrs_1 [glob $srcDir/xdc/*.xdc]
launch_runs impl_1 
wait_on_run impl_1
