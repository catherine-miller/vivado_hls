############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj
set_top myfunc
add_files func.cc
add_files -tb testbench.cc -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution"
set_part {xcvu9p-flga2104-2L-e}
create_clock -period 3.125 -name default
#source "./proj/solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
