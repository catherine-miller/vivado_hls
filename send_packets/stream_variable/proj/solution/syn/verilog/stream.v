// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="stream,hls_ip_2019_2_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcvu9p-flga2104-2L-e,HLS_INPUT_CLOCK=2.778000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=2.154000,HLS_SYN_LAT=5,HLS_SYN_TPT=3,HLS_SYN_MEM=8,HLS_SYN_DSP=0,HLS_SYN_FF=368,HLS_SYN_LUT=1569,HLS_VERSION=2019_2_1}" *)

module stream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        candin_V_address0,
        candin_V_ce0,
        candin_V_q0,
        candin_V_address1,
        candin_V_ce1,
        candin_V_q1,
        candout_V,
        candout_V_ap_vld,
        eventstart,
        lastvalid,
        first,
        first_ap_vld,
        last,
        last_ap_vld,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] candin_V_address0;
output   candin_V_ce0;
input  [63:0] candin_V_q0;
output  [1:0] candin_V_address1;
output   candin_V_ce1;
input  [63:0] candin_V_q1;
output  [63:0] candout_V;
output   candout_V_ap_vld;
input   eventstart;
input   lastvalid;
output   first;
output   first_ap_vld;
output   last;
output   last_ap_vld;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[1:0] candin_V_address0;
reg candin_V_ce0;
reg[1:0] candin_V_address1;
reg candin_V_ce1;
reg[63:0] candout_V;
reg candout_V_ap_vld;
reg first;
reg first_ap_vld;
reg last;
reg last_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state6_pp0_stage2_iter1;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] write_r;
reg   [8:0] ptrsep_V;
reg   [8:0] wrptr_V;
reg   [8:0] brams_V_0_address0;
reg    brams_V_0_ce0;
reg    brams_V_0_we0;
wire   [66:0] brams_V_0_d0;
wire   [66:0] brams_V_0_q0;
reg   [8:0] brams_V_1_address0;
reg    brams_V_1_ce0;
reg    brams_V_1_we0;
wire   [66:0] brams_V_1_d0;
wire   [66:0] brams_V_1_q0;
reg   [8:0] brams_V_2_address0;
reg    brams_V_2_ce0;
reg    brams_V_2_we0;
wire   [66:0] brams_V_2_d0;
wire   [66:0] brams_V_2_q0;
reg   [8:0] brams_V_3_address0;
reg    brams_V_3_ce0;
reg    brams_V_3_we0;
wire   [66:0] brams_V_3_d0;
wire   [66:0] brams_V_3_q0;
reg   [8:0] rdptr_V;
reg   [1:0] readidx;
reg   [8:0] t_V_3_reg_278;
reg   [63:0] reg_370;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] or_ln24_reg_721;
reg   [63:0] reg_374;
reg   [0:0] eventstart_read_reg_714;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] or_ln24_fu_382_p2;
wire   [0:0] grp_fu_358_p2;
reg   [0:0] icmp_ln883_reg_735;
wire   [0:0] grp_fu_364_p2;
reg   [0:0] icmp_ln883_1_reg_741;
reg   [0:0] lastvalid_read_reg_757;
reg   [0:0] icmp_ln883_2_reg_768;
reg   [0:0] icmp_ln883_3_reg_774;
wire   [0:0] or_ln11_fu_473_p2;
wire   [0:0] xor_ln11_fu_478_p2;
wire   [63:0] zext_ln544_fu_506_p1;
reg   [63:0] zext_ln544_reg_790;
wire   [8:0] add_ln700_1_fu_524_p2;
wire   [0:0] icmp_ln895_fu_602_p2;
reg   [0:0] icmp_ln895_reg_801;
wire   [63:0] zext_ln544_1_fu_618_p1;
reg   [63:0] zext_ln544_1_reg_805;
reg   [1:0] readidx_load_reg_811;
wire   [0:0] icmp_ln56_fu_628_p2;
reg   [0:0] icmp_ln56_reg_827;
reg   [66:0] brams_V_0_load_reg_831;
reg   [66:0] brams_V_1_load_reg_836;
wire   [8:0] add_ln701_fu_646_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [0:0] ap_phi_mux_write_flag_2_phi_fu_260_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_write_flag_2_reg_257;
reg   [0:0] ap_phi_reg_pp0_iter1_write_flag_2_reg_257;
wire   [0:0] ap_phi_reg_pp0_iter0_write_new_2_reg_267;
reg   [0:0] ap_phi_reg_pp0_iter1_write_new_2_reg_267;
wire   [8:0] ap_phi_reg_pp0_iter0_t_V_3_reg_278;
reg   [8:0] ap_phi_reg_pp0_iter1_t_V_3_reg_278;
wire   [0:0] ap_phi_reg_pp0_iter0_ptrsep_V_flag_0_reg_288;
reg   [0:0] ap_phi_reg_pp0_iter1_ptrsep_V_flag_0_reg_288;
wire   [0:0] ap_phi_reg_pp0_iter0_ptrsep_V_flag_1_reg_302;
reg   [0:0] ap_phi_reg_pp0_iter1_ptrsep_V_flag_1_reg_302;
wire   [8:0] ap_phi_reg_pp0_iter0_ptrsep_V_new_1_reg_314;
reg   [8:0] ap_phi_reg_pp0_iter1_ptrsep_V_new_1_reg_314;
reg   [0:0] ap_phi_mux_ptrsep_V_flag_2_phi_fu_327_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_ptrsep_V_flag_2_reg_324;
reg   [0:0] ap_phi_reg_pp0_iter1_ptrsep_V_flag_2_reg_324;
reg   [8:0] ap_phi_mux_ptrsep_V_new_2_phi_fu_339_p4;
wire   [8:0] ap_phi_reg_pp0_iter0_ptrsep_V_new_2_reg_335;
reg   [8:0] ap_phi_reg_pp0_iter1_ptrsep_V_new_2_reg_335;
reg   [0:0] ap_phi_mux_p_0258_phi_fu_351_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_p_0258_reg_347;
reg   [0:0] ap_phi_reg_pp0_iter1_p_0258_reg_347;
wire   [0:0] trunc_ln544_1_fu_663_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
reg   [0:0] ap_sig_allocacmp_write_load;
reg   [8:0] ap_sig_allocacmp_t_V_1;
wire   [8:0] add_ln700_fu_512_p2;
wire   [8:0] add_ln700_2_fu_634_p2;
wire   [1:0] add_ln60_fu_697_p2;
wire    ap_block_pp0_stage2_01001;
wire   [0:0] or_ln24_fu_382_p1;
wire   [0:0] xor_ln29_fu_392_p2;
wire   [66:0] or_ln_fu_397_p4;
wire   [66:0] or_ln700_fu_407_p2;
wire   [66:0] select_ln30_fu_413_p3;
wire   [0:0] xor_ln29_1_fu_427_p2;
wire   [66:0] or_ln29_1_fu_432_p4;
wire   [66:0] or_ln700_3_fu_442_p2;
wire   [66:0] select_ln11_fu_420_p3;
wire   [0:0] trunc_ln544_fu_455_p1;
wire   [66:0] or_ln700_4_fu_459_p2;
wire   [0:0] or_ln11_fu_473_p0;
wire   [0:0] xor_ln11_fu_478_p0;
wire   [0:0] select_ln11_3_fu_484_p0;
wire   [66:0] select_ln39_2_fu_448_p3;
wire   [0:0] select_ln11_4_fu_493_p0;
wire   [66:0] select_ln39_3_fu_465_p3;
wire   [0:0] xor_ln29_2_fu_530_p2;
wire   [0:0] xor_ln29_3_fu_545_p2;
wire   [66:0] or_ln29_3_fu_550_p4;
wire   [66:0] or_ln700_1_fu_560_p2;
wire   [66:0] or_ln29_2_fu_535_p4;
wire   [66:0] or_ln700_2_fu_573_p2;
wire   [66:0] select_ln39_fu_566_p3;
wire   [66:0] select_ln39_1_fu_579_p3;
wire   [66:0] tmp_fu_652_p6;
reg   [2:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_44;
reg    ap_condition_320;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 write_r = 1'd0;
#0 ptrsep_V = 9'd0;
#0 wrptr_V = 9'd0;
#0 rdptr_V = 9'd0;
#0 readidx = 2'd0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

stream_brams_V_0 #(
    .DataWidth( 67 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
brams_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(brams_V_0_address0),
    .ce0(brams_V_0_ce0),
    .we0(brams_V_0_we0),
    .d0(brams_V_0_d0),
    .q0(brams_V_0_q0)
);

stream_brams_V_0 #(
    .DataWidth( 67 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
brams_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(brams_V_1_address0),
    .ce0(brams_V_1_ce0),
    .we0(brams_V_1_we0),
    .d0(brams_V_1_d0),
    .q0(brams_V_1_q0)
);

stream_brams_V_0 #(
    .DataWidth( 67 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
brams_V_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(brams_V_2_address0),
    .ce0(brams_V_2_ce0),
    .we0(brams_V_2_we0),
    .d0(brams_V_2_d0),
    .q0(brams_V_2_q0)
);

stream_brams_V_0 #(
    .DataWidth( 67 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
brams_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(brams_V_3_address0),
    .ce0(brams_V_3_ce0),
    .we0(brams_V_3_we0),
    .d0(brams_V_3_d0),
    .q0(brams_V_3_q0)
);

stream_mux_42_67_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 67 ),
    .din1_WIDTH( 67 ),
    .din2_WIDTH( 67 ),
    .din3_WIDTH( 67 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 67 ))
stream_mux_42_67_bkb_U1(
    .din0(brams_V_0_load_reg_831),
    .din1(brams_V_1_load_reg_836),
    .din2(brams_V_2_q0),
    .din3(brams_V_3_q0),
    .din4(readidx_load_reg_811),
    .dout(tmp_fu_652_p6)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln895_reg_801 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_phi_reg_pp0_iter1_p_0258_reg_347 <= 1'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_p_0258_reg_347 <= ap_phi_reg_pp0_iter0_p_0258_reg_347;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_44)) begin
        if ((or_ln24_reg_721 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_ptrsep_V_flag_0_reg_288 <= 1'd0;
        end else if ((or_ln24_reg_721 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_ptrsep_V_flag_0_reg_288 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_ptrsep_V_flag_0_reg_288 <= ap_phi_reg_pp0_iter0_ptrsep_V_flag_0_reg_288;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln56_reg_827 == 1'd0) & (icmp_ln895_reg_801 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_flag_1_reg_302 <= ap_phi_reg_pp0_iter1_ptrsep_V_flag_0_reg_288;
    end else if (((icmp_ln895_reg_801 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln56_reg_827 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_flag_1_reg_302 <= 1'd1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_flag_1_reg_302 <= ap_phi_reg_pp0_iter0_ptrsep_V_flag_1_reg_302;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln895_reg_801 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_flag_2_reg_324 <= ap_phi_reg_pp0_iter1_ptrsep_V_flag_0_reg_288;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_flag_2_reg_324 <= ap_phi_reg_pp0_iter0_ptrsep_V_flag_2_reg_324;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln56_reg_827 == 1'd0) & (icmp_ln895_reg_801 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_new_1_reg_314 <= t_V_3_reg_278;
    end else if (((icmp_ln895_reg_801 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln56_reg_827 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_new_1_reg_314 <= add_ln701_fu_646_p2;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_new_1_reg_314 <= ap_phi_reg_pp0_iter0_ptrsep_V_new_1_reg_314;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln895_reg_801 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_new_2_reg_335 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_ptrsep_V_new_2_reg_335 <= ap_phi_reg_pp0_iter0_ptrsep_V_new_2_reg_335;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_44)) begin
        if ((or_ln24_reg_721 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_t_V_3_reg_278 <= ap_sig_allocacmp_t_V_1;
        end else if ((or_ln24_reg_721 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_t_V_3_reg_278 <= add_ln700_1_fu_524_p2;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_t_V_3_reg_278 <= ap_phi_reg_pp0_iter0_t_V_3_reg_278;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_44)) begin
        if ((or_ln24_reg_721 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_write_flag_2_reg_257 <= eventstart_read_reg_714;
        end else if ((or_ln24_reg_721 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_write_flag_2_reg_257 <= or_ln11_fu_473_p2;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_write_flag_2_reg_257 <= ap_phi_reg_pp0_iter0_write_flag_2_reg_257;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_44)) begin
        if ((or_ln24_reg_721 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_write_new_2_reg_267 <= 1'd1;
        end else if ((or_ln24_reg_721 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_write_new_2_reg_267 <= xor_ln11_fu_478_p2;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_write_new_2_reg_267 <= ap_phi_reg_pp0_iter0_write_new_2_reg_267;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln895_reg_801 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        brams_V_0_load_reg_831 <= brams_V_0_q0;
        brams_V_1_load_reg_836 <= brams_V_1_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        eventstart_read_reg_714 <= eventstart;
        icmp_ln895_reg_801 <= icmp_ln895_fu_602_p2;
        or_ln24_reg_721 <= or_ln24_fu_382_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln895_fu_602_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln56_reg_827 <= icmp_ln56_fu_628_p2;
        readidx_load_reg_811 <= readidx;
        zext_ln544_1_reg_805[8 : 0] <= zext_ln544_1_fu_618_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (or_ln24_reg_721 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln883_1_reg_741 <= grp_fu_364_p2;
        icmp_ln883_reg_735 <= grp_fu_358_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (or_ln24_reg_721 == 1'd1))) begin
        icmp_ln883_2_reg_768 <= grp_fu_358_p2;
        icmp_ln883_3_reg_774 <= grp_fu_364_p2;
        wrptr_V <= add_ln700_fu_512_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lastvalid_read_reg_757 <= lastvalid;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_phi_mux_ptrsep_V_flag_2_phi_fu_327_p4 == 1'd1))) begin
        ptrsep_V <= ap_phi_mux_ptrsep_V_new_2_phi_fu_339_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln895_fu_602_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln56_fu_628_p2 == 1'd1))) begin
        rdptr_V <= add_ln700_2_fu_634_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln895_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        readidx <= add_ln60_fu_697_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (or_ln24_reg_721 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (or_ln24_reg_721 == 1'd1)))) begin
        reg_370 <= candin_V_q0;
        reg_374 <= candin_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_3_reg_278 <= ap_phi_reg_pp0_iter1_t_V_3_reg_278;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_write_flag_2_phi_fu_260_p4 == 1'd1))) begin
        write_r <= ap_phi_reg_pp0_iter1_write_new_2_reg_267;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln24_reg_721 == 1'd1))) begin
        zext_ln544_reg_790[8 : 0] <= zext_ln544_fu_506_p1[8 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln895_reg_801 == 1'd0)) begin
        ap_phi_mux_p_0258_phi_fu_351_p4 = trunc_ln544_1_fu_663_p1;
    end else begin
        ap_phi_mux_p_0258_phi_fu_351_p4 = ap_phi_reg_pp0_iter1_p_0258_reg_347;
    end
end

always @ (*) begin
    if ((icmp_ln895_reg_801 == 1'd0)) begin
        ap_phi_mux_ptrsep_V_flag_2_phi_fu_327_p4 = ap_phi_reg_pp0_iter1_ptrsep_V_flag_1_reg_302;
    end else begin
        ap_phi_mux_ptrsep_V_flag_2_phi_fu_327_p4 = ap_phi_reg_pp0_iter1_ptrsep_V_flag_2_reg_324;
    end
end

always @ (*) begin
    if ((icmp_ln895_reg_801 == 1'd0)) begin
        ap_phi_mux_ptrsep_V_new_2_phi_fu_339_p4 = ap_phi_reg_pp0_iter1_ptrsep_V_new_1_reg_314;
    end else begin
        ap_phi_mux_ptrsep_V_new_2_phi_fu_339_p4 = ap_phi_reg_pp0_iter1_ptrsep_V_new_2_reg_335;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_phi_mux_ptrsep_V_flag_2_phi_fu_327_p4 == 1'd1))) begin
        ap_sig_allocacmp_t_V_1 = ap_phi_mux_ptrsep_V_new_2_phi_fu_339_p4;
    end else begin
        ap_sig_allocacmp_t_V_1 = ptrsep_V;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_phi_mux_write_flag_2_phi_fu_260_p4 == 1'd1))) begin
        ap_sig_allocacmp_write_load = ap_phi_reg_pp0_iter1_write_new_2_reg_267;
    end else begin
        ap_sig_allocacmp_write_load = write_r;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        brams_V_0_address0 = zext_ln544_1_fu_618_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        brams_V_0_address0 = zext_ln544_fu_506_p1;
    end else begin
        brams_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        brams_V_0_ce0 = 1'b1;
    end else begin
        brams_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (or_ln24_reg_721 == 1'd1))) begin
        brams_V_0_we0 = 1'b1;
    end else begin
        brams_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        brams_V_1_address0 = zext_ln544_1_fu_618_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        brams_V_1_address0 = zext_ln544_fu_506_p1;
    end else begin
        brams_V_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        brams_V_1_ce0 = 1'b1;
    end else begin
        brams_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (or_ln24_reg_721 == 1'd1))) begin
        brams_V_1_we0 = 1'b1;
    end else begin
        brams_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            brams_V_2_address0 = zext_ln544_1_reg_805;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            brams_V_2_address0 = zext_ln544_reg_790;
        end else begin
            brams_V_2_address0 = 'bx;
        end
    end else begin
        brams_V_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        brams_V_2_ce0 = 1'b1;
    end else begin
        brams_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln24_reg_721 == 1'd1))) begin
        brams_V_2_we0 = 1'b1;
    end else begin
        brams_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            brams_V_3_address0 = zext_ln544_1_reg_805;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            brams_V_3_address0 = zext_ln544_reg_790;
        end else begin
            brams_V_3_address0 = 'bx;
        end
    end else begin
        brams_V_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        brams_V_3_ce0 = 1'b1;
    end else begin
        brams_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln24_reg_721 == 1'd1))) begin
        brams_V_3_we0 = 1'b1;
    end else begin
        brams_V_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            candin_V_address0 = 64'd2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            candin_V_address0 = 64'd0;
        end else begin
            candin_V_address0 = 'bx;
        end
    end else begin
        candin_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            candin_V_address1 = 64'd3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            candin_V_address1 = 64'd1;
        end else begin
            candin_V_address1 = 'bx;
        end
    end else begin
        candin_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        candin_V_ce0 = 1'b1;
    end else begin
        candin_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        candin_V_ce1 = 1'b1;
    end else begin
        candin_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_320)) begin
        if ((icmp_ln895_reg_801 == 1'd1)) begin
            candout_V = 64'd0;
        end else if ((icmp_ln895_reg_801 == 1'd0)) begin
            candout_V = {{tmp_fu_652_p6[66:3]}};
        end else begin
            candout_V = 'bx;
        end
    end else begin
        candout_V = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln895_reg_801 == 1'd1)) | ((icmp_ln895_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        candout_V_ap_vld = 1'b1;
    end else begin
        candout_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_320)) begin
        if ((icmp_ln895_reg_801 == 1'd1)) begin
            first = 1'd0;
        end else if ((icmp_ln895_reg_801 == 1'd0)) begin
            first = tmp_fu_652_p6[32'd1];
        end else begin
            first = 'bx;
        end
    end else begin
        first = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln895_reg_801 == 1'd1)) | ((icmp_ln895_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        first_ap_vld = 1'b1;
    end else begin
        first_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_320)) begin
        if ((icmp_ln895_reg_801 == 1'd1)) begin
            last = 1'd0;
        end else if ((icmp_ln895_reg_801 == 1'd0)) begin
            last = tmp_fu_652_p6[32'd2];
        end else begin
            last = 'bx;
        end
    end else begin
        last = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln895_reg_801 == 1'd1)) | ((icmp_ln895_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        last_ap_vld = 1'b1;
    end else begin
        last_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((((ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_reset_idle_pp0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln60_fu_697_p2 = (readidx_load_reg_811 + 2'd1);

assign add_ln700_1_fu_524_p2 = (9'd1 + ap_sig_allocacmp_t_V_1);

assign add_ln700_2_fu_634_p2 = (rdptr_V + 9'd1);

assign add_ln700_fu_512_p2 = (9'd1 + wrptr_V);

assign add_ln701_fu_646_p2 = ($signed(t_V_3_reg_278) + $signed(9'd511));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_start == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_320 = ((1'b0 == ap_block_pp0_stage2_01001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_44 = ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_mux_write_flag_2_phi_fu_260_p4 = ap_phi_reg_pp0_iter1_write_flag_2_reg_257;

assign ap_phi_reg_pp0_iter0_p_0258_reg_347 = 'bx;

assign ap_phi_reg_pp0_iter0_ptrsep_V_flag_0_reg_288 = 'bx;

assign ap_phi_reg_pp0_iter0_ptrsep_V_flag_1_reg_302 = 'bx;

assign ap_phi_reg_pp0_iter0_ptrsep_V_flag_2_reg_324 = 'bx;

assign ap_phi_reg_pp0_iter0_ptrsep_V_new_1_reg_314 = 'bx;

assign ap_phi_reg_pp0_iter0_ptrsep_V_new_2_reg_335 = 'bx;

assign ap_phi_reg_pp0_iter0_t_V_3_reg_278 = 'bx;

assign ap_phi_reg_pp0_iter0_write_flag_2_reg_257 = 'bx;

assign ap_phi_reg_pp0_iter0_write_new_2_reg_267 = 'bx;

assign ap_return = ap_phi_mux_p_0258_phi_fu_351_p4;

assign brams_V_0_d0 = ((select_ln11_4_fu_493_p0[0:0] === 1'b1) ? select_ln39_3_fu_465_p3 : select_ln11_fu_420_p3);

assign brams_V_1_d0 = ((select_ln11_3_fu_484_p0[0:0] === 1'b1) ? select_ln39_2_fu_448_p3 : or_ln29_1_fu_432_p4);

assign brams_V_2_d0 = ((lastvalid_read_reg_757[0:0] === 1'b1) ? select_ln39_1_fu_579_p3 : or_ln29_2_fu_535_p4);

assign brams_V_3_d0 = ((lastvalid_read_reg_757[0:0] === 1'b1) ? select_ln39_fu_566_p3 : or_ln29_3_fu_550_p4);

assign grp_fu_358_p2 = ((candin_V_q0 == 64'd0) ? 1'b1 : 1'b0);

assign grp_fu_364_p2 = ((candin_V_q1 == 64'd0) ? 1'b1 : 1'b0);

assign icmp_ln56_fu_628_p2 = ((readidx == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln895_fu_602_p2 = ((ap_phi_reg_pp0_iter1_t_V_3_reg_278 == 9'd0) ? 1'b1 : 1'b0);

assign or_ln11_fu_473_p0 = lastvalid;

assign or_ln11_fu_473_p2 = (or_ln11_fu_473_p0 | eventstart_read_reg_714);

assign or_ln24_fu_382_p1 = eventstart;

assign or_ln24_fu_382_p2 = (or_ln24_fu_382_p1 | ap_sig_allocacmp_write_load);

assign or_ln29_1_fu_432_p4 = {{{reg_374}, {2'd0}}, {xor_ln29_1_fu_427_p2}};

assign or_ln29_2_fu_535_p4 = {{{reg_370}, {2'd0}}, {xor_ln29_2_fu_530_p2}};

assign or_ln29_3_fu_550_p4 = {{{reg_374}, {2'd0}}, {xor_ln29_3_fu_545_p2}};

assign or_ln700_1_fu_560_p2 = (or_ln29_3_fu_550_p4 | 67'd4);

assign or_ln700_2_fu_573_p2 = (or_ln29_2_fu_535_p4 | 67'd4);

assign or_ln700_3_fu_442_p2 = (or_ln29_1_fu_432_p4 | 67'd4);

assign or_ln700_4_fu_459_p2 = (select_ln11_fu_420_p3 | 67'd4);

assign or_ln700_fu_407_p2 = (or_ln_fu_397_p4 | 67'd2);

assign or_ln_fu_397_p4 = {{{reg_370}, {2'd0}}, {xor_ln29_fu_392_p2}};

assign select_ln11_3_fu_484_p0 = lastvalid;

assign select_ln11_4_fu_493_p0 = lastvalid;

assign select_ln11_fu_420_p3 = ((eventstart_read_reg_714[0:0] === 1'b1) ? select_ln30_fu_413_p3 : or_ln_fu_397_p4);

assign select_ln30_fu_413_p3 = ((icmp_ln883_reg_735[0:0] === 1'b1) ? or_ln_fu_397_p4 : or_ln700_fu_407_p2);

assign select_ln39_1_fu_579_p3 = ((icmp_ln883_2_reg_768[0:0] === 1'b1) ? or_ln29_2_fu_535_p4 : or_ln700_2_fu_573_p2);

assign select_ln39_2_fu_448_p3 = ((icmp_ln883_1_reg_741[0:0] === 1'b1) ? or_ln29_1_fu_432_p4 : or_ln700_3_fu_442_p2);

assign select_ln39_3_fu_465_p3 = ((trunc_ln544_fu_455_p1[0:0] === 1'b1) ? or_ln700_4_fu_459_p2 : select_ln11_fu_420_p3);

assign select_ln39_fu_566_p3 = ((icmp_ln883_3_reg_774[0:0] === 1'b1) ? or_ln29_3_fu_550_p4 : or_ln700_1_fu_560_p2);

assign trunc_ln544_1_fu_663_p1 = tmp_fu_652_p6[0:0];

assign trunc_ln544_fu_455_p1 = select_ln11_fu_420_p3[0:0];

assign xor_ln11_fu_478_p0 = lastvalid;

assign xor_ln11_fu_478_p2 = (xor_ln11_fu_478_p0 ^ 1'd1);

assign xor_ln29_1_fu_427_p2 = (icmp_ln883_1_reg_741 ^ 1'd1);

assign xor_ln29_2_fu_530_p2 = (icmp_ln883_2_reg_768 ^ 1'd1);

assign xor_ln29_3_fu_545_p2 = (icmp_ln883_3_reg_774 ^ 1'd1);

assign xor_ln29_fu_392_p2 = (icmp_ln883_reg_735 ^ 1'd1);

assign zext_ln544_1_fu_618_p1 = rdptr_V;

assign zext_ln544_fu_506_p1 = wrptr_V;

always @ (posedge ap_clk) begin
    zext_ln544_reg_790[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln544_1_reg_805[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end

endmodule //stream
