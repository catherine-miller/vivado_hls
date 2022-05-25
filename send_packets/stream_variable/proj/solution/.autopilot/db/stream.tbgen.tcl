set moduleName stream
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
set C_modelName {stream}
set C_modelType { int 1 }
set C_modelArgList {
	{ candin_V int 64 regular {array 4 { 1 1 } 1 1 }  }
	{ candout_V int 64 regular {pointer 1}  }
	{ eventstart uint 1 regular  }
	{ lastvalid uint 1 regular  }
	{ first int 1 regular {pointer 1}  }
	{ last int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "candin_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "candin.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "candout_V", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "candout.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "eventstart", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "eventstart","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "lastvalid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "lastvalid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "first", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "first","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "last", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "last","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "return","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ candin_V_address0 sc_out sc_lv 2 signal 0 } 
	{ candin_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ candin_V_q0 sc_in sc_lv 64 signal 0 } 
	{ candin_V_address1 sc_out sc_lv 2 signal 0 } 
	{ candin_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ candin_V_q1 sc_in sc_lv 64 signal 0 } 
	{ candout_V sc_out sc_lv 64 signal 1 } 
	{ candout_V_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ eventstart sc_in sc_logic 1 signal 2 } 
	{ lastvalid sc_in sc_logic 1 signal 3 } 
	{ first sc_out sc_logic 1 signal 4 } 
	{ first_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ last sc_out sc_logic 1 signal 5 } 
	{ last_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "candin_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "candin_V", "role": "address0" }} , 
 	{ "name": "candin_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "candin_V", "role": "ce0" }} , 
 	{ "name": "candin_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "candin_V", "role": "q0" }} , 
 	{ "name": "candin_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "candin_V", "role": "address1" }} , 
 	{ "name": "candin_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "candin_V", "role": "ce1" }} , 
 	{ "name": "candin_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "candin_V", "role": "q1" }} , 
 	{ "name": "candout_V", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "candout_V", "role": "default" }} , 
 	{ "name": "candout_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "candout_V", "role": "ap_vld" }} , 
 	{ "name": "eventstart", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eventstart", "role": "default" }} , 
 	{ "name": "lastvalid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lastvalid", "role": "default" }} , 
 	{ "name": "first", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "first", "role": "default" }} , 
 	{ "name": "first_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "first", "role": "ap_vld" }} , 
 	{ "name": "last", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last", "role": "default" }} , 
 	{ "name": "last_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "last", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "3",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "candin_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "candout_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eventstart", "Type" : "None", "Direction" : "I"},
			{"Name" : "lastvalid", "Type" : "None", "Direction" : "I"},
			{"Name" : "first", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "last", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_r", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ptrsep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wrptr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "brams_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "brams_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "brams_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "brams_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "rdptr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "readidx", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.brams_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.brams_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.brams_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.brams_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_mux_42_67_bkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	stream {
		candin_V {Type I LastRead 2 FirstWrite -1}
		candout_V {Type O LastRead -1 FirstWrite 5}
		eventstart {Type I LastRead 0 FirstWrite -1}
		lastvalid {Type I LastRead 2 FirstWrite -1}
		first {Type O LastRead -1 FirstWrite 5}
		last {Type O LastRead -1 FirstWrite 5}
		write_r {Type IO LastRead -1 FirstWrite -1}
		ptrsep_V {Type IO LastRead -1 FirstWrite -1}
		wrptr_V {Type IO LastRead -1 FirstWrite -1}
		brams_V_0 {Type IO LastRead -1 FirstWrite -1}
		brams_V_1 {Type IO LastRead -1 FirstWrite -1}
		brams_V_2 {Type IO LastRead -1 FirstWrite -1}
		brams_V_3 {Type IO LastRead -1 FirstWrite -1}
		rdptr_V {Type IO LastRead -1 FirstWrite -1}
		readidx {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	candin_V { ap_memory {  { candin_V_address0 mem_address 1 2 }  { candin_V_ce0 mem_ce 1 1 }  { candin_V_q0 mem_dout 0 64 }  { candin_V_address1 MemPortADDR2 1 2 }  { candin_V_ce1 MemPortCE2 1 1 }  { candin_V_q1 MemPortDOUT2 0 64 } } }
	candout_V { ap_vld {  { candout_V out_data 1 64 }  { candout_V_ap_vld out_vld 1 1 } } }
	eventstart { ap_none {  { eventstart in_data 0 1 } } }
	lastvalid { ap_none {  { lastvalid in_data 0 1 } } }
	first { ap_vld {  { first out_data 1 1 }  { first_ap_vld out_vld 1 1 } } }
	last { ap_vld {  { last out_data 1 1 }  { last_ap_vld out_vld 1 1 } } }
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
