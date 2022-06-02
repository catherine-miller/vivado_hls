#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("candin_0_V", 64, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("candin_1_V", 64, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("candin_2_V", 64, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("candin_3_V", 64, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("candout_V", 64, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("candout_V_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
	Port_Property("eventstart", 1, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("lastvalid", 1, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("first", 1, hls_out, 7, "ap_vld", "out_data", 1),
	Port_Property("first_ap_vld", 1, hls_out, 7, "ap_vld", "out_vld", 1),
	Port_Property("last", 1, hls_out, 8, "ap_vld", "out_data", 1),
	Port_Property("last_ap_vld", 1, hls_out, 8, "ap_vld", "out_vld", 1),
	Port_Property("ap_return", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "streamv";
