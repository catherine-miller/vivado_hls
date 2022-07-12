library std;
use std.textio.all;
use std.env.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

entity testbench is
    --  Port ( );
end testbench;

architecture Behavioral of testbench is
    constant NWORDS : natural := 256;

    subtype word16 is std_logic_vector(15 downto 0);
    subtype word32 is std_logic_vector(31 downto 0);
    subtype word64 is std_logic_vector(63 downto 0);
    type w64s is array(natural range <>) of word64;

    signal clk, rst, done, eventstart0, lastvalid1, eventstart1, first, last, valid : std_logic := '0';
    signal run, bx, npuppi : word16 := (others => '0');
    signal orbit : word32 := (others => '0');
    signal words : w64s(NWORDS - 1 downto 0) := (others => (others => '0'));
    signal words_out : w64s(4 downto 0) := (others => (others => '0'));

    file Fi : text;
    file Fo : text open write_mode is "output-vhdl.txt";
begin

    clk <= not clk after 1.39 ns;

    algo : entity work.stream
        port map(
            ap_clk       => clk,  -- : IN STD_LOGIC;
            ap_rst       => rst,  -- : IN STD_LOGIC;
            ap_start     => '1',  --  : IN STD_LOGIC;
            ap_done      => done, -- : OUT STD_LOGIC;
            ap_idle      => open, --: OUT STD_LOGIC;
            ap_ready     => open, -- : OUT STD_LOGIC;
            cands_0_V    => words(0),
            cands_1_V    => words(1),
            cands_2_V    => words(2),
            cands_3_V    => words(3),
            cands_4_V    => words(4),
            cands_5_V    => words(5),
            cands_6_V    => words(6),
            cands_7_V    => words(7),
            cands_8_V    => words(8),
            cands_9_V    => words(9),
            cands_10_V   => words(10),
            cands_11_V   => words(11),
            cands_12_V   => words(12),
            cands_13_V   => words(13),
            cands_14_V   => words(14),
            cands_15_V   => words(15),
            cands_16_V   => words(16),
            cands_17_V   => words(17),
            cands_18_V   => words(18),
            cands_19_V   => words(19),
            cands_20_V   => words(20),
            cands_21_V   => words(21),
            cands_22_V   => words(22),
            cands_23_V   => words(23),
            cands_24_V   => words(24),
            cands_25_V   => words(25),
            cands_26_V   => words(26),
            cands_27_V   => words(27),
            cands_28_V   => words(28),
            cands_29_V   => words(29),
            cands_30_V   => words(30),
            cands_31_V   => words(31),
            cands_32_V   => words(32),
            cands_33_V   => words(33),
            cands_34_V   => words(34),
            cands_35_V   => words(35),
            cands_36_V   => words(36),
            cands_37_V   => words(37),
            cands_38_V   => words(38),
            cands_39_V   => words(39),
            cands_40_V   => words(40),
            cands_41_V   => words(41),
            cands_42_V   => words(42),
            cands_43_V   => words(43),
            cands_44_V   => words(44),
            cands_45_V   => words(45),
            cands_46_V   => words(46),
            cands_47_V   => words(47),
            cands_48_V   => words(48),
            cands_49_V   => words(49),
            cands_50_V   => words(50),
            cands_51_V   => words(51),
            cands_52_V   => words(52),
            cands_53_V   => words(53),
            cands_54_V   => words(54),
            cands_55_V   => words(55),
            cands_56_V   => words(56),
            cands_57_V   => words(57),
            cands_58_V   => words(58),
            cands_59_V   => words(59),
            cands_60_V   => words(60),
            cands_61_V   => words(61),
            cands_62_V   => words(62),
            cands_63_V   => words(63),
            cands_64_V   => words(64),
            cands_65_V   => words(65),
            cands_66_V   => words(66),
            cands_67_V   => words(67),
            cands_68_V   => words(68),
            cands_69_V   => words(69),
            cands_70_V   => words(70),
            cands_71_V   => words(71),
            cands_72_V   => words(72),
            cands_73_V   => words(73),
            cands_74_V   => words(74),
            cands_75_V   => words(75),
            cands_76_V   => words(76),
            cands_77_V   => words(77),
            cands_78_V   => words(78),
            cands_79_V   => words(79),
            cands_80_V   => words(80),
            cands_81_V   => words(81),
            cands_82_V   => words(82),
            cands_83_V   => words(83),
            cands_84_V   => words(84),
            cands_85_V   => words(85),
            cands_86_V   => words(86),
            cands_87_V   => words(87),
            cands_88_V   => words(88),
            cands_89_V   => words(89),
            cands_90_V   => words(90),
            cands_91_V   => words(91),
            cands_92_V   => words(92),
            cands_93_V   => words(93),
            cands_94_V   => words(94),
            cands_95_V   => words(95),
            cands_96_V   => words(96),
            cands_97_V   => words(97),
            cands_98_V   => words(98),
            cands_99_V   => words(99),
            cands_100_V  => words(100),
            cands_101_V  => words(101),
            cands_102_V  => words(102),
            cands_103_V  => words(103),
            cands_104_V  => words(104),
            cands_105_V  => words(105),
            cands_106_V  => words(106),
            cands_107_V  => words(107),
            cands_108_V  => words(108),
            cands_109_V  => words(109),
            cands_110_V  => words(110),
            cands_111_V  => words(111),
            cands_112_V  => words(112),
            cands_113_V  => words(113),
            cands_114_V  => words(114),
            cands_115_V  => words(115),
            cands_116_V  => words(116),
            cands_117_V  => words(117),
            cands_118_V  => words(118),
            cands_119_V  => words(119),
            cands_120_V  => words(120),
            cands_121_V  => words(121),
            cands_122_V  => words(122),
            cands_123_V  => words(123),
            cands_124_V  => words(124),
            cands_125_V  => words(125),
            cands_126_V  => words(126),
            cands_127_V  => words(127),
            cands_128_V  => words(128),
            cands_129_V  => words(129),
            cands_130_V  => words(130),
            cands_131_V  => words(131),
            cands_132_V  => words(132),
            cands_133_V  => words(133),
            cands_134_V  => words(134),
            cands_135_V  => words(135),
            cands_136_V  => words(136),
            cands_137_V  => words(137),
            cands_138_V  => words(138),
            cands_139_V  => words(139),
            cands_140_V  => words(140),
            cands_141_V  => words(141),
            cands_142_V  => words(142),
            cands_143_V  => words(143),
            cands_144_V  => words(144),
            cands_145_V  => words(145),
            cands_146_V  => words(146),
            cands_147_V  => words(147),
            cands_148_V  => words(148),
            cands_149_V  => words(149),
            cands_150_V  => words(150),
            cands_151_V  => words(151),
            cands_152_V  => words(152),
            cands_153_V  => words(153),
            cands_154_V  => words(154),
            cands_155_V  => words(155),
            cands_156_V  => words(156),
            cands_157_V  => words(157),
            cands_158_V  => words(158),
            cands_159_V  => words(159),
            cands_160_V  => words(160),
            cands_161_V  => words(161),
            cands_162_V  => words(162),
            cands_163_V  => words(163),
            cands_164_V  => words(164),
            cands_165_V  => words(165),
            cands_166_V  => words(166),
            cands_167_V  => words(167),
            cands_168_V  => words(168),
            cands_169_V  => words(169),
            cands_170_V  => words(170),
            cands_171_V  => words(171),
            cands_172_V  => words(172),
            cands_173_V  => words(173),
            cands_174_V  => words(174),
            cands_175_V  => words(175),
            cands_176_V  => words(176),
            cands_177_V  => words(177),
            cands_178_V  => words(178),
            cands_179_V  => words(179),
            cands_180_V  => words(180),
            cands_181_V  => words(181),
            cands_182_V  => words(182),
            cands_183_V  => words(183),
            cands_184_V  => words(184),
            cands_185_V  => words(185),
            cands_186_V  => words(186),
            cands_187_V  => words(187),
            cands_188_V  => words(188),
            cands_189_V  => words(189),
            cands_190_V  => words(190),
            cands_191_V  => words(191),
            cands_192_V  => words(192),
            cands_193_V  => words(193),
            cands_194_V  => words(194),
            cands_195_V  => words(195),
            cands_196_V  => words(196),
            cands_197_V  => words(197),
            cands_198_V  => words(198),
            cands_199_V  => words(199),
            cands_200_V  => words(200),
            cands_201_V  => words(201),
            cands_202_V  => words(202),
            cands_203_V  => words(203),
            cands_204_V  => words(204),
            cands_205_V  => words(205),
            cands_206_V  => words(206),
            cands_207_V  => words(207),
            cands_208_V  => words(208),
            cands_209_V  => words(209),
            cands_210_V  => words(210),
            cands_211_V  => words(211),
            cands_212_V  => words(212),
            cands_213_V  => words(213),
            cands_214_V  => words(214),
            cands_215_V  => words(215),
            cands_216_V  => words(216),
            cands_217_V  => words(217),
            cands_218_V  => words(218),
            cands_219_V  => words(219),
            cands_220_V  => words(220),
            cands_221_V  => words(221),
            cands_222_V  => words(222),
            cands_223_V  => words(223),
            cands_224_V  => words(224),
            cands_225_V  => words(225),
            cands_226_V  => words(226),
            cands_227_V  => words(227),
            cands_228_V  => words(228),
            cands_229_V  => words(229),
            cands_230_V  => words(230),
            cands_231_V  => words(231),
            cands_232_V  => words(232),
            cands_233_V  => words(233),
            cands_234_V  => words(234),
            cands_235_V  => words(235),
            cands_236_V  => words(236),
            cands_237_V  => words(237),
            cands_238_V  => words(238),
            cands_239_V  => words(239),
            cands_240_V  => words(240),
            cands_241_V  => words(241),
            cands_242_V  => words(242),
            cands_243_V  => words(243),
            cands_244_V  => words(244),
            cands_245_V  => words(245),
            cands_246_V  => words(246),
            cands_247_V  => words(247),
            cands_248_V  => words(248),
            cands_249_V  => words(249),
            cands_250_V  => words(250),
            cands_251_V  => words(251),
            cands_252_V  => words(252),
            cands_253_V  => words(253),
            cands_254_V  => words(254),
            cands_255_V  => words(255),
            outcands_0_V => words_out(0), -- : OUT STD_LOGIC_VECTOR (63 downto 0);
            --outcands_0_V_ap_vld : OUT STD_LOGIC;
            outcands_1_V => words_out(1), --: OUT STD_LOGIC_VECTOR (63 downto 0);
            --outcands_1_V_ap_vld : OUT STD_LOGIC;
            outcands_2_V => words_out(2), --: OUT STD_LOGIC_VECTOR (63 downto 0);
            --outcands_2_V_ap_vld : OUT STD_LOGIC;
            outcands_3_V => words_out(3), -- : OUT STD_LOGIC_VECTOR (63 downto 0);
            --outcands_3_V_ap_vld : OUT STD_LOGIC;
            outcands_4_V => words_out(4), -- : OUT STD_LOGIC_VECTOR (63 downto 0);
            --outcands_4_V_ap_vld : OUT STD_LOGIC;
            eventstart => eventstart, --: IN STD_LOGIC;
            lastvalid  => lastvalid,  -- : OUT STD_LOGIC;
            --lastvalid_ap_vld : OUT STD_LOGIC;
            ap_return(0) => returnval --  : OUT STD_LOGIC_VECTOR (0 downto 0) );
        );

    inputs : process
        variable nclocks : natural;
        variable L : line;
        variable space : string(1 to 1);
        variable v_run, v_bx, v_npuppi : word16 := (others => '0');
        variable v_orbit : word32 := (others => '0');
        variable v_words : w64s(NWORDS - 1 downto 0) := (others => (others => '0'));
    begin
        rst <= '1';
        wait for 5 ns;
        wait until rising_edge(clk);
        rst <= '0';

        file_open(Fi, "input1.txt", read_mode);
        while not endfile(Fi) loop
            readline(Fi, L);
            hread(L, v_run);
            read(L, space);
            hread(L, v_orbit);
            read(L, space);
            hread(L, v_bx);
            read(L, space);
            hread(L, v_npuppi);
            for i in 0 to NWORDS - 1 loop
                read(L, space);
                hread(L, v_words(i));
            end loop;
            run <= v_run;
            orbit <= v_orbit;
            bx <= v_bx;
            npuppi <= v_npuppi;
            words <= v_words;
            eventstart <= '1';
            wait until rising_edge(clk);
            for i in 0 to 52 loop
                eventstart <= '0';
                wait until rising_edge(clk);
            end loop;
        end loop;
        wait;
    end process;

    writefile : process (clk)
        variable L : line;
    begin
        if rising_edge(clk) then
            if done = '1' then
                write(L, returnval);
                write(L, string'(" "));
                write(L, lastvalid);
                write(L, string'(" "));
                for i in 0 to 4 loop
                    hwrite(L, words_out(i));
                    write(L, string'(" "));
                end loop;
                writeline(Fo, L);
            end if;
        end if;
    end process;

end Behavioral;