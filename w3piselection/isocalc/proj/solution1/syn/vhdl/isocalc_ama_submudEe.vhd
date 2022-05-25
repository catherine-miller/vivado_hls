-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity isocalc_ama_submudEe_DSP48_1 is
port (
    in0:  in  std_logic_vector(10 - 1 downto 0);
    in1:  in  std_logic_vector(10 - 1 downto 0);
    in2:  in  std_logic_vector(22 - 1 downto 0);
    dout: out std_logic_vector(22 - 1 downto 0));

end entity;

architecture behav of isocalc_ama_submudEe_DSP48_1 is
    signal a       : signed(17-1 downto 0);
    signal d       : signed(17-1 downto 0);
    signal c       : signed(48-1 downto 0);
    signal m       : signed(36-1 downto 0);
    signal p       : signed(48-1 downto 0);
    signal ad      : signed(18-1 downto 0);
begin
a <= signed(resize(signed(in0), 17));
d <= signed(resize(signed(in1), 17));
c <= signed(resize(signed(in2), 48));

ad <= resize(a, 18) - resize(d, 18);
m  <= ad * ad;
p  <= m + c;

dout <= std_logic_vector(resize(unsigned(p), 22));

end architecture;
Library IEEE;
use IEEE.std_logic_1164.all;

entity isocalc_ama_submudEe is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        din2 : IN STD_LOGIC_VECTOR(din2_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of isocalc_ama_submudEe is
    component isocalc_ama_submudEe_DSP48_1 is
        port (
            in0 : IN STD_LOGIC_VECTOR;
            in1 : IN STD_LOGIC_VECTOR;
            in2 : IN STD_LOGIC_VECTOR;
            dout : OUT STD_LOGIC_VECTOR);
    end component;



begin
    isocalc_ama_submudEe_DSP48_1_U :  component isocalc_ama_submudEe_DSP48_1
    port map (
        in0 => din0,
        in1 => din1,
        in2 => din2,
        dout => dout);

end architecture;


