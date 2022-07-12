create_project test /afs/cern.ch/user/m/millerca/vivado_hls/vhdl_sim/stream/test.dir -part xcku15p-ffva1760-2-e -force
set_property ip_repo_paths {} [current_project]
if {[string equal [get_filesets -quiet constrs_1] ""]} {create_fileset -constrset constrs_1}
if {[string equal [get_filesets -quiet sources_1] ""]} {create_fileset -srcset sources_1}
if {[string equal [get_filesets -quiet sim_1] ""]} {create_fileset -simset sim_1}
set_property SOURCE_SET sources_1 [get_filesets sim_1]
add_files -norecurse -fileset sources_1  stream.vhd
add_files -norecurse -fileset sim_1  testbench.vhd
set_property FILE_TYPE {VHDL 2008} [get_files {testbench.vhd}]
add_files -norecurse -fileset sim_1  input1.txt

# run with  vivado -mode batch -source file.tcl
