#include "pcount.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void pcount::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_pp0_stage0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0))) {
            ap_enable_reg_pp0_iter1 = ap_start.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter3 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter3 = ap_enable_reg_pp0_iter2.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        add_ln700_103_reg_7228 = add_ln700_103_fu_5332_p2.read();
        add_ln700_106_reg_7233 = add_ln700_106_fu_5358_p2.read();
        add_ln700_108_reg_7448 = add_ln700_108_fu_6560_p2.read();
        add_ln700_111_reg_7238 = add_ln700_111_fu_5384_p2.read();
        add_ln700_114_reg_7243 = add_ln700_114_fu_5410_p2.read();
        add_ln700_118_reg_7248 = add_ln700_118_fu_5436_p2.read();
        add_ln700_121_reg_7253 = add_ln700_121_fu_5462_p2.read();
        add_ln700_123_reg_7453 = add_ln700_123_fu_6598_p2.read();
        add_ln700_129_reg_7258 = add_ln700_129_fu_5488_p2.read();
        add_ln700_12_reg_7113 = add_ln700_12_fu_4734_p2.read();
        add_ln700_132_reg_7263 = add_ln700_132_fu_5514_p2.read();
        add_ln700_136_reg_7268 = add_ln700_136_fu_5540_p2.read();
        add_ln700_139_reg_7273 = add_ln700_139_fu_5566_p2.read();
        add_ln700_141_reg_7458 = add_ln700_141_fu_6636_p2.read();
        add_ln700_144_reg_7278 = add_ln700_144_fu_5592_p2.read();
        add_ln700_147_reg_7283 = add_ln700_147_fu_5618_p2.read();
        add_ln700_14_reg_7418 = add_ln700_14_fu_6332_p2.read();
        add_ln700_151_reg_7288 = add_ln700_151_fu_5644_p2.read();
        add_ln700_154_reg_7293 = add_ln700_154_fu_5670_p2.read();
        add_ln700_156_reg_7463 = add_ln700_156_fu_6674_p2.read();
        add_ln700_160_reg_7298 = add_ln700_160_fu_5696_p2.read();
        add_ln700_163_reg_7303 = add_ln700_163_fu_5722_p2.read();
        add_ln700_167_reg_7308 = add_ln700_167_fu_5748_p2.read();
        add_ln700_170_reg_7313 = add_ln700_170_fu_5774_p2.read();
        add_ln700_172_reg_7468 = add_ln700_172_fu_6712_p2.read();
        add_ln700_175_reg_7318 = add_ln700_175_fu_5800_p2.read();
        add_ln700_178_reg_7323 = add_ln700_178_fu_5826_p2.read();
        add_ln700_17_reg_7118 = add_ln700_17_fu_4760_p2.read();
        add_ln700_182_reg_7328 = add_ln700_182_fu_5852_p2.read();
        add_ln700_185_reg_7333 = add_ln700_185_fu_5878_p2.read();
        add_ln700_187_reg_7473 = add_ln700_187_fu_6750_p2.read();
        add_ln700_192_reg_7338 = add_ln700_192_fu_5904_p2.read();
        add_ln700_195_reg_7343 = add_ln700_195_fu_5930_p2.read();
        add_ln700_199_reg_7348 = add_ln700_199_fu_5956_p2.read();
        add_ln700_202_reg_7353 = add_ln700_202_fu_5982_p2.read();
        add_ln700_204_reg_7478 = add_ln700_204_fu_6788_p2.read();
        add_ln700_207_reg_7358 = add_ln700_207_fu_6008_p2.read();
        add_ln700_20_reg_7123 = add_ln700_20_fu_4786_p2.read();
        add_ln700_210_reg_7363 = add_ln700_210_fu_6034_p2.read();
        add_ln700_214_reg_7368 = add_ln700_214_fu_6060_p2.read();
        add_ln700_217_reg_7373 = add_ln700_217_fu_6086_p2.read();
        add_ln700_219_reg_7483 = add_ln700_219_fu_6826_p2.read();
        add_ln700_223_reg_7378 = add_ln700_223_fu_6112_p2.read();
        add_ln700_226_reg_7383 = add_ln700_226_fu_6138_p2.read();
        add_ln700_230_reg_7388 = add_ln700_230_fu_6164_p2.read();
        add_ln700_233_reg_7393 = add_ln700_233_fu_6190_p2.read();
        add_ln700_235_reg_7488 = add_ln700_235_fu_6864_p2.read();
        add_ln700_238_reg_7398 = add_ln700_238_fu_6216_p2.read();
        add_ln700_241_reg_7403 = add_ln700_241_fu_6242_p2.read();
        add_ln700_245_reg_7408 = add_ln700_245_fu_6268_p2.read();
        add_ln700_248_reg_7413 = add_ln700_248_fu_6294_p2.read();
        add_ln700_24_reg_7128 = add_ln700_24_fu_4812_p2.read();
        add_ln700_250_reg_7493 = add_ln700_250_fu_6902_p2.read();
        add_ln700_27_reg_7133 = add_ln700_27_fu_4838_p2.read();
        add_ln700_29_reg_7423 = add_ln700_29_fu_6370_p2.read();
        add_ln700_2_reg_7098 = add_ln700_2_fu_4656_p2.read();
        add_ln700_33_reg_7138 = add_ln700_33_fu_4864_p2.read();
        add_ln700_36_reg_7143 = add_ln700_36_fu_4890_p2.read();
        add_ln700_40_reg_7148 = add_ln700_40_fu_4916_p2.read();
        add_ln700_43_reg_7153 = add_ln700_43_fu_4942_p2.read();
        add_ln700_45_reg_7428 = add_ln700_45_fu_6408_p2.read();
        add_ln700_48_reg_7158 = add_ln700_48_fu_4968_p2.read();
        add_ln700_51_reg_7163 = add_ln700_51_fu_4994_p2.read();
        add_ln700_55_reg_7168 = add_ln700_55_fu_5020_p2.read();
        add_ln700_58_reg_7173 = add_ln700_58_fu_5046_p2.read();
        add_ln700_5_reg_7103 = add_ln700_5_fu_4682_p2.read();
        add_ln700_60_reg_7433 = add_ln700_60_fu_6446_p2.read();
        add_ln700_65_reg_7178 = add_ln700_65_fu_5072_p2.read();
        add_ln700_68_reg_7183 = add_ln700_68_fu_5098_p2.read();
        add_ln700_72_reg_7188 = add_ln700_72_fu_5124_p2.read();
        add_ln700_75_reg_7193 = add_ln700_75_fu_5150_p2.read();
        add_ln700_77_reg_7438 = add_ln700_77_fu_6484_p2.read();
        add_ln700_80_reg_7198 = add_ln700_80_fu_5176_p2.read();
        add_ln700_83_reg_7203 = add_ln700_83_fu_5202_p2.read();
        add_ln700_87_reg_7208 = add_ln700_87_fu_5228_p2.read();
        add_ln700_90_reg_7213 = add_ln700_90_fu_5254_p2.read();
        add_ln700_92_reg_7443 = add_ln700_92_fu_6522_p2.read();
        add_ln700_96_reg_7218 = add_ln700_96_fu_5280_p2.read();
        add_ln700_99_reg_7223 = add_ln700_99_fu_5306_p2.read();
        add_ln700_9_reg_7108 = add_ln700_9_fu_4708_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0)) {
        add_ln700_125_reg_7503 = add_ln700_125_fu_6978_p2.read();
        add_ln700_189_reg_7508 = add_ln700_189_fu_7016_p2.read();
        add_ln700_252_reg_7513 = add_ln700_252_fu_7054_p2.read();
        add_ln700_62_reg_7498 = add_ln700_62_fu_6940_p2.read();
    }
}

void pcount::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}

