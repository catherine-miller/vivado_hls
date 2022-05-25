#open the project, don't forget to reset
open_project -reset proj
set_top lnzero
add_files src/algo.cpp
add_files -tb algo_test.cpp
add_files -tb algo_ref.cpp

# reset the solution
open_solution -reset "solution1"
#  MP7 (Virtex-7 690T)
# set_part {xc7vx690tffg1927-2}
#   VCU118 dev kit (VU9P)
#set_part {xcvu9p-flga2104-2L-e}
#   Serenity with KU115 
set_part {xcku115-flvf1924-2-i}
# 360  MHz which is about 2.7 ns but we tighten it to be safe
create_clock -period 2.5 -name default
exit
