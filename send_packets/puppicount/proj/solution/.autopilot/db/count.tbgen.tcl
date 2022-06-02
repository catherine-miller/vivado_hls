set moduleName count
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {count}
set C_modelType { void 0 }
set C_modelArgList {
	{ candin_V int 64 regular  }
	{ candout_V int 64 regular {pointer 1}  }
	{ firstin uint 1 regular  }
	{ lastin uint 1 regular  }
	{ valid uint 1 regular  }
	{ firstout int 1 regular {pointer 1}  }
	{ lastout int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "candin_V", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "candin.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "candout_V", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "candout.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "firstin", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "firstin","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "lastin", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "lastin","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "firstout", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "firstout","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "lastout", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "lastout","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ candin_V sc_in sc_lv 64 signal 0 } 
	{ candout_V sc_out sc_lv 64 signal 1 } 
	{ candout_V_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ firstin sc_in sc_logic 1 signal 2 } 
	{ lastin sc_in sc_logic 1 signal 3 } 
	{ valid sc_in sc_logic 1 signal 4 } 
	{ firstout sc_out sc_logic 1 signal 5 } 
	{ firstout_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ lastout sc_out sc_logic 1 signal 6 } 
	{ lastout_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "candin_V", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "candin_V", "role": "default" }} , 
 	{ "name": "candout_V", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "candout_V", "role": "default" }} , 
 	{ "name": "candout_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "candout_V", "role": "ap_vld" }} , 
 	{ "name": "firstin", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "firstin", "role": "default" }} , 
 	{ "name": "lastin", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lastin", "role": "default" }} , 
 	{ "name": "valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valid", "role": "default" }} , 
 	{ "name": "firstout", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "firstout", "role": "default" }} , 
 	{ "name": "firstout_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstout", "role": "ap_vld" }} , 
 	{ "name": "lastout", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lastout", "role": "default" }} , 
 	{ "name": "lastout_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lastout", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "count",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "candin_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "candout_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstin", "Type" : "None", "Direction" : "I"},
			{"Name" : "lastin", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstout", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lastout", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "npuppi_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_r", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wrptr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "headerloc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_100", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_101", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_102", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_103", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_104", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_105", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_106", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_107", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_108", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_109", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_110", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_111", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_112", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_113", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_114", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_115", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_116", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_117", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_118", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_119", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_120", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_121", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_122", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_123", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_124", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_125", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_126", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_127", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_128", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_129", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_130", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_131", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_132", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_133", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_134", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_135", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_136", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_137", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_138", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_139", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_140", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_141", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_142", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_143", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_144", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_145", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_146", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_147", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_148", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_149", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_150", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_151", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_152", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_153", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_154", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_155", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_156", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_157", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_158", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_159", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_160", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_161", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_162", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_163", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_164", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_165", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_166", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_167", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_168", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_169", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_170", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_171", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_172", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_173", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_174", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_175", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_176", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_177", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_178", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_179", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_180", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_181", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_182", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_183", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_184", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_185", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_186", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_187", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_188", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_189", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_190", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_191", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_192", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_193", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_194", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_195", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_196", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_197", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_198", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_199", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_200", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_201", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_202", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_203", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_204", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_205", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_206", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_207", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_208", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_209", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_210", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_211", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_212", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_213", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_214", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_215", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_216", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_217", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_218", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_219", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_220", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_221", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_222", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_223", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_224", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_225", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_226", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_227", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_228", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_229", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_230", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_231", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_232", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_233", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_234", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_235", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_236", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_237", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_238", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_239", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_240", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_241", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_242", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_243", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_244", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_245", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_246", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_247", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_248", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_249", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_250", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_251", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_252", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_253", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_254", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V_255", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "eventsready_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rdptr_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	count {
		candin_V {Type I LastRead 0 FirstWrite -1}
		candout_V {Type O LastRead -1 FirstWrite 2}
		firstin {Type I LastRead 0 FirstWrite -1}
		lastin {Type I LastRead 0 FirstWrite -1}
		valid {Type I LastRead 0 FirstWrite -1}
		firstout {Type O LastRead -1 FirstWrite 2}
		lastout {Type O LastRead -1 FirstWrite 2}
		npuppi_V {Type IO LastRead -1 FirstWrite -1}
		write_r {Type IO LastRead -1 FirstWrite -1}
		wrptr_V {Type IO LastRead -1 FirstWrite -1}
		headerloc_V {Type IO LastRead -1 FirstWrite -1}
		buffer_V_0 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_1 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_2 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_3 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_4 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_5 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_6 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_7 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_8 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_9 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_10 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_11 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_12 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_13 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_14 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_15 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_16 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_17 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_18 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_19 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_20 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_21 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_22 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_23 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_24 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_25 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_26 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_27 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_28 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_29 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_30 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_31 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_32 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_33 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_34 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_35 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_36 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_37 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_38 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_39 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_40 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_41 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_42 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_43 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_44 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_45 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_46 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_47 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_48 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_49 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_50 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_51 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_52 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_53 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_54 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_55 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_56 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_57 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_58 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_59 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_60 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_61 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_62 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_63 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_64 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_65 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_66 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_67 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_68 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_69 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_70 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_71 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_72 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_73 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_74 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_75 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_76 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_77 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_78 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_79 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_80 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_81 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_82 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_83 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_84 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_85 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_86 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_87 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_88 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_89 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_90 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_91 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_92 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_93 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_94 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_95 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_96 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_97 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_98 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_99 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_100 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_101 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_102 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_103 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_104 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_105 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_106 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_107 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_108 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_109 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_110 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_111 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_112 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_113 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_114 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_115 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_116 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_117 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_118 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_119 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_120 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_121 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_122 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_123 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_124 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_125 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_126 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_127 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_128 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_129 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_130 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_131 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_132 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_133 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_134 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_135 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_136 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_137 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_138 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_139 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_140 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_141 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_142 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_143 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_144 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_145 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_146 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_147 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_148 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_149 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_150 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_151 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_152 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_153 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_154 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_155 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_156 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_157 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_158 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_159 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_160 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_161 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_162 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_163 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_164 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_165 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_166 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_167 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_168 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_169 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_170 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_171 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_172 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_173 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_174 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_175 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_176 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_177 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_178 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_179 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_180 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_181 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_182 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_183 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_184 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_185 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_186 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_187 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_188 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_189 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_190 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_191 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_192 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_193 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_194 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_195 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_196 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_197 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_198 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_199 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_200 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_201 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_202 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_203 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_204 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_205 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_206 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_207 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_208 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_209 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_210 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_211 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_212 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_213 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_214 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_215 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_216 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_217 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_218 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_219 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_220 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_221 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_222 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_223 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_224 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_225 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_226 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_227 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_228 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_229 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_230 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_231 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_232 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_233 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_234 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_235 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_236 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_237 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_238 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_239 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_240 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_241 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_242 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_243 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_244 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_245 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_246 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_247 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_248 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_249 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_250 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_251 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_252 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_253 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_254 {Type IO LastRead -1 FirstWrite -1}
		buffer_V_255 {Type IO LastRead -1 FirstWrite -1}
		eventsready_V {Type IO LastRead -1 FirstWrite -1}
		rdptr_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	candin_V { ap_none {  { candin_V in_data 0 64 } } }
	candout_V { ap_vld {  { candout_V out_data 1 64 }  { candout_V_ap_vld out_vld 1 1 } } }
	firstin { ap_none {  { firstin in_data 0 1 } } }
	lastin { ap_none {  { lastin in_data 0 1 } } }
	valid { ap_none {  { valid in_data 0 1 } } }
	firstout { ap_vld {  { firstout out_data 1 1 }  { firstout_ap_vld out_vld 1 1 } } }
	lastout { ap_vld {  { lastout out_data 1 1 }  { lastout_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
