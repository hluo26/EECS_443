@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim Comparator_tb_behav -key {Behavioral:sim_1:Functional:Comparator_tb} -tclbatch Comparator_tb.tcl -view H:/EECS_443/Xilinx_Vivado_Projects/lab_3/4_BIT_COMPARATOR/Comparator_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
