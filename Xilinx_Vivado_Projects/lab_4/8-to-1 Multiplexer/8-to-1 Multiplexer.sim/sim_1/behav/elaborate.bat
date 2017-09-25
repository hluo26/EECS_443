@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 2626f1f2798348239246baf7889c4335 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Mux_tb_behav xil_defaultlib.Mux_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
