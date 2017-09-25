# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {H:/EECS_443/Xilinx_Vivado_Projects/lab_4/8-to-1 Multiplexer/8-to-1 Multiplexer.cache/wt} [current_project]
set_property parent.project_path {H:/EECS_443/Xilinx_Vivado_Projects/lab_4/8-to-1 Multiplexer/8-to-1 Multiplexer.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_vhdl -library xil_defaultlib {
  {H:/EECS_443/Xilinx_Vivado_Projects/lab_4/8-to-1 Multiplexer/8-to-1 Multiplexer.srcs/sources_1/new/Mux4to1.vhd}
  {H:/EECS_443/Xilinx_Vivado_Projects/lab_4/8-to-1 Multiplexer/8-to-1 Multiplexer.srcs/sources_1/new/Mux2to1.vhd}
  {H:/EECS_443/Xilinx_Vivado_Projects/lab_4/8-to-1 Multiplexer/8-to-1 Multiplexer.srcs/sources_1/new/Mux.vhd}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{H:/EECS_443/Xilinx_Vivado_Projects/lab_4/8-to-1 Multiplexer/8-to-1 Multiplexer.srcs/constrs_1/imports/lab_4/Nexys4_Master.xdc}}
set_property used_in_implementation false [get_files {{H:/EECS_443/Xilinx_Vivado_Projects/lab_4/8-to-1 Multiplexer/8-to-1 Multiplexer.srcs/constrs_1/imports/lab_4/Nexys4_Master.xdc}}]


synth_design -top Mux8to1 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef Mux8to1.dcp

catch { report_utilization -file Mux8to1_utilization_synth.rpt -pb Mux8to1_utilization_synth.pb }