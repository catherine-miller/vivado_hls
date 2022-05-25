# This script segment is generated automatically by AutoPilot

set id 1
set name isocalc_sdiv_27nsbkb
set corename simcore_sdiv
set op sdiv
set stage_num 31
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 27
set in0_signed 0
set in1_width 16
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 27
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_sdiv] == "ap_gen_simcore_sdiv"} {
eval "ap_gen_simcore_sdiv { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_sdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op sdiv
set corename DivnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


set id 2
set name isocalc_am_submulcud
set corename simcore_am
set op am
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 10
set in0_signed 1
set in1_width 10
set in1_signed 1
set out_width 22
set exp (i0+i1)*c
set arg_lists {i0 {10 1 +} i1 {10 1 -} s {11 1 +} p {22 1 +} c_expval {a-b} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_am] == "ap_gen_simcore_am"} {
eval "ap_gen_simcore_am { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_am, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op am
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 102
set name isocalc_ama_submudEe
set corename simcore_ama
set op ama
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 10
set in0_signed 1
set in1_width 10
set in1_signed 1
set in2_width 22
set in2_signed 1
set out_width 22
set exp (i0+i1)*c+i2
set arg_lists {i0 {10 1 +} i1 {10 1 -} s {11 1 +} m {22 1 +} i2 {22 1 +} p {22 1 +} c_expval {a-b} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_ama] == "ap_gen_simcore_ama"} {
eval "ap_gen_simcore_ama { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_ama, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op ama
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name part_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_part_pt_V \
    op interface \
    ports { part_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name part_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_part_eta_V \
    op interface \
    ports { part_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name part_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_part_phi_V \
    op interface \
    ports { part_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name otherpart_0_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_0_pt_V \
    op interface \
    ports { otherpart_0_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name otherpart_1_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_1_pt_V \
    op interface \
    ports { otherpart_1_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name otherpart_2_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_2_pt_V \
    op interface \
    ports { otherpart_2_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name otherpart_3_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_3_pt_V \
    op interface \
    ports { otherpart_3_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name otherpart_4_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_4_pt_V \
    op interface \
    ports { otherpart_4_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name otherpart_5_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_5_pt_V \
    op interface \
    ports { otherpart_5_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name otherpart_6_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_6_pt_V \
    op interface \
    ports { otherpart_6_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name otherpart_7_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_7_pt_V \
    op interface \
    ports { otherpart_7_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name otherpart_8_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_8_pt_V \
    op interface \
    ports { otherpart_8_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name otherpart_9_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_9_pt_V \
    op interface \
    ports { otherpart_9_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name otherpart_10_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_10_pt_V \
    op interface \
    ports { otherpart_10_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name otherpart_11_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_11_pt_V \
    op interface \
    ports { otherpart_11_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name otherpart_12_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_12_pt_V \
    op interface \
    ports { otherpart_12_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name otherpart_13_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_13_pt_V \
    op interface \
    ports { otherpart_13_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name otherpart_14_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_14_pt_V \
    op interface \
    ports { otherpart_14_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name otherpart_15_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_15_pt_V \
    op interface \
    ports { otherpart_15_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name otherpart_16_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_16_pt_V \
    op interface \
    ports { otherpart_16_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name otherpart_17_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_17_pt_V \
    op interface \
    ports { otherpart_17_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name otherpart_18_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_18_pt_V \
    op interface \
    ports { otherpart_18_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name otherpart_19_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_19_pt_V \
    op interface \
    ports { otherpart_19_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name otherpart_20_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_20_pt_V \
    op interface \
    ports { otherpart_20_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name otherpart_21_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_21_pt_V \
    op interface \
    ports { otherpart_21_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name otherpart_22_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_22_pt_V \
    op interface \
    ports { otherpart_22_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name otherpart_23_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_23_pt_V \
    op interface \
    ports { otherpart_23_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name otherpart_24_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_24_pt_V \
    op interface \
    ports { otherpart_24_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name otherpart_25_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_25_pt_V \
    op interface \
    ports { otherpart_25_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name otherpart_26_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_26_pt_V \
    op interface \
    ports { otherpart_26_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name otherpart_27_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_27_pt_V \
    op interface \
    ports { otherpart_27_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name otherpart_28_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_28_pt_V \
    op interface \
    ports { otherpart_28_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name otherpart_29_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_29_pt_V \
    op interface \
    ports { otherpart_29_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name otherpart_30_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_30_pt_V \
    op interface \
    ports { otherpart_30_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name otherpart_31_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_31_pt_V \
    op interface \
    ports { otherpart_31_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name otherpart_32_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_32_pt_V \
    op interface \
    ports { otherpart_32_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name otherpart_33_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_33_pt_V \
    op interface \
    ports { otherpart_33_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name otherpart_34_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_34_pt_V \
    op interface \
    ports { otherpart_34_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name otherpart_35_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_35_pt_V \
    op interface \
    ports { otherpart_35_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name otherpart_36_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_36_pt_V \
    op interface \
    ports { otherpart_36_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name otherpart_37_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_37_pt_V \
    op interface \
    ports { otherpart_37_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name otherpart_38_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_38_pt_V \
    op interface \
    ports { otherpart_38_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name otherpart_39_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_39_pt_V \
    op interface \
    ports { otherpart_39_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name otherpart_40_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_40_pt_V \
    op interface \
    ports { otherpart_40_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name otherpart_41_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_41_pt_V \
    op interface \
    ports { otherpart_41_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name otherpart_42_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_42_pt_V \
    op interface \
    ports { otherpart_42_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name otherpart_43_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_43_pt_V \
    op interface \
    ports { otherpart_43_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name otherpart_44_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_44_pt_V \
    op interface \
    ports { otherpart_44_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name otherpart_45_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_45_pt_V \
    op interface \
    ports { otherpart_45_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name otherpart_46_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_46_pt_V \
    op interface \
    ports { otherpart_46_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name otherpart_47_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_47_pt_V \
    op interface \
    ports { otherpart_47_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name otherpart_48_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_48_pt_V \
    op interface \
    ports { otherpart_48_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name otherpart_49_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_49_pt_V \
    op interface \
    ports { otherpart_49_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name otherpart_50_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_50_pt_V \
    op interface \
    ports { otherpart_50_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name otherpart_51_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_51_pt_V \
    op interface \
    ports { otherpart_51_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name otherpart_52_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_52_pt_V \
    op interface \
    ports { otherpart_52_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name otherpart_53_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_53_pt_V \
    op interface \
    ports { otherpart_53_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name otherpart_54_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_54_pt_V \
    op interface \
    ports { otherpart_54_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name otherpart_55_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_55_pt_V \
    op interface \
    ports { otherpart_55_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name otherpart_56_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_56_pt_V \
    op interface \
    ports { otherpart_56_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name otherpart_57_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_57_pt_V \
    op interface \
    ports { otherpart_57_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name otherpart_58_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_58_pt_V \
    op interface \
    ports { otherpart_58_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name otherpart_59_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_59_pt_V \
    op interface \
    ports { otherpart_59_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name otherpart_60_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_60_pt_V \
    op interface \
    ports { otherpart_60_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name otherpart_61_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_61_pt_V \
    op interface \
    ports { otherpart_61_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name otherpart_62_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_62_pt_V \
    op interface \
    ports { otherpart_62_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name otherpart_63_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_63_pt_V \
    op interface \
    ports { otherpart_63_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name otherpart_64_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_64_pt_V \
    op interface \
    ports { otherpart_64_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name otherpart_65_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_65_pt_V \
    op interface \
    ports { otherpart_65_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name otherpart_66_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_66_pt_V \
    op interface \
    ports { otherpart_66_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name otherpart_67_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_67_pt_V \
    op interface \
    ports { otherpart_67_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name otherpart_68_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_68_pt_V \
    op interface \
    ports { otherpart_68_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name otherpart_69_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_69_pt_V \
    op interface \
    ports { otherpart_69_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name otherpart_70_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_70_pt_V \
    op interface \
    ports { otherpart_70_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name otherpart_71_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_71_pt_V \
    op interface \
    ports { otherpart_71_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name otherpart_72_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_72_pt_V \
    op interface \
    ports { otherpart_72_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name otherpart_73_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_73_pt_V \
    op interface \
    ports { otherpart_73_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name otherpart_74_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_74_pt_V \
    op interface \
    ports { otherpart_74_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name otherpart_75_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_75_pt_V \
    op interface \
    ports { otherpart_75_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name otherpart_76_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_76_pt_V \
    op interface \
    ports { otherpart_76_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name otherpart_77_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_77_pt_V \
    op interface \
    ports { otherpart_77_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name otherpart_78_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_78_pt_V \
    op interface \
    ports { otherpart_78_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name otherpart_79_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_79_pt_V \
    op interface \
    ports { otherpart_79_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name otherpart_80_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_80_pt_V \
    op interface \
    ports { otherpart_80_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name otherpart_81_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_81_pt_V \
    op interface \
    ports { otherpart_81_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name otherpart_82_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_82_pt_V \
    op interface \
    ports { otherpart_82_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name otherpart_83_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_83_pt_V \
    op interface \
    ports { otherpart_83_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name otherpart_84_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_84_pt_V \
    op interface \
    ports { otherpart_84_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name otherpart_85_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_85_pt_V \
    op interface \
    ports { otherpart_85_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name otherpart_86_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_86_pt_V \
    op interface \
    ports { otherpart_86_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name otherpart_87_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_87_pt_V \
    op interface \
    ports { otherpart_87_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name otherpart_88_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_88_pt_V \
    op interface \
    ports { otherpart_88_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name otherpart_89_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_89_pt_V \
    op interface \
    ports { otherpart_89_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name otherpart_90_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_90_pt_V \
    op interface \
    ports { otherpart_90_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name otherpart_91_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_91_pt_V \
    op interface \
    ports { otherpart_91_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name otherpart_92_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_92_pt_V \
    op interface \
    ports { otherpart_92_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name otherpart_93_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_93_pt_V \
    op interface \
    ports { otherpart_93_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name otherpart_94_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_94_pt_V \
    op interface \
    ports { otherpart_94_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name otherpart_95_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_95_pt_V \
    op interface \
    ports { otherpart_95_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name otherpart_96_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_96_pt_V \
    op interface \
    ports { otherpart_96_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name otherpart_97_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_97_pt_V \
    op interface \
    ports { otherpart_97_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name otherpart_98_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_98_pt_V \
    op interface \
    ports { otherpart_98_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name otherpart_99_pt_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_99_pt_V \
    op interface \
    ports { otherpart_99_pt_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name otherpart_0_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_0_eta_V \
    op interface \
    ports { otherpart_0_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name otherpart_1_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_1_eta_V \
    op interface \
    ports { otherpart_1_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name otherpart_2_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_2_eta_V \
    op interface \
    ports { otherpart_2_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name otherpart_3_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_3_eta_V \
    op interface \
    ports { otherpart_3_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name otherpart_4_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_4_eta_V \
    op interface \
    ports { otherpart_4_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name otherpart_5_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_5_eta_V \
    op interface \
    ports { otherpart_5_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name otherpart_6_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_6_eta_V \
    op interface \
    ports { otherpart_6_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name otherpart_7_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_7_eta_V \
    op interface \
    ports { otherpart_7_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name otherpart_8_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_8_eta_V \
    op interface \
    ports { otherpart_8_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name otherpart_9_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_9_eta_V \
    op interface \
    ports { otherpart_9_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name otherpart_10_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_10_eta_V \
    op interface \
    ports { otherpart_10_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name otherpart_11_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_11_eta_V \
    op interface \
    ports { otherpart_11_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name otherpart_12_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_12_eta_V \
    op interface \
    ports { otherpart_12_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name otherpart_13_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_13_eta_V \
    op interface \
    ports { otherpart_13_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name otherpart_14_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_14_eta_V \
    op interface \
    ports { otherpart_14_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name otherpart_15_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_15_eta_V \
    op interface \
    ports { otherpart_15_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name otherpart_16_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_16_eta_V \
    op interface \
    ports { otherpart_16_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name otherpart_17_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_17_eta_V \
    op interface \
    ports { otherpart_17_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name otherpart_18_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_18_eta_V \
    op interface \
    ports { otherpart_18_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name otherpart_19_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_19_eta_V \
    op interface \
    ports { otherpart_19_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name otherpart_20_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_20_eta_V \
    op interface \
    ports { otherpart_20_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name otherpart_21_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_21_eta_V \
    op interface \
    ports { otherpart_21_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name otherpart_22_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_22_eta_V \
    op interface \
    ports { otherpart_22_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name otherpart_23_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_23_eta_V \
    op interface \
    ports { otherpart_23_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name otherpart_24_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_24_eta_V \
    op interface \
    ports { otherpart_24_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name otherpart_25_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_25_eta_V \
    op interface \
    ports { otherpart_25_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name otherpart_26_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_26_eta_V \
    op interface \
    ports { otherpart_26_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name otherpart_27_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_27_eta_V \
    op interface \
    ports { otherpart_27_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name otherpart_28_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_28_eta_V \
    op interface \
    ports { otherpart_28_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name otherpart_29_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_29_eta_V \
    op interface \
    ports { otherpart_29_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name otherpart_30_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_30_eta_V \
    op interface \
    ports { otherpart_30_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name otherpart_31_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_31_eta_V \
    op interface \
    ports { otherpart_31_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name otherpart_32_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_32_eta_V \
    op interface \
    ports { otherpart_32_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name otherpart_33_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_33_eta_V \
    op interface \
    ports { otherpart_33_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name otherpart_34_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_34_eta_V \
    op interface \
    ports { otherpart_34_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name otherpart_35_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_35_eta_V \
    op interface \
    ports { otherpart_35_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name otherpart_36_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_36_eta_V \
    op interface \
    ports { otherpart_36_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name otherpart_37_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_37_eta_V \
    op interface \
    ports { otherpart_37_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name otherpart_38_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_38_eta_V \
    op interface \
    ports { otherpart_38_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name otherpart_39_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_39_eta_V \
    op interface \
    ports { otherpart_39_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name otherpart_40_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_40_eta_V \
    op interface \
    ports { otherpart_40_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name otherpart_41_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_41_eta_V \
    op interface \
    ports { otherpart_41_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name otherpart_42_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_42_eta_V \
    op interface \
    ports { otherpart_42_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name otherpart_43_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_43_eta_V \
    op interface \
    ports { otherpart_43_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name otherpart_44_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_44_eta_V \
    op interface \
    ports { otherpart_44_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name otherpart_45_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_45_eta_V \
    op interface \
    ports { otherpart_45_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name otherpart_46_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_46_eta_V \
    op interface \
    ports { otherpart_46_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name otherpart_47_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_47_eta_V \
    op interface \
    ports { otherpart_47_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name otherpart_48_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_48_eta_V \
    op interface \
    ports { otherpart_48_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name otherpart_49_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_49_eta_V \
    op interface \
    ports { otherpart_49_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name otherpart_50_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_50_eta_V \
    op interface \
    ports { otherpart_50_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name otherpart_51_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_51_eta_V \
    op interface \
    ports { otherpart_51_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name otherpart_52_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_52_eta_V \
    op interface \
    ports { otherpart_52_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name otherpart_53_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_53_eta_V \
    op interface \
    ports { otherpart_53_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name otherpart_54_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_54_eta_V \
    op interface \
    ports { otherpart_54_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name otherpart_55_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_55_eta_V \
    op interface \
    ports { otherpart_55_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name otherpart_56_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_56_eta_V \
    op interface \
    ports { otherpart_56_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name otherpart_57_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_57_eta_V \
    op interface \
    ports { otherpart_57_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name otherpart_58_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_58_eta_V \
    op interface \
    ports { otherpart_58_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name otherpart_59_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_59_eta_V \
    op interface \
    ports { otherpart_59_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name otherpart_60_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_60_eta_V \
    op interface \
    ports { otherpart_60_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name otherpart_61_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_61_eta_V \
    op interface \
    ports { otherpart_61_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name otherpart_62_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_62_eta_V \
    op interface \
    ports { otherpart_62_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name otherpart_63_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_63_eta_V \
    op interface \
    ports { otherpart_63_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name otherpart_64_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_64_eta_V \
    op interface \
    ports { otherpart_64_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name otherpart_65_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_65_eta_V \
    op interface \
    ports { otherpart_65_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name otherpart_66_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_66_eta_V \
    op interface \
    ports { otherpart_66_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name otherpart_67_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_67_eta_V \
    op interface \
    ports { otherpart_67_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name otherpart_68_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_68_eta_V \
    op interface \
    ports { otherpart_68_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name otherpart_69_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_69_eta_V \
    op interface \
    ports { otherpart_69_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name otherpart_70_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_70_eta_V \
    op interface \
    ports { otherpart_70_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name otherpart_71_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_71_eta_V \
    op interface \
    ports { otherpart_71_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name otherpart_72_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_72_eta_V \
    op interface \
    ports { otherpart_72_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name otherpart_73_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_73_eta_V \
    op interface \
    ports { otherpart_73_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name otherpart_74_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_74_eta_V \
    op interface \
    ports { otherpart_74_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name otherpart_75_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_75_eta_V \
    op interface \
    ports { otherpart_75_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name otherpart_76_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_76_eta_V \
    op interface \
    ports { otherpart_76_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name otherpart_77_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_77_eta_V \
    op interface \
    ports { otherpart_77_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name otherpart_78_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_78_eta_V \
    op interface \
    ports { otherpart_78_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name otherpart_79_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_79_eta_V \
    op interface \
    ports { otherpart_79_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name otherpart_80_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_80_eta_V \
    op interface \
    ports { otherpart_80_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name otherpart_81_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_81_eta_V \
    op interface \
    ports { otherpart_81_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name otherpart_82_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_82_eta_V \
    op interface \
    ports { otherpart_82_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name otherpart_83_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_83_eta_V \
    op interface \
    ports { otherpart_83_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name otherpart_84_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_84_eta_V \
    op interface \
    ports { otherpart_84_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name otherpart_85_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_85_eta_V \
    op interface \
    ports { otherpart_85_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name otherpart_86_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_86_eta_V \
    op interface \
    ports { otherpart_86_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name otherpart_87_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_87_eta_V \
    op interface \
    ports { otherpart_87_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name otherpart_88_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_88_eta_V \
    op interface \
    ports { otherpart_88_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name otherpart_89_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_89_eta_V \
    op interface \
    ports { otherpart_89_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name otherpart_90_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_90_eta_V \
    op interface \
    ports { otherpart_90_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name otherpart_91_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_91_eta_V \
    op interface \
    ports { otherpart_91_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name otherpart_92_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_92_eta_V \
    op interface \
    ports { otherpart_92_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name otherpart_93_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_93_eta_V \
    op interface \
    ports { otherpart_93_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name otherpart_94_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_94_eta_V \
    op interface \
    ports { otherpart_94_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name otherpart_95_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_95_eta_V \
    op interface \
    ports { otherpart_95_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name otherpart_96_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_96_eta_V \
    op interface \
    ports { otherpart_96_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name otherpart_97_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_97_eta_V \
    op interface \
    ports { otherpart_97_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name otherpart_98_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_98_eta_V \
    op interface \
    ports { otherpart_98_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name otherpart_99_eta_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_99_eta_V \
    op interface \
    ports { otherpart_99_eta_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name otherpart_0_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_0_phi_V \
    op interface \
    ports { otherpart_0_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name otherpart_1_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_1_phi_V \
    op interface \
    ports { otherpart_1_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name otherpart_2_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_2_phi_V \
    op interface \
    ports { otherpart_2_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name otherpart_3_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_3_phi_V \
    op interface \
    ports { otherpart_3_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name otherpart_4_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_4_phi_V \
    op interface \
    ports { otherpart_4_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name otherpart_5_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_5_phi_V \
    op interface \
    ports { otherpart_5_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name otherpart_6_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_6_phi_V \
    op interface \
    ports { otherpart_6_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name otherpart_7_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_7_phi_V \
    op interface \
    ports { otherpart_7_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name otherpart_8_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_8_phi_V \
    op interface \
    ports { otherpart_8_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name otherpart_9_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_9_phi_V \
    op interface \
    ports { otherpart_9_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name otherpart_10_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_10_phi_V \
    op interface \
    ports { otherpart_10_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name otherpart_11_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_11_phi_V \
    op interface \
    ports { otherpart_11_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name otherpart_12_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_12_phi_V \
    op interface \
    ports { otherpart_12_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name otherpart_13_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_13_phi_V \
    op interface \
    ports { otherpart_13_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name otherpart_14_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_14_phi_V \
    op interface \
    ports { otherpart_14_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name otherpart_15_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_15_phi_V \
    op interface \
    ports { otherpart_15_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name otherpart_16_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_16_phi_V \
    op interface \
    ports { otherpart_16_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name otherpart_17_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_17_phi_V \
    op interface \
    ports { otherpart_17_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name otherpart_18_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_18_phi_V \
    op interface \
    ports { otherpart_18_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name otherpart_19_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_19_phi_V \
    op interface \
    ports { otherpart_19_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name otherpart_20_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_20_phi_V \
    op interface \
    ports { otherpart_20_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name otherpart_21_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_21_phi_V \
    op interface \
    ports { otherpart_21_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name otherpart_22_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_22_phi_V \
    op interface \
    ports { otherpart_22_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name otherpart_23_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_23_phi_V \
    op interface \
    ports { otherpart_23_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name otherpart_24_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_24_phi_V \
    op interface \
    ports { otherpart_24_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name otherpart_25_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_25_phi_V \
    op interface \
    ports { otherpart_25_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name otherpart_26_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_26_phi_V \
    op interface \
    ports { otherpart_26_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name otherpart_27_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_27_phi_V \
    op interface \
    ports { otherpart_27_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name otherpart_28_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_28_phi_V \
    op interface \
    ports { otherpart_28_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name otherpart_29_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_29_phi_V \
    op interface \
    ports { otherpart_29_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name otherpart_30_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_30_phi_V \
    op interface \
    ports { otherpart_30_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name otherpart_31_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_31_phi_V \
    op interface \
    ports { otherpart_31_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name otherpart_32_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_32_phi_V \
    op interface \
    ports { otherpart_32_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name otherpart_33_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_33_phi_V \
    op interface \
    ports { otherpart_33_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name otherpart_34_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_34_phi_V \
    op interface \
    ports { otherpart_34_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name otherpart_35_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_35_phi_V \
    op interface \
    ports { otherpart_35_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name otherpart_36_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_36_phi_V \
    op interface \
    ports { otherpart_36_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name otherpart_37_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_37_phi_V \
    op interface \
    ports { otherpart_37_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name otherpart_38_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_38_phi_V \
    op interface \
    ports { otherpart_38_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name otherpart_39_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_39_phi_V \
    op interface \
    ports { otherpart_39_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name otherpart_40_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_40_phi_V \
    op interface \
    ports { otherpart_40_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name otherpart_41_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_41_phi_V \
    op interface \
    ports { otherpart_41_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name otherpart_42_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_42_phi_V \
    op interface \
    ports { otherpart_42_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name otherpart_43_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_43_phi_V \
    op interface \
    ports { otherpart_43_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name otherpart_44_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_44_phi_V \
    op interface \
    ports { otherpart_44_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name otherpart_45_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_45_phi_V \
    op interface \
    ports { otherpart_45_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name otherpart_46_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_46_phi_V \
    op interface \
    ports { otherpart_46_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name otherpart_47_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_47_phi_V \
    op interface \
    ports { otherpart_47_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name otherpart_48_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_48_phi_V \
    op interface \
    ports { otherpart_48_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name otherpart_49_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_49_phi_V \
    op interface \
    ports { otherpart_49_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name otherpart_50_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_50_phi_V \
    op interface \
    ports { otherpart_50_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name otherpart_51_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_51_phi_V \
    op interface \
    ports { otherpart_51_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name otherpart_52_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_52_phi_V \
    op interface \
    ports { otherpart_52_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name otherpart_53_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_53_phi_V \
    op interface \
    ports { otherpart_53_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name otherpart_54_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_54_phi_V \
    op interface \
    ports { otherpart_54_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name otherpart_55_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_55_phi_V \
    op interface \
    ports { otherpart_55_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name otherpart_56_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_56_phi_V \
    op interface \
    ports { otherpart_56_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name otherpart_57_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_57_phi_V \
    op interface \
    ports { otherpart_57_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name otherpart_58_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_58_phi_V \
    op interface \
    ports { otherpart_58_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name otherpart_59_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_59_phi_V \
    op interface \
    ports { otherpart_59_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name otherpart_60_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_60_phi_V \
    op interface \
    ports { otherpart_60_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name otherpart_61_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_61_phi_V \
    op interface \
    ports { otherpart_61_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name otherpart_62_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_62_phi_V \
    op interface \
    ports { otherpart_62_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name otherpart_63_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_63_phi_V \
    op interface \
    ports { otherpart_63_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name otherpart_64_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_64_phi_V \
    op interface \
    ports { otherpart_64_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name otherpart_65_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_65_phi_V \
    op interface \
    ports { otherpart_65_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name otherpart_66_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_66_phi_V \
    op interface \
    ports { otherpart_66_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name otherpart_67_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_67_phi_V \
    op interface \
    ports { otherpart_67_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name otherpart_68_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_68_phi_V \
    op interface \
    ports { otherpart_68_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name otherpart_69_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_69_phi_V \
    op interface \
    ports { otherpart_69_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name otherpart_70_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_70_phi_V \
    op interface \
    ports { otherpart_70_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name otherpart_71_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_71_phi_V \
    op interface \
    ports { otherpart_71_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name otherpart_72_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_72_phi_V \
    op interface \
    ports { otherpart_72_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name otherpart_73_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_73_phi_V \
    op interface \
    ports { otherpart_73_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name otherpart_74_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_74_phi_V \
    op interface \
    ports { otherpart_74_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name otherpart_75_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_75_phi_V \
    op interface \
    ports { otherpart_75_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name otherpart_76_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_76_phi_V \
    op interface \
    ports { otherpart_76_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name otherpart_77_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_77_phi_V \
    op interface \
    ports { otherpart_77_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name otherpart_78_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_78_phi_V \
    op interface \
    ports { otherpart_78_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name otherpart_79_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_79_phi_V \
    op interface \
    ports { otherpart_79_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name otherpart_80_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_80_phi_V \
    op interface \
    ports { otherpart_80_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name otherpart_81_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_81_phi_V \
    op interface \
    ports { otherpart_81_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name otherpart_82_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_82_phi_V \
    op interface \
    ports { otherpart_82_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name otherpart_83_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_83_phi_V \
    op interface \
    ports { otherpart_83_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name otherpart_84_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_84_phi_V \
    op interface \
    ports { otherpart_84_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name otherpart_85_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_85_phi_V \
    op interface \
    ports { otherpart_85_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name otherpart_86_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_86_phi_V \
    op interface \
    ports { otherpart_86_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name otherpart_87_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_87_phi_V \
    op interface \
    ports { otherpart_87_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name otherpart_88_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_88_phi_V \
    op interface \
    ports { otherpart_88_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name otherpart_89_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_89_phi_V \
    op interface \
    ports { otherpart_89_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name otherpart_90_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_90_phi_V \
    op interface \
    ports { otherpart_90_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name otherpart_91_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_91_phi_V \
    op interface \
    ports { otherpart_91_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name otherpart_92_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_92_phi_V \
    op interface \
    ports { otherpart_92_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name otherpart_93_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_93_phi_V \
    op interface \
    ports { otherpart_93_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name otherpart_94_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_94_phi_V \
    op interface \
    ports { otherpart_94_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name otherpart_95_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_95_phi_V \
    op interface \
    ports { otherpart_95_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name otherpart_96_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_96_phi_V \
    op interface \
    ports { otherpart_96_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name otherpart_97_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_97_phi_V \
    op interface \
    ports { otherpart_97_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name otherpart_98_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_98_phi_V \
    op interface \
    ports { otherpart_98_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name otherpart_99_phi_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_otherpart_99_phi_V \
    op interface \
    ports { otherpart_99_phi_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 6 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


