#include "isocalc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void isocalc::thread_hdltv_gen() {
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
        mHdltvinHandle << " , " <<  " \"part_pt_V\" :  \"" << part_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"part_eta_V\" :  \"" << part_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"part_phi_V\" :  \"" << part_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_0_pt_V\" :  \"" << otherpart_0_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_1_pt_V\" :  \"" << otherpart_1_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_2_pt_V\" :  \"" << otherpart_2_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_3_pt_V\" :  \"" << otherpart_3_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_4_pt_V\" :  \"" << otherpart_4_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_5_pt_V\" :  \"" << otherpart_5_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_6_pt_V\" :  \"" << otherpart_6_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_7_pt_V\" :  \"" << otherpart_7_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_8_pt_V\" :  \"" << otherpart_8_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_9_pt_V\" :  \"" << otherpart_9_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_10_pt_V\" :  \"" << otherpart_10_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_11_pt_V\" :  \"" << otherpart_11_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_12_pt_V\" :  \"" << otherpart_12_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_13_pt_V\" :  \"" << otherpart_13_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_14_pt_V\" :  \"" << otherpart_14_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_15_pt_V\" :  \"" << otherpart_15_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_16_pt_V\" :  \"" << otherpart_16_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_17_pt_V\" :  \"" << otherpart_17_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_18_pt_V\" :  \"" << otherpart_18_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_19_pt_V\" :  \"" << otherpart_19_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_20_pt_V\" :  \"" << otherpart_20_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_21_pt_V\" :  \"" << otherpart_21_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_22_pt_V\" :  \"" << otherpart_22_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_23_pt_V\" :  \"" << otherpart_23_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_24_pt_V\" :  \"" << otherpart_24_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_25_pt_V\" :  \"" << otherpart_25_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_26_pt_V\" :  \"" << otherpart_26_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_27_pt_V\" :  \"" << otherpart_27_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_28_pt_V\" :  \"" << otherpart_28_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_29_pt_V\" :  \"" << otherpart_29_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_30_pt_V\" :  \"" << otherpart_30_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_31_pt_V\" :  \"" << otherpart_31_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_32_pt_V\" :  \"" << otherpart_32_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_33_pt_V\" :  \"" << otherpart_33_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_34_pt_V\" :  \"" << otherpart_34_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_35_pt_V\" :  \"" << otherpart_35_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_36_pt_V\" :  \"" << otherpart_36_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_37_pt_V\" :  \"" << otherpart_37_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_38_pt_V\" :  \"" << otherpart_38_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_39_pt_V\" :  \"" << otherpart_39_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_40_pt_V\" :  \"" << otherpart_40_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_41_pt_V\" :  \"" << otherpart_41_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_42_pt_V\" :  \"" << otherpart_42_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_43_pt_V\" :  \"" << otherpart_43_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_44_pt_V\" :  \"" << otherpart_44_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_45_pt_V\" :  \"" << otherpart_45_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_46_pt_V\" :  \"" << otherpart_46_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_47_pt_V\" :  \"" << otherpart_47_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_48_pt_V\" :  \"" << otherpart_48_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_49_pt_V\" :  \"" << otherpart_49_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_50_pt_V\" :  \"" << otherpart_50_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_51_pt_V\" :  \"" << otherpart_51_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_52_pt_V\" :  \"" << otherpart_52_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_53_pt_V\" :  \"" << otherpart_53_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_54_pt_V\" :  \"" << otherpart_54_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_55_pt_V\" :  \"" << otherpart_55_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_56_pt_V\" :  \"" << otherpart_56_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_57_pt_V\" :  \"" << otherpart_57_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_58_pt_V\" :  \"" << otherpart_58_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_59_pt_V\" :  \"" << otherpart_59_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_60_pt_V\" :  \"" << otherpart_60_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_61_pt_V\" :  \"" << otherpart_61_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_62_pt_V\" :  \"" << otherpart_62_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_63_pt_V\" :  \"" << otherpart_63_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_64_pt_V\" :  \"" << otherpart_64_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_65_pt_V\" :  \"" << otherpart_65_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_66_pt_V\" :  \"" << otherpart_66_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_67_pt_V\" :  \"" << otherpart_67_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_68_pt_V\" :  \"" << otherpart_68_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_69_pt_V\" :  \"" << otherpart_69_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_70_pt_V\" :  \"" << otherpart_70_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_71_pt_V\" :  \"" << otherpart_71_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_72_pt_V\" :  \"" << otherpart_72_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_73_pt_V\" :  \"" << otherpart_73_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_74_pt_V\" :  \"" << otherpart_74_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_75_pt_V\" :  \"" << otherpart_75_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_76_pt_V\" :  \"" << otherpart_76_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_77_pt_V\" :  \"" << otherpart_77_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_78_pt_V\" :  \"" << otherpart_78_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_79_pt_V\" :  \"" << otherpart_79_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_80_pt_V\" :  \"" << otherpart_80_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_81_pt_V\" :  \"" << otherpart_81_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_82_pt_V\" :  \"" << otherpart_82_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_83_pt_V\" :  \"" << otherpart_83_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_84_pt_V\" :  \"" << otherpart_84_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_85_pt_V\" :  \"" << otherpart_85_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_86_pt_V\" :  \"" << otherpart_86_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_87_pt_V\" :  \"" << otherpart_87_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_88_pt_V\" :  \"" << otherpart_88_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_89_pt_V\" :  \"" << otherpart_89_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_90_pt_V\" :  \"" << otherpart_90_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_91_pt_V\" :  \"" << otherpart_91_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_92_pt_V\" :  \"" << otherpart_92_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_93_pt_V\" :  \"" << otherpart_93_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_94_pt_V\" :  \"" << otherpart_94_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_95_pt_V\" :  \"" << otherpart_95_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_96_pt_V\" :  \"" << otherpart_96_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_97_pt_V\" :  \"" << otherpart_97_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_98_pt_V\" :  \"" << otherpart_98_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_99_pt_V\" :  \"" << otherpart_99_pt_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_0_eta_V\" :  \"" << otherpart_0_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_1_eta_V\" :  \"" << otherpart_1_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_2_eta_V\" :  \"" << otherpart_2_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_3_eta_V\" :  \"" << otherpart_3_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_4_eta_V\" :  \"" << otherpart_4_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_5_eta_V\" :  \"" << otherpart_5_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_6_eta_V\" :  \"" << otherpart_6_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_7_eta_V\" :  \"" << otherpart_7_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_8_eta_V\" :  \"" << otherpart_8_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_9_eta_V\" :  \"" << otherpart_9_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_10_eta_V\" :  \"" << otherpart_10_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_11_eta_V\" :  \"" << otherpart_11_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_12_eta_V\" :  \"" << otherpart_12_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_13_eta_V\" :  \"" << otherpart_13_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_14_eta_V\" :  \"" << otherpart_14_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_15_eta_V\" :  \"" << otherpart_15_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_16_eta_V\" :  \"" << otherpart_16_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_17_eta_V\" :  \"" << otherpart_17_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_18_eta_V\" :  \"" << otherpart_18_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_19_eta_V\" :  \"" << otherpart_19_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_20_eta_V\" :  \"" << otherpart_20_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_21_eta_V\" :  \"" << otherpart_21_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_22_eta_V\" :  \"" << otherpart_22_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_23_eta_V\" :  \"" << otherpart_23_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_24_eta_V\" :  \"" << otherpart_24_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_25_eta_V\" :  \"" << otherpart_25_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_26_eta_V\" :  \"" << otherpart_26_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_27_eta_V\" :  \"" << otherpart_27_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_28_eta_V\" :  \"" << otherpart_28_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_29_eta_V\" :  \"" << otherpart_29_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_30_eta_V\" :  \"" << otherpart_30_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_31_eta_V\" :  \"" << otherpart_31_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_32_eta_V\" :  \"" << otherpart_32_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_33_eta_V\" :  \"" << otherpart_33_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_34_eta_V\" :  \"" << otherpart_34_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_35_eta_V\" :  \"" << otherpart_35_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_36_eta_V\" :  \"" << otherpart_36_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_37_eta_V\" :  \"" << otherpart_37_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_38_eta_V\" :  \"" << otherpart_38_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_39_eta_V\" :  \"" << otherpart_39_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_40_eta_V\" :  \"" << otherpart_40_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_41_eta_V\" :  \"" << otherpart_41_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_42_eta_V\" :  \"" << otherpart_42_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_43_eta_V\" :  \"" << otherpart_43_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_44_eta_V\" :  \"" << otherpart_44_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_45_eta_V\" :  \"" << otherpart_45_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_46_eta_V\" :  \"" << otherpart_46_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_47_eta_V\" :  \"" << otherpart_47_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_48_eta_V\" :  \"" << otherpart_48_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_49_eta_V\" :  \"" << otherpart_49_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_50_eta_V\" :  \"" << otherpart_50_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_51_eta_V\" :  \"" << otherpart_51_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_52_eta_V\" :  \"" << otherpart_52_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_53_eta_V\" :  \"" << otherpart_53_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_54_eta_V\" :  \"" << otherpart_54_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_55_eta_V\" :  \"" << otherpart_55_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_56_eta_V\" :  \"" << otherpart_56_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_57_eta_V\" :  \"" << otherpart_57_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_58_eta_V\" :  \"" << otherpart_58_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_59_eta_V\" :  \"" << otherpart_59_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_60_eta_V\" :  \"" << otherpart_60_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_61_eta_V\" :  \"" << otherpart_61_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_62_eta_V\" :  \"" << otherpart_62_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_63_eta_V\" :  \"" << otherpart_63_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_64_eta_V\" :  \"" << otherpart_64_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_65_eta_V\" :  \"" << otherpart_65_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_66_eta_V\" :  \"" << otherpart_66_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_67_eta_V\" :  \"" << otherpart_67_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_68_eta_V\" :  \"" << otherpart_68_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_69_eta_V\" :  \"" << otherpart_69_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_70_eta_V\" :  \"" << otherpart_70_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_71_eta_V\" :  \"" << otherpart_71_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_72_eta_V\" :  \"" << otherpart_72_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_73_eta_V\" :  \"" << otherpart_73_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_74_eta_V\" :  \"" << otherpart_74_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_75_eta_V\" :  \"" << otherpart_75_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_76_eta_V\" :  \"" << otherpart_76_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_77_eta_V\" :  \"" << otherpart_77_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_78_eta_V\" :  \"" << otherpart_78_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_79_eta_V\" :  \"" << otherpart_79_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_80_eta_V\" :  \"" << otherpart_80_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_81_eta_V\" :  \"" << otherpart_81_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_82_eta_V\" :  \"" << otherpart_82_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_83_eta_V\" :  \"" << otherpart_83_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_84_eta_V\" :  \"" << otherpart_84_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_85_eta_V\" :  \"" << otherpart_85_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_86_eta_V\" :  \"" << otherpart_86_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_87_eta_V\" :  \"" << otherpart_87_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_88_eta_V\" :  \"" << otherpart_88_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_89_eta_V\" :  \"" << otherpart_89_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_90_eta_V\" :  \"" << otherpart_90_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_91_eta_V\" :  \"" << otherpart_91_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_92_eta_V\" :  \"" << otherpart_92_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_93_eta_V\" :  \"" << otherpart_93_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_94_eta_V\" :  \"" << otherpart_94_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_95_eta_V\" :  \"" << otherpart_95_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_96_eta_V\" :  \"" << otherpart_96_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_97_eta_V\" :  \"" << otherpart_97_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_98_eta_V\" :  \"" << otherpart_98_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_99_eta_V\" :  \"" << otherpart_99_eta_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_0_phi_V\" :  \"" << otherpart_0_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_1_phi_V\" :  \"" << otherpart_1_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_2_phi_V\" :  \"" << otherpart_2_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_3_phi_V\" :  \"" << otherpart_3_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_4_phi_V\" :  \"" << otherpart_4_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_5_phi_V\" :  \"" << otherpart_5_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_6_phi_V\" :  \"" << otherpart_6_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_7_phi_V\" :  \"" << otherpart_7_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_8_phi_V\" :  \"" << otherpart_8_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_9_phi_V\" :  \"" << otherpart_9_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_10_phi_V\" :  \"" << otherpart_10_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_11_phi_V\" :  \"" << otherpart_11_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_12_phi_V\" :  \"" << otherpart_12_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_13_phi_V\" :  \"" << otherpart_13_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_14_phi_V\" :  \"" << otherpart_14_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_15_phi_V\" :  \"" << otherpart_15_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_16_phi_V\" :  \"" << otherpart_16_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_17_phi_V\" :  \"" << otherpart_17_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_18_phi_V\" :  \"" << otherpart_18_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_19_phi_V\" :  \"" << otherpart_19_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_20_phi_V\" :  \"" << otherpart_20_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_21_phi_V\" :  \"" << otherpart_21_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_22_phi_V\" :  \"" << otherpart_22_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_23_phi_V\" :  \"" << otherpart_23_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_24_phi_V\" :  \"" << otherpart_24_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_25_phi_V\" :  \"" << otherpart_25_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_26_phi_V\" :  \"" << otherpart_26_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_27_phi_V\" :  \"" << otherpart_27_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_28_phi_V\" :  \"" << otherpart_28_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_29_phi_V\" :  \"" << otherpart_29_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_30_phi_V\" :  \"" << otherpart_30_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_31_phi_V\" :  \"" << otherpart_31_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_32_phi_V\" :  \"" << otherpart_32_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_33_phi_V\" :  \"" << otherpart_33_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_34_phi_V\" :  \"" << otherpart_34_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_35_phi_V\" :  \"" << otherpart_35_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_36_phi_V\" :  \"" << otherpart_36_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_37_phi_V\" :  \"" << otherpart_37_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_38_phi_V\" :  \"" << otherpart_38_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_39_phi_V\" :  \"" << otherpart_39_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_40_phi_V\" :  \"" << otherpart_40_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_41_phi_V\" :  \"" << otherpart_41_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_42_phi_V\" :  \"" << otherpart_42_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_43_phi_V\" :  \"" << otherpart_43_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_44_phi_V\" :  \"" << otherpart_44_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_45_phi_V\" :  \"" << otherpart_45_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_46_phi_V\" :  \"" << otherpart_46_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_47_phi_V\" :  \"" << otherpart_47_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_48_phi_V\" :  \"" << otherpart_48_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_49_phi_V\" :  \"" << otherpart_49_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_50_phi_V\" :  \"" << otherpart_50_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_51_phi_V\" :  \"" << otherpart_51_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_52_phi_V\" :  \"" << otherpart_52_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_53_phi_V\" :  \"" << otherpart_53_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_54_phi_V\" :  \"" << otherpart_54_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_55_phi_V\" :  \"" << otherpart_55_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_56_phi_V\" :  \"" << otherpart_56_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_57_phi_V\" :  \"" << otherpart_57_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_58_phi_V\" :  \"" << otherpart_58_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_59_phi_V\" :  \"" << otherpart_59_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_60_phi_V\" :  \"" << otherpart_60_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_61_phi_V\" :  \"" << otherpart_61_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_62_phi_V\" :  \"" << otherpart_62_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_63_phi_V\" :  \"" << otherpart_63_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_64_phi_V\" :  \"" << otherpart_64_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_65_phi_V\" :  \"" << otherpart_65_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_66_phi_V\" :  \"" << otherpart_66_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_67_phi_V\" :  \"" << otherpart_67_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_68_phi_V\" :  \"" << otherpart_68_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_69_phi_V\" :  \"" << otherpart_69_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_70_phi_V\" :  \"" << otherpart_70_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_71_phi_V\" :  \"" << otherpart_71_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_72_phi_V\" :  \"" << otherpart_72_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_73_phi_V\" :  \"" << otherpart_73_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_74_phi_V\" :  \"" << otherpart_74_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_75_phi_V\" :  \"" << otherpart_75_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_76_phi_V\" :  \"" << otherpart_76_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_77_phi_V\" :  \"" << otherpart_77_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_78_phi_V\" :  \"" << otherpart_78_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_79_phi_V\" :  \"" << otherpart_79_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_80_phi_V\" :  \"" << otherpart_80_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_81_phi_V\" :  \"" << otherpart_81_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_82_phi_V\" :  \"" << otherpart_82_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_83_phi_V\" :  \"" << otherpart_83_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_84_phi_V\" :  \"" << otherpart_84_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_85_phi_V\" :  \"" << otherpart_85_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_86_phi_V\" :  \"" << otherpart_86_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_87_phi_V\" :  \"" << otherpart_87_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_88_phi_V\" :  \"" << otherpart_88_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_89_phi_V\" :  \"" << otherpart_89_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_90_phi_V\" :  \"" << otherpart_90_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_91_phi_V\" :  \"" << otherpart_91_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_92_phi_V\" :  \"" << otherpart_92_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_93_phi_V\" :  \"" << otherpart_93_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_94_phi_V\" :  \"" << otherpart_94_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_95_phi_V\" :  \"" << otherpart_95_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_96_phi_V\" :  \"" << otherpart_96_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_97_phi_V\" :  \"" << otherpart_97_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_98_phi_V\" :  \"" << otherpart_98_phi_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"otherpart_99_phi_V\" :  \"" << otherpart_99_phi_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

