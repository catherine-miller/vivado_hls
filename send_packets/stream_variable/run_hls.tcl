open_project -reset "proj"
set_top streamv
add_files src/stream.cc
add_files -tb testbench.cc
open_solution -reset "solution"
set_part {xcvu9p-flga2104-2L-e}
create_clock -period 2.7777
exit