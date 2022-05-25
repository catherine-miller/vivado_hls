-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_V : IN STD_LOGIC_VECTOR (9 downto 0);
    b_V : IN STD_LOGIC_VECTOR (9 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (10 downto 0) );
end;


architecture behav of adder is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "adder,hls_ip_2019_2_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcvu9p-flga2104-2L-e,HLS_INPUT_CLOCK=3.125000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.543000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=11,HLS_VERSION=2019_2_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal rhs_V_fu_30_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal lhs_V_fu_26_p1 : STD_LOGIC_VECTOR (10 downto 0);


begin



    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
    ap_return <= std_logic_vector(signed(rhs_V_fu_30_p1) + signed(lhs_V_fu_26_p1));
        lhs_V_fu_26_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(a_V),11));

        rhs_V_fu_30_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(b_V),11));

end behav;
