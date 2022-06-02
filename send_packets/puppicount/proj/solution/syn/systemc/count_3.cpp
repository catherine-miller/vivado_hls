#include "count.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void count::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"candin_V\" :  \"" << candin_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"candout_V\" :  \"" << candout_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"candout_V_ap_vld\" :  \"" << candout_V_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"firstin\" :  \"" << firstin.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"lastin\" :  \"" << lastin.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"valid\" :  \"" << valid.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"firstout\" :  \"" << firstout.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"firstout_ap_vld\" :  \"" << firstout_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lastout\" :  \"" << lastout.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lastout_ap_vld\" :  \"" << lastout_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

