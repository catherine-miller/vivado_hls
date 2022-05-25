############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj
set_top isocalc
add_files src/algo.cpp
add_files -tb algo_ref.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb algo_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xcku115-flvf1924-2-i}
create_clock -period 4.16667 -name default
#source "./proj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
