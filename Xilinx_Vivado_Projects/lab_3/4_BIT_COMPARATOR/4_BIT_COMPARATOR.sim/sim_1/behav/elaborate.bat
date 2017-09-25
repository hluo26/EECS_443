@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto bdb1e1e7d3a24fcb8cdf343eed8afba2 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Comparator_tb_behav xil_defaultlib.Comparator_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
