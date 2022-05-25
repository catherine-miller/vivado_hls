#open the project, don't forget to reset
open_project -reset proj
set_top pcount
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
# 322.27 MHz
create_clock -period 3.10303 -name default
exit
