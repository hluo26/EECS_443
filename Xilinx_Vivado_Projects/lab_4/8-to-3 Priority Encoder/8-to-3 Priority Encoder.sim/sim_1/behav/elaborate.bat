@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 61f658df086c4055872c118c78cfd16e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot encoder_tb_behav xil_defaultlib.encoder_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
