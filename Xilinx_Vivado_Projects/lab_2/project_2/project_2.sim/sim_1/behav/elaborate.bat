@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 6eb082f51b934a398c3634c087a99a83 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot FULL_ADDER_behav xil_defaultlib.FULL_ADDER -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
