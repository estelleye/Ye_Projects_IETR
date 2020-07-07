connect -url tcp:127.0.0.1:3121
source D:/vivado_2017.1/DPR/PR_add_sub_int/PR_add_sub_int.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248687516"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248687516" && level==0} -index 1
fpga -file D:/vivado_2017.1/DPR/PR_add_sub_int/checkpoints/sub.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248687516"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248687516"} -index 0
dow D:/kernel_2017_int/kernel/u-boot.elf
bpadd -addr &main
