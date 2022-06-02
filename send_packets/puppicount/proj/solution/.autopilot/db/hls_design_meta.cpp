#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("candin_V", 64, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("candout_V", 64, hls_out, 1, "ap_vld", "out_data", 1),
	Port_Property("candout_V_ap_vld", 1, hls_out, 1, "ap_vld", "out_vld", 1),
	Port_Property("firstin", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("lastin", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("valid", 1, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("firstout", 1, hls_out, 5, "ap_vld", "out_data", 1),
	Port_Property("firstout_ap_vld", 1, hls_out, 5, "ap_vld", "out_vld", 1),
	Port_Property("lastout", 1, hls_out, 6, "ap_vld", "out_data", 1),
	Port_Property("lastout_ap_vld", 1, hls_out, 6, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "count";
