@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim lab1_1_tb_behav -key {Behavioral:sim_1:Functional:lab1_1_tb} -tclbatch lab1_1_tb.tcl -view H:/EECS_443/Xilinx_Vivado_Projects/lab_3/lab_1/lab1_1_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
