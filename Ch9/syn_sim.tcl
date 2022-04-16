# -------------------------------------------------------------
#对源设计.v文件进行综合 如果有tb文件则进行仿真 并打开仿真页面

#用法
#将源设计.v文件 以及 仿真文件（文件带有tb）拷贝到当前目录下

#如果需要 管脚约束 添加Xilinx IP文件
#需要建立对应的文件夹 
#建立工程运行需要的文件夹 如果有对应文件 就生成对应文件夹 否则 注释掉

# 获取当前目录 带有.v文件的列表
set x [glob *.v]

#将 仿真文件（文件名带有tb）拷贝到 tb文件夹
foreach i_name $x {
    if { [string match *tb* $i_name] } {
    file mkdir tb
    file copy $i_name ./tb/$i_name
} else {
   
}
}

#建立源设计文件夹
file mkdir hdl 
#将除了仿真文件剩下的verilog文件拷贝到 hdl文件夹下
foreach i_name $x {
    if { [string match *tb* $i_name] } {
    
} else {
   file copy $i_name ./hdl/$i_name
}
}

#约束文件拷贝在此
#file mkdir xdc

#辅助性Tcl脚本
#file mkdir tcl

#vivado生成的ip
#file mkdir ip

pwd

#-----------------------------------------------------------

# project 模式
# vivado运行综合 打开行为仿真页面

#全局参数
set device             xczu9eg
set package            -ffvb1156
set speed              -2-e
set part               $device$package$speed
set prjName           "my_project"
set prjDir            ./$prjName
#工程设置在此脚本执行目录
set srcDir            .

#建立工程
create_project $prjName $prjDir -part $part

#添加源文件
add_files      [glob $srcDir/hdl/*.v]

if { [file exists ip] } {
    add_files      [glob $srcDir/ip/*.xcix]
} else {
    puts "Your Design don't have Xilinx IP Core !"
}


#更新文件夹下文件编译顺序 确定顶层模块
update_compile_order -fileset sources_1

#添加约束文件
if { [file exists xdc] } {
    add_files -fileset constrs_1 [glob $srcDir/xdc/*.xdc]
} else {
    puts "Your Design don't have XDC file !"
}

#添加仿真文件
if { [file exists tb] } {
    add_files -fileset sim_1 [glob $srcDir/tb/*.v]
    update_compile_order -fileset sim_1
} else {
    puts "Your Design don't have tb file !"
}

#指定综合策略
set_property strategy Flow_AreaOptimized_high [get_runs synth_1]

#运行综合
launch_runs synth_1
wait_on_run synth_1

#运行实现
if { [file exists xdc] } {
    launch_runs impl_1 -to_step write_bitstream 
    wait_on_run impl_1
} else {
    puts "Your Design don't have xdc file !"
}

#开启GUI界面
start_gui

#打开RTL设计
synth_design -rtl -name rtl_1

#运行仿真
if { [file exists tb] } {
    launch_simulation
} else {
    puts "Your Design don't have tb file !"
}