// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "adder.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic adder::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic adder::ap_const_logic_0 = sc_dt::Log_0;
const bool adder::ap_const_boolean_1 = true;

adder::adder(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_start );
    sensitive << ( rhs_V_fu_30_p1 );
    sensitive << ( lhs_V_fu_26_p1 );

    SC_METHOD(thread_lhs_V_fu_26_p1);
    sensitive << ( a_V );

    SC_METHOD(thread_rhs_V_fu_30_p1);
    sensitive << ( b_V );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "adder_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a_V, "(port)a_V");
    sc_trace(mVcdFile, b_V, "(port)b_V");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, rhs_V_fu_30_p1, "rhs_V_fu_30_p1");
    sc_trace(mVcdFile, lhs_V_fu_26_p1, "lhs_V_fu_26_p1");
#endif

    }
    mHdltvinHandle.open("adder.hdltvin.dat");
    mHdltvoutHandle.open("adder.hdltvout.dat");
}

adder::~adder() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void adder::thread_ap_done() {
    ap_done = ap_start.read();
}

void adder::thread_ap_idle() {
    ap_idle = ap_const_logic_1;
}

void adder::thread_ap_ready() {
    ap_ready = ap_start.read();
}

void adder::thread_ap_return() {
    ap_return = (!rhs_V_fu_30_p1.read().is_01() || !lhs_V_fu_26_p1.read().is_01())? sc_lv<11>(): (sc_bigint<11>(rhs_V_fu_30_p1.read()) + sc_bigint<11>(lhs_V_fu_26_p1.read()));
}

void adder::thread_lhs_V_fu_26_p1() {
    lhs_V_fu_26_p1 = esl_sext<11,10>(a_V.read());
}

void adder::thread_rhs_V_fu_30_p1() {
    rhs_V_fu_30_p1 = esl_sext<11,10>(b_V.read());
}

void adder::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a_V\" :  \"" << a_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b_V\" :  \"" << b_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

