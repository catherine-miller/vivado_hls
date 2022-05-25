#create the project
open_project -reset "proj"
#name of the function to synthesize
set_top adder
#load source code for synthesis
add_files src/addfunc.cc
#load source code for testbench
add_files -tb testbench.cc

#create a solution (a hardware configuration for synthesis)
open_solution -reset "solution"
#set the FPGA to VU9P and set a 320 MHz clock
set_part {xcvu9p-flga2104-2L-e}
create_clock -period 3.125 
exit
