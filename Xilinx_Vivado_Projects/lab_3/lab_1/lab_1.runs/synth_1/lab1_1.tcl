# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir H:/EECS_443/Xilinx_Vivado_Projects/lab_1/lab_1.cache/wt [current_project]
set_property parent.project_path H:/EECS_443/Xilinx_Vivado_Projects/lab_1/lab_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_vhdl -library xil_defaultlib H:/EECS_443/Xilinx_Vivado_Projects/lab_1/lab_1.srcs/sources_1/imports/EECS_443/lab1_1.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc H:/EECS_443/Xilinx_Vivado_Projects/lab_1/lab_1.srcs/constrs_1/imports/EECS_443/lab1_2.xdc
set_property used_in_implementation false [get_files H:/EECS_443/Xilinx_Vivado_Projects/lab_1/lab_1.srcs/constrs_1/imports/EECS_443/lab1_2.xdc]


synth_design -top lab1_1 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef lab1_1.dcp

catch { report_utilization -file lab1_1_utilization_synth.rpt -pb lab1_1_utilization_synth.pb }
