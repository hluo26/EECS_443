@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 93a6e60dedbe4170809df58c7d0a6506 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot lab1_1_tb_behav xil_defaultlib.lab1_1_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
