open_project -reset "proj"
set_top count
add_files src/count3.cc
add_files -tb testbench.cc
open_solution -reset "solution"
set_part {xcvu9p-flga2104-2L-e}
create_clock -period 2.7777
exit