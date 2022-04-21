-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/21/2022 21:26:05"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOP_MODULE IS
    PORT (
	clk : IN std_logic;
	theta : IN std_logic_vector(11 DOWNTO 0);
	out_cos : OUT std_logic_vector(11 DOWNTO 0);
	out_sin : OUT std_logic_vector(11 DOWNTO 0)
	);
END TOP_MODULE;

-- Design Ports Information
-- out_cos[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[7]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[8]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[9]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[10]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cos[11]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[4]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[5]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[6]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[7]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[8]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[9]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[10]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sin[11]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[11]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[10]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[9]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[8]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[6]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[4]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TOP_MODULE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_theta : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_out_cos : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_out_sin : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \out_cos[0]~output_o\ : std_logic;
SIGNAL \out_cos[1]~output_o\ : std_logic;
SIGNAL \out_cos[2]~output_o\ : std_logic;
SIGNAL \out_cos[3]~output_o\ : std_logic;
SIGNAL \out_cos[4]~output_o\ : std_logic;
SIGNAL \out_cos[5]~output_o\ : std_logic;
SIGNAL \out_cos[6]~output_o\ : std_logic;
SIGNAL \out_cos[7]~output_o\ : std_logic;
SIGNAL \out_cos[8]~output_o\ : std_logic;
SIGNAL \out_cos[9]~output_o\ : std_logic;
SIGNAL \out_cos[10]~output_o\ : std_logic;
SIGNAL \out_cos[11]~output_o\ : std_logic;
SIGNAL \out_sin[0]~output_o\ : std_logic;
SIGNAL \out_sin[1]~output_o\ : std_logic;
SIGNAL \out_sin[2]~output_o\ : std_logic;
SIGNAL \out_sin[3]~output_o\ : std_logic;
SIGNAL \out_sin[4]~output_o\ : std_logic;
SIGNAL \out_sin[5]~output_o\ : std_logic;
SIGNAL \out_sin[6]~output_o\ : std_logic;
SIGNAL \out_sin[7]~output_o\ : std_logic;
SIGNAL \out_sin[8]~output_o\ : std_logic;
SIGNAL \out_sin[9]~output_o\ : std_logic;
SIGNAL \out_sin[10]~output_o\ : std_logic;
SIGNAL \out_sin[11]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \fsm0|current_state.S1~0_combout\ : std_logic;
SIGNAL \fsm0|current_state.S1~q\ : std_logic;
SIGNAL \fsm0|current_state.S2~0_combout\ : std_logic;
SIGNAL \fsm0|current_state.S2~q\ : std_logic;
SIGNAL \fsm0|current_state.S3~q\ : std_logic;
SIGNAL \theta[11]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \fsm0|Selector0~0_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \theta[10]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \theta[9]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \theta[8]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \theta[7]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \theta[6]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \theta[5]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \theta[4]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \theta[3]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \theta[2]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \theta[1]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \theta[0]~input_o\ : std_logic;
SIGNAL \ce0|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \fsm0|Selector1~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux2~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux0~1_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \y_1[10]~feeder_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux1~1_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \y_1[9]~feeder_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux2~1_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux1~2_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux3~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \y_1[8]~feeder_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux3~1_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux2~2_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux4~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \y_1[7]~feeder_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux4~1_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux3~2_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux5~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \y_1[6]~feeder_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux5~1_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux4~2_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux6~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux6~1_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux5~2_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux7~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux7~1_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux6~2_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux8~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux8~1_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \y_1[2]~feeder_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux9~1_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux7~2_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux9~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux10~1_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux8~2_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux10~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux9~2_combout\ : std_logic;
SIGNAL \ce1|MUX3_3|Mux11~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \z_1[0]~feeder_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce1|MUX3_1|Mux11~1_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux0~1_combout\ : std_logic;
SIGNAL \fsm0|Selector2~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_3|Mux3~0_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \y_2[10]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux1~1_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \y_2[9]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux2~1_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \y_2[8]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux3~1_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \y_2[7]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux4~1_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux1~2_combout\ : std_logic;
SIGNAL \ce2|MUX3_3|Mux4~0_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \y_2[6]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux5~1_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux2~2_combout\ : std_logic;
SIGNAL \ce2|MUX3_3|Mux5~0_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \y_2[5]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux6~1_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux3~2_combout\ : std_logic;
SIGNAL \ce2|MUX3_3|Mux6~0_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \y_2[4]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux7~1_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux4~2_combout\ : std_logic;
SIGNAL \ce2|MUX3_3|Mux7~0_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux5~2_combout\ : std_logic;
SIGNAL \ce2|MUX3_3|Mux8~0_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \y_2[3]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux8~1_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux6~2_combout\ : std_logic;
SIGNAL \ce2|MUX3_3|Mux9~0_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \z_2[2]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux9~1_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux7~2_combout\ : std_logic;
SIGNAL \ce2|MUX3_3|Mux10~0_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \z_2[1]~feeder_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux10~1_combout\ : std_logic;
SIGNAL \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux11~1_combout\ : std_logic;
SIGNAL \ce2|MUX3_1|Mux8~2_combout\ : std_logic;
SIGNAL \ce2|MUX3_3|Mux11~0_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \fsm0|Selector3~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_3|Mux3~0_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux0~1_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \y_3[10]~feeder_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux1~1_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux2~1_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \y_3[8]~feeder_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux3~1_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \y_3[7]~feeder_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux4~1_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux5~1_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux1~2_combout\ : std_logic;
SIGNAL \ce3|MUX3_3|Mux5~0_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux2~2_combout\ : std_logic;
SIGNAL \ce3|MUX3_3|Mux6~0_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \y_3[5]~feeder_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux6~1_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux3~2_combout\ : std_logic;
SIGNAL \ce3|MUX3_3|Mux7~0_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \y_3[4]~feeder_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux7~1_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux4~2_combout\ : std_logic;
SIGNAL \ce3|MUX3_3|Mux8~0_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux8~1_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \z_3[2]~feeder_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux9~1_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux5~2_combout\ : std_logic;
SIGNAL \ce3|MUX3_3|Mux9~0_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \z_3[1]~feeder_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux10~1_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux6~2_combout\ : std_logic;
SIGNAL \ce3|MUX3_3|Mux10~0_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \z_3[0]~feeder_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux11~1_combout\ : std_logic;
SIGNAL \ce3|MUX3_1|Mux7~2_combout\ : std_logic;
SIGNAL \ce3|MUX3_3|Mux11~0_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux0~2_combout\ : std_logic;
SIGNAL \ce4|MUX3_3|Mux4~0_combout\ : std_logic;
SIGNAL \z_4[11]~feeder_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux0~1_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \y_4[10]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux1~1_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \y_4[9]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux2~1_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \y_4[8]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux3~1_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \y_4[7]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux4~1_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \z_4[6]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux5~1_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \y_4[5]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux6~1_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux1~2_combout\ : std_logic;
SIGNAL \ce4|MUX3_3|Mux6~0_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \z_4[4]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux7~1_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux2~2_combout\ : std_logic;
SIGNAL \ce4|MUX3_3|Mux7~0_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux8~1_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux3~2_combout\ : std_logic;
SIGNAL \ce4|MUX3_3|Mux8~0_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \z_4[2]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux9~1_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux4~2_combout\ : std_logic;
SIGNAL \ce4|MUX3_3|Mux9~0_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \z_4[1]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux10~1_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux5~2_combout\ : std_logic;
SIGNAL \ce4|MUX3_3|Mux10~0_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux6~2_combout\ : std_logic;
SIGNAL \ce4|MUX3_3|Mux11~0_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \z_4[0]~feeder_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce4|MUX3_1|Mux11~1_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \fsm0|Selector5~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_3|Mux5~0_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux0~1_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux1~1_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux2~1_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \y_5[8]~feeder_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux3~1_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \y_5[7]~feeder_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux4~1_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux5~1_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux6~1_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux7~1_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux1~2_combout\ : std_logic;
SIGNAL \ce5|MUX3_3|Mux7~0_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux8~1_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux2~2_combout\ : std_logic;
SIGNAL \ce5|MUX3_3|Mux8~0_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \z_5[2]~feeder_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux9~1_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux3~2_combout\ : std_logic;
SIGNAL \ce5|MUX3_3|Mux9~0_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \z_5[1]~feeder_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux10~1_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux4~2_combout\ : std_logic;
SIGNAL \ce5|MUX3_3|Mux10~0_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \z_5[0]~feeder_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux11~1_combout\ : std_logic;
SIGNAL \ce5|MUX3_1|Mux5~2_combout\ : std_logic;
SIGNAL \ce5|MUX3_3|Mux11~0_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \fsm0|Selector6~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_3|Mux6~0_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux0~1_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \y_6[10]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux1~1_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \y_6[9]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux2~1_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \y_6[8]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux3~1_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \y_6[7]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux4~1_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \z_6[6]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux5~1_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux6~1_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \z_6[4]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux7~1_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \z_6[3]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux8~1_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux1~2_combout\ : std_logic;
SIGNAL \ce6|MUX3_3|Mux8~0_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux2~2_combout\ : std_logic;
SIGNAL \ce6|MUX3_3|Mux9~0_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \z_6[2]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux9~1_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux3~2_combout\ : std_logic;
SIGNAL \ce6|MUX3_3|Mux10~0_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \z_6[1]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux10~1_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux4~2_combout\ : std_logic;
SIGNAL \ce6|MUX3_3|Mux11~0_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \z_6[0]~feeder_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce6|MUX3_1|Mux11~1_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \y_7[8]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux3~2_combout\ : std_logic;
SIGNAL \ce7|MUX3_3|Mux11~0_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \x_7[0]~feeder_combout\ : std_logic;
SIGNAL \z_7[0]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux11~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \z_8[0]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux11~1_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux0~1_combout\ : std_logic;
SIGNAL \fsm0|Selector7~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_3|Mux7~0_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \y_7[10]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux1~1_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \y_7[9]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux2~1_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux3~1_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \z_7[7]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux4~1_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \z_7[6]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux5~1_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \z_7[5]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux6~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \z_7[4]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux7~1_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \z_7[3]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux8~1_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \z_7[2]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux9~1_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux1~2_combout\ : std_logic;
SIGNAL \ce7|MUX3_3|Mux9~0_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \z_7[1]~feeder_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux10~1_combout\ : std_logic;
SIGNAL \ce7|MUX3_1|Mux2~2_combout\ : std_logic;
SIGNAL \ce7|MUX3_3|Mux10~0_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \y_8[9]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux2~2_combout\ : std_logic;
SIGNAL \ce8|MUX3_3|Mux11~0_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \z_9[0]~feeder_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux11~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux11~1_combout\ : std_logic;
SIGNAL \fsm0|Selector8~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_3|Mux8~0_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux0~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux1~1_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux2~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \z_8[8]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux3~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \z_8[7]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux4~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \z_8[6]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux5~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \z_8[5]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux6~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \z_8[4]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux7~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \z_8[3]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux8~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \z_8[2]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux9~1_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux1~2_combout\ : std_logic;
SIGNAL \ce8|MUX3_3|Mux10~0_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \z_8[1]~feeder_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \ce8|MUX3_1|Mux10~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \z_9[11]~feeder_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \y_9[10]~feeder_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux1~2_combout\ : std_logic;
SIGNAL \ce9|MUX3_3|Mux11~0_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \fsm0|Selector9~0_combout\ : std_logic;
SIGNAL \ce9|reg2_out[1]~feeder_combout\ : std_logic;
SIGNAL \ce9|MUX3_3|Mux9~0_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux0~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux0~1_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux1~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux1~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \z_9[9]~feeder_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux2~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux2~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \z_9[8]~feeder_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux3~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux3~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \z_9[7]~feeder_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux4~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux4~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \z_9[6]~feeder_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux5~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux5~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux6~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux6~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \z_9[4]~feeder_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux7~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux7~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \z_9[3]~feeder_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux8~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux8~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux9~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux9~1_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux10~0_combout\ : std_logic;
SIGNAL \ce9|MUX3_1|Mux10~1_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \y_10[11]~feeder_combout\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \out_cos[0]~reg0\ : std_logic;
SIGNAL \out_cos[1]~reg0\ : std_logic;
SIGNAL \out_cos[2]~reg0\ : std_logic;
SIGNAL \out_cos[3]~reg0\ : std_logic;
SIGNAL \out_cos[4]~reg0\ : std_logic;
SIGNAL \out_cos[5]~reg0\ : std_logic;
SIGNAL \out_cos[6]~reg0\ : std_logic;
SIGNAL \out_cos[7]~reg0\ : std_logic;
SIGNAL \out_cos[8]~reg0\ : std_logic;
SIGNAL \out_cos[9]~reg0\ : std_logic;
SIGNAL \out_cos[10]~reg0\ : std_logic;
SIGNAL \out_cos[11]~reg0\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \out_sin[0]~reg0\ : std_logic;
SIGNAL \out_sin[1]~reg0\ : std_logic;
SIGNAL \out_sin[2]~reg0\ : std_logic;
SIGNAL \out_sin[3]~reg0\ : std_logic;
SIGNAL \out_sin[4]~reg0\ : std_logic;
SIGNAL \out_sin[5]~reg0\ : std_logic;
SIGNAL \out_sin[6]~reg0\ : std_logic;
SIGNAL \out_sin[7]~reg0\ : std_logic;
SIGNAL \out_sin[8]~reg0\ : std_logic;
SIGNAL \out_sin[9]~reg0\ : std_logic;
SIGNAL \out_sin[10]~reg0\ : std_logic;
SIGNAL \out_sin[11]~reg0\ : std_logic;
SIGNAL z_9 : std_logic_vector(11 DOWNTO 0);
SIGNAL z_10 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce10_end|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL z_1 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce10_end|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL y_9 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce1|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL y_10 : std_logic_vector(11 DOWNTO 0);
SIGNAL x_9 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce6|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL x_10 : std_logic_vector(11 DOWNTO 0);
SIGNAL y_5 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce9|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL y_2 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce9|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce7|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL z_8 : std_logic_vector(11 DOWNTO 0);
SIGNAL y_8 : std_logic_vector(11 DOWNTO 0);
SIGNAL x_8 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce8|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce8|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL z_7 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce2|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce3|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL y_7 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce2|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce6|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL x_7 : std_logic_vector(11 DOWNTO 0);
SIGNAL z_3 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce7|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce3|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL z_6 : std_logic_vector(11 DOWNTO 0);
SIGNAL y_6 : std_logic_vector(11 DOWNTO 0);
SIGNAL x_6 : std_logic_vector(11 DOWNTO 0);
SIGNAL z_5 : std_logic_vector(11 DOWNTO 0);
SIGNAL x_5 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce5|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce5|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL z_4 : std_logic_vector(11 DOWNTO 0);
SIGNAL y_4 : std_logic_vector(11 DOWNTO 0);
SIGNAL x_4 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce4|reg1_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL z_zero : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce4|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL y_3 : std_logic_vector(11 DOWNTO 0);
SIGNAL x_3 : std_logic_vector(11 DOWNTO 0);
SIGNAL z_2 : std_logic_vector(11 DOWNTO 0);
SIGNAL x_2 : std_logic_vector(11 DOWNTO 0);
SIGNAL y_1 : std_logic_vector(11 DOWNTO 0);
SIGNAL \ce1|reg2_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL x_1 : std_logic_vector(11 DOWNTO 0);
SIGNAL \fsm0|ALT_INV_current_state.S1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_theta <= theta;
out_cos <= ww_out_cos;
out_sin <= ww_out_sin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~dataout\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~11\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~10\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~9\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~8\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~7\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~6\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~5\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~4\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~3\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~2\ & \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~1\ & 
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~0\);

\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~1\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~2\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~3\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~4\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~5\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~6\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~7\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~8\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~9\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~10\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~11\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~dataout\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT1\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT2\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT3\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT4\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT5\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT6\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT7\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT8\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT9\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT10\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2~DATAOUT11\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\out_cos[0]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\out_cos[1]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\out_cos[2]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\out_cos[3]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\out_cos[4]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\out_cos[5]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\out_cos[6]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\out_cos[7]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\out_cos[8]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\out_cos[9]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\out_cos[10]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\out_cos[11]~reg0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~dataout\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~11\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~10\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~9\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~8\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~7\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~6\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~5\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~4\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~3\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~2\ & \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~1\ & 
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~0\);

\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~1\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~2\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~3\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~4\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~5\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~6\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~7\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~8\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~9\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~10\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~11\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~dataout\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT1\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT2\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT3\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT4\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT5\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT6\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT7\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT8\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT9\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT10\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2~DATAOUT11\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\out_sin[0]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\out_sin[1]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\out_sin[2]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\out_sin[3]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\out_sin[4]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\out_sin[5]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\out_sin[6]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\out_sin[7]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\out_sin[8]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\out_sin[9]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\out_sin[10]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\out_sin[11]~reg0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ & \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ & 
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ & \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ & \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ & 
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ & \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ & \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ & 
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ & \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ & \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ & 
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ & gnd & gnd & gnd & gnd & gnd & gnd);

\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~0\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~1\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~2\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~3\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~4\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~5\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~6\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~7\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~8\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~9\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~10\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~11\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ <= \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ & \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ & 
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ & \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ & \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ & 
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ & \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ & \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ & 
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ & \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ & \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ & 
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ & gnd & gnd & gnd & gnd & gnd & gnd);

\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~0\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~1\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~2\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~3\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~4\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~5\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~6\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~7\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~8\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~9\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~10\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~11\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ <= \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\fsm0|ALT_INV_current_state.S1~q\ <= NOT \fsm0|current_state.S1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N9
\out_cos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[0]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\out_cos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[1]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\out_cos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[2]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\out_cos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[3]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\out_cos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[4]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\out_cos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[5]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\out_cos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[6]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\out_cos[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[7]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\out_cos[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[8]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\out_cos[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[9]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[9]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\out_cos[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[10]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\out_cos[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_cos[11]~reg0\,
	devoe => ww_devoe,
	o => \out_cos[11]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\out_sin[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[0]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\out_sin[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[1]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\out_sin[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[2]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\out_sin[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[3]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\out_sin[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[4]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\out_sin[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[5]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\out_sin[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[6]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\out_sin[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[7]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\out_sin[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[8]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[8]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\out_sin[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[9]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[9]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\out_sin[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[10]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[10]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\out_sin[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sin[11]~reg0\,
	devoe => ww_devoe,
	o => \out_sin[11]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y17_N24
\fsm0|current_state.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|current_state.S1~0_combout\ = !\fsm0|current_state.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm0|current_state.S3~q\,
	combout => \fsm0|current_state.S1~0_combout\);

-- Location: FF_X22_Y17_N25
\fsm0|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm0|current_state.S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm0|current_state.S1~q\);

-- Location: LCCOMB_X22_Y17_N30
\fsm0|current_state.S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|current_state.S2~0_combout\ = !\fsm0|current_state.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm0|current_state.S1~q\,
	combout => \fsm0|current_state.S2~0_combout\);

-- Location: FF_X22_Y17_N31
\fsm0|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm0|current_state.S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm0|current_state.S2~q\);

-- Location: FF_X22_Y17_N17
\fsm0|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|current_state.S2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm0|current_state.S3~q\);

-- Location: IOIBUF_X23_Y24_N15
\theta[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(11),
	o => \theta[11]~input_o\);

-- Location: FF_X22_Y20_N5
\z_zero[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(11));

-- Location: LCCOMB_X22_Y20_N0
\ce0|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux0~0_combout\ = (z_zero(11) & \fsm0|current_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_zero(11),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce0|MUX3_1|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y20_N28
\fsm0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|Selector0~0_combout\ = \fsm0|current_state.S3~q\ $ (z_zero(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datad => z_zero(11),
	combout => \fsm0|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = z_zero(11) $ (\fsm0|current_state.S1~q\ $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_zero(11),
	datab => \fsm0|current_state.S1~q\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: IOIBUF_X16_Y24_N15
\theta[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(10),
	o => \theta[10]~input_o\);

-- Location: FF_X21_Y20_N5
\z_zero[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(10));

-- Location: LCCOMB_X21_Y20_N4
\ce0|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S2~q\ & z_zero(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => z_zero(10),
	combout => \ce0|MUX3_1|Mux1~0_combout\);

-- Location: IOIBUF_X18_Y24_N22
\theta[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(9),
	o => \theta[9]~input_o\);

-- Location: FF_X21_Y20_N19
\z_zero[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(9));

-- Location: LCCOMB_X21_Y20_N18
\ce0|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S2~q\ & z_zero(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => z_zero(9),
	combout => \ce0|MUX3_1|Mux2~0_combout\);

-- Location: IOIBUF_X23_Y24_N8
\theta[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(8),
	o => \theta[8]~input_o\);

-- Location: FF_X24_Y20_N11
\z_zero[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(8));

-- Location: LCCOMB_X24_Y20_N10
\ce0|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux3~0_combout\ = (z_zero(8) & \fsm0|current_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => z_zero(8),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce0|MUX3_1|Mux3~0_combout\);

-- Location: IOIBUF_X18_Y24_N15
\theta[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(7),
	o => \theta[7]~input_o\);

-- Location: FF_X21_Y20_N17
\z_zero[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(7));

-- Location: LCCOMB_X21_Y20_N16
\ce0|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S2~q\ & z_zero(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => z_zero(7),
	combout => \ce0|MUX3_1|Mux4~0_combout\);

-- Location: IOIBUF_X16_Y24_N8
\theta[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(6),
	o => \theta[6]~input_o\);

-- Location: FF_X21_Y20_N23
\z_zero[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(6));

-- Location: LCCOMB_X21_Y20_N22
\ce0|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S2~q\ & z_zero(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => z_zero(6),
	combout => \ce0|MUX3_1|Mux5~0_combout\);

-- Location: IOIBUF_X34_Y17_N22
\theta[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(5),
	o => \theta[5]~input_o\);

-- Location: FF_X22_Y17_N23
\z_zero[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(5));

-- Location: LCCOMB_X22_Y17_N22
\ce0|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S2~q\ & z_zero(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => z_zero(5),
	combout => \ce0|MUX3_1|Mux6~0_combout\);

-- Location: IOIBUF_X28_Y24_N1
\theta[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(4),
	o => \theta[4]~input_o\);

-- Location: FF_X24_Y20_N5
\z_zero[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(4));

-- Location: LCCOMB_X24_Y20_N4
\ce0|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux7~0_combout\ = (z_zero(4) & \fsm0|current_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => z_zero(4),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce0|MUX3_1|Mux7~0_combout\);

-- Location: IOIBUF_X28_Y24_N15
\theta[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(3),
	o => \theta[3]~input_o\);

-- Location: FF_X21_Y20_N25
\z_zero[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(3));

-- Location: LCCOMB_X21_Y20_N24
\ce0|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S2~q\ & z_zero(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => z_zero(3),
	combout => \ce0|MUX3_1|Mux8~0_combout\);

-- Location: IOIBUF_X34_Y17_N1
\theta[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(2),
	o => \theta[2]~input_o\);

-- Location: FF_X22_Y17_N21
\z_zero[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(2));

-- Location: LCCOMB_X22_Y17_N20
\ce0|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S2~q\ & z_zero(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => z_zero(2),
	combout => \ce0|MUX3_1|Mux9~0_combout\);

-- Location: IOIBUF_X23_Y24_N1
\theta[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(1),
	o => \theta[1]~input_o\);

-- Location: FF_X22_Y19_N1
\z_zero[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(1));

-- Location: LCCOMB_X22_Y19_N0
\ce0|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux10~0_combout\ = (z_zero(1) & \fsm0|current_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => z_zero(1),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce0|MUX3_1|Mux10~0_combout\);

-- Location: IOIBUF_X16_Y24_N1
\theta[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta(0),
	o => \theta[0]~input_o\);

-- Location: FF_X21_Y20_N7
\z_zero[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_zero(0));

-- Location: LCCOMB_X21_Y20_N6
\ce0|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|MUX3_1|Mux11~0_combout\ = (!\fsm0|current_state.S3~q\ & ((z_zero(0)) # (!\fsm0|current_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => z_zero(0),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce0|MUX3_1|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(z_zero(11) $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_zero(11),
	datab => \fsm0|current_state.S3~q\,
	datad => VCC,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X22_Y20_N4
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux11~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce0|MUX3_1|Mux11~0_combout\ & ((\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND))))) # (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux11~0_combout\ & 
-- (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\ce0|MUX3_1|Mux11~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\))))
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce0|MUX3_1|Mux11~0_combout\))) # 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce0|MUX3_1|Mux11~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce0|MUX3_1|Mux11~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X22_Y20_N6
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce0|MUX3_1|Mux10~0_combout\ $ (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce0|MUX3_1|Mux10~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)) # 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux10~0_combout\) # (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce0|MUX3_1|Mux10~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X22_Y20_N8
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce0|MUX3_1|Mux9~0_combout\ & ((\fsm0|Selector0~0_combout\ & (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # (!\fsm0|Selector0~0_combout\ & 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\ce0|MUX3_1|Mux9~0_combout\ & ((\fsm0|Selector0~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\fsm0|Selector0~0_combout\ & 
-- ((\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce0|MUX3_1|Mux9~0_combout\ & (!\fsm0|Selector0~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce0|MUX3_1|Mux9~0_combout\ & 
-- ((!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\fsm0|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|MUX3_1|Mux9~0_combout\,
	datab => \fsm0|Selector0~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X22_Y20_N10
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce0|MUX3_1|Mux8~0_combout\ $ (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce0|MUX3_1|Mux8~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)) # 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux8~0_combout\) # (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce0|MUX3_1|Mux8~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X22_Y20_N12
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce0|MUX3_1|Mux7~0_combout\ & ((\fsm0|Selector0~0_combout\ & (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # (!\fsm0|Selector0~0_combout\ & 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\ce0|MUX3_1|Mux7~0_combout\ & ((\fsm0|Selector0~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\fsm0|Selector0~0_combout\ & 
-- ((\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce0|MUX3_1|Mux7~0_combout\ & (!\fsm0|Selector0~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce0|MUX3_1|Mux7~0_combout\ & 
-- ((!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\fsm0|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|MUX3_1|Mux7~0_combout\,
	datab => \fsm0|Selector0~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X22_Y20_N14
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce0|MUX3_1|Mux6~0_combout\ $ (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce0|MUX3_1|Mux6~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)) # 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux6~0_combout\) # (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce0|MUX3_1|Mux6~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X22_Y20_N16
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux5~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce0|MUX3_1|Mux5~0_combout\ & ((\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND))))) # (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux5~0_combout\ & 
-- (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # (!\ce0|MUX3_1|Mux5~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!\ce0|MUX3_1|Mux5~0_combout\))) # 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce0|MUX3_1|Mux5~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce0|MUX3_1|Mux5~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X22_Y20_N18
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce0|MUX3_1|Mux4~0_combout\ $ (\fsm0|Selector0~0_combout\ $ (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce0|MUX3_1|Mux4~0_combout\ & ((\fsm0|Selector0~0_combout\) # (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # (!\ce0|MUX3_1|Mux4~0_combout\ & 
-- (\fsm0|Selector0~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|MUX3_1|Mux4~0_combout\,
	datab => \fsm0|Selector0~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X22_Y20_N20
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux3~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce0|MUX3_1|Mux3~0_combout\ & ((\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND))))) # (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux3~0_combout\ & 
-- (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # (!\ce0|MUX3_1|Mux3~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\))))
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce0|MUX3_1|Mux3~0_combout\))) # 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce0|MUX3_1|Mux3~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce0|MUX3_1|Mux3~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X22_Y20_N22
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce0|MUX3_1|Mux2~0_combout\ $ (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce0|MUX3_1|Mux2~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)) # 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux2~0_combout\) # (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce0|MUX3_1|Mux2~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X22_Y20_N24
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux1~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce0|MUX3_1|Mux1~0_combout\ & ((\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND))))) # (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce0|MUX3_1|Mux1~0_combout\ & 
-- (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # (!\ce0|MUX3_1|Mux1~0_combout\ & (!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\))))
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce0|MUX3_1|Mux1~0_combout\))) # 
-- (!\ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce0|MUX3_1|Mux1~0_combout\ & !\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce0|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce0|MUX3_1|Mux1~0_combout\,
	datad => VCC,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X22_Y20_N26
\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce0|MUX3_1|Mux0~0_combout\ $ (\ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\fsm0|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ce0|MUX3_1|Mux0~0_combout\,
	datad => \fsm0|Selector0~0_combout\,
	cin => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: FF_X21_Y19_N29
\z_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(11));

-- Location: FF_X22_Y20_N27
\x_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(11));

-- Location: FF_X22_Y19_N23
\y_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(11));

-- Location: LCCOMB_X21_Y19_N28
\fsm0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|Selector1~0_combout\ = (\fsm0|current_state.S2~q\ & (x_1(11))) # (!\fsm0|current_state.S2~q\ & ((y_1(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_1(11),
	datad => y_1(11),
	combout => \fsm0|Selector1~0_combout\);

-- Location: FF_X21_Y19_N15
\ce1|reg1_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector1~0_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(9));

-- Location: FF_X21_Y19_N17
\ce1|reg2_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector1~0_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(9));

-- Location: LCCOMB_X21_Y19_N14
\ce1|MUX3_3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux2~0_combout\ = (\fsm0|current_state.S3~q\ & ((!\ce1|reg2_out\(9)))) # (!\fsm0|current_state.S3~q\ & (!\ce1|reg1_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => \ce1|reg1_out\(9),
	datad => \ce1|reg2_out\(9),
	combout => \ce1|MUX3_3|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y18_N0
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \fsm0|current_state.S3~q\ $ (z_1(11) $ (((\fsm0|current_state.S1~q\ & !\ce1|MUX3_3|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => z_1(11),
	datad => \ce1|MUX3_3|Mux2~0_combout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X22_Y19_N22
\ce1|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux0~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & ((z_1(11))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & (y_1(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => y_1(11),
	datad => z_1(11),
	combout => \ce1|MUX3_1|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y19_N12
\ce1|MUX3_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux0~1_combout\ = (\ce1|MUX3_1|Mux0~0_combout\) # ((x_1(11) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => \ce1|MUX3_1|Mux0~0_combout\,
	datad => x_1(11),
	combout => \ce1|MUX3_1|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y20_N14
\y_1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_1[10]~feeder_combout\ = \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	combout => \y_1[10]~feeder_combout\);

-- Location: FF_X23_Y20_N15
\y_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_1[10]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(10));

-- Location: FF_X23_Y20_N13
\z_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(10));

-- Location: LCCOMB_X23_Y20_N12
\ce1|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_1(10) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_1(10) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_1(10),
	datab => \fsm0|current_state.S2~q\,
	datac => z_1(10),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce1|MUX3_1|Mux1~0_combout\);

-- Location: FF_X22_Y20_N25
\x_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(10));

-- Location: LCCOMB_X23_Y20_N20
\ce1|MUX3_1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux1~1_combout\ = (\ce1|MUX3_1|Mux1~0_combout\) # ((x_1(10) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|MUX3_1|Mux1~0_combout\,
	datab => \fsm0|current_state.S3~q\,
	datac => x_1(10),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y18_N30
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = \fsm0|current_state.S3~q\ $ (z_1(11) $ (((!\ce1|MUX3_3|Mux2~0_combout\) # (!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => z_1(11),
	datad => \ce1|MUX3_3|Mux2~0_combout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X22_Y20_N23
\x_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(9));

-- Location: LCCOMB_X22_Y19_N14
\y_1[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_1[9]~feeder_combout\ = \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	combout => \y_1[9]~feeder_combout\);

-- Location: FF_X22_Y19_N15
\y_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_1[9]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(9));

-- Location: FF_X23_Y19_N17
\z_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(9));

-- Location: LCCOMB_X23_Y19_N16
\ce1|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_1(9) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_1(9) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_1(9),
	datab => \fsm0|current_state.S2~q\,
	datac => z_1(9),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce1|MUX3_1|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y19_N14
\ce1|MUX3_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux2~1_combout\ = (\ce1|MUX3_1|Mux2~0_combout\) # ((x_1(9) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_1(9),
	datab => \fsm0|current_state.S3~q\,
	datac => \fsm0|current_state.S2~q\,
	datad => \ce1|MUX3_1|Mux2~0_combout\,
	combout => \ce1|MUX3_1|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y19_N2
\ce1|MUX3_1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux1~2_combout\ = (\fsm0|current_state.S2~q\ & (x_1(10))) # (!\fsm0|current_state.S2~q\ & ((y_1(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_1(10),
	datac => y_1(10),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux1~2_combout\);

-- Location: FF_X23_Y19_N3
\ce1|reg2_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|MUX3_1|Mux1~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(8));

-- Location: FF_X23_Y19_N29
\ce1|reg1_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(8));

-- Location: LCCOMB_X23_Y19_N28
\ce1|MUX3_3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux3~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce1|reg1_out\(8))))) # (!\fsm0|current_state.S2~q\ & ((\ce1|reg2_out\(8)) # ((!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce1|reg2_out\(8),
	datac => \ce1|reg1_out\(8),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce1|MUX3_3|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y19_N8
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = z_1(11) $ (\fsm0|current_state.S3~q\ $ (\ce1|MUX3_3|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_1(11),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce1|MUX3_3|Mux3~0_combout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X23_Y20_N16
\y_1[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_1[8]~feeder_combout\ = \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \y_1[8]~feeder_combout\);

-- Location: FF_X23_Y20_N17
\y_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_1[8]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(8));

-- Location: FF_X23_Y20_N11
\z_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(8));

-- Location: LCCOMB_X23_Y20_N10
\ce1|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux3~0_combout\ = (\fsm0|current_state.S3~q\ & (y_1(8) & ((!\fsm0|current_state.S2~q\)))) # (!\fsm0|current_state.S3~q\ & (((z_1(8) & \fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => y_1(8),
	datac => z_1(8),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux3~0_combout\);

-- Location: FF_X22_Y20_N21
\x_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(8));

-- Location: LCCOMB_X23_Y20_N26
\ce1|MUX3_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux3~1_combout\ = (\ce1|MUX3_1|Mux3~0_combout\) # ((x_1(8) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|MUX3_1|Mux3~0_combout\,
	datab => x_1(8),
	datac => \fsm0|current_state.S3~q\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y19_N22
\ce1|MUX3_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux2~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_1(9)))) # (!\fsm0|current_state.S2~q\ & (y_1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_1(9),
	datac => \fsm0|current_state.S2~q\,
	datad => x_1(9),
	combout => \ce1|MUX3_1|Mux2~2_combout\);

-- Location: FF_X23_Y19_N23
\ce1|reg2_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|MUX3_1|Mux2~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(7));

-- Location: FF_X23_Y19_N5
\ce1|reg1_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|MUX3_1|Mux2~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(7));

-- Location: LCCOMB_X23_Y19_N4
\ce1|MUX3_3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux4~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce1|reg1_out\(7))))) # (!\fsm0|current_state.S2~q\ & ((\ce1|reg2_out\(7)) # ((!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce1|reg2_out\(7),
	datac => \ce1|reg1_out\(7),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce1|MUX3_3|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y19_N2
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = z_1(11) $ (\fsm0|current_state.S3~q\ $ (\ce1|MUX3_3|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_1(11),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce1|MUX3_3|Mux4~0_combout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: FF_X22_Y20_N19
\x_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(7));

-- Location: FF_X23_Y17_N3
\z_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(7));

-- Location: LCCOMB_X23_Y17_N20
\y_1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_1[7]~feeder_combout\ = \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \y_1[7]~feeder_combout\);

-- Location: FF_X23_Y17_N21
\y_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_1[7]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(7));

-- Location: LCCOMB_X23_Y17_N2
\ce1|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_1(7))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_1(7),
	datad => y_1(7),
	combout => \ce1|MUX3_1|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y18_N10
\ce1|MUX3_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux4~1_combout\ = (\ce1|MUX3_1|Mux4~0_combout\) # ((x_1(7) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_1(7),
	datab => \ce1|MUX3_1|Mux4~0_combout\,
	datac => \fsm0|current_state.S2~q\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce1|MUX3_1|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y19_N6
\ce1|MUX3_1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux3~2_combout\ = (\fsm0|current_state.S2~q\ & (x_1(8))) # (!\fsm0|current_state.S2~q\ & ((y_1(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_1(8),
	datac => \fsm0|current_state.S2~q\,
	datad => y_1(8),
	combout => \ce1|MUX3_1|Mux3~2_combout\);

-- Location: FF_X23_Y19_N7
\ce1|reg2_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|MUX3_1|Mux3~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(6));

-- Location: FF_X23_Y19_N9
\ce1|reg1_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|MUX3_1|Mux3~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(6));

-- Location: LCCOMB_X23_Y19_N8
\ce1|MUX3_3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux5~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce1|reg1_out\(6))))) # (!\fsm0|current_state.S2~q\ & ((\ce1|reg2_out\(6)) # ((!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|reg2_out\(6),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce1|reg1_out\(6),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_3|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y19_N24
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \ce1|MUX3_3|Mux5~0_combout\ $ (z_1(11) $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ce1|MUX3_3|Mux5~0_combout\,
	datac => z_1(11),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: FF_X22_Y20_N17
\x_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(6));

-- Location: LCCOMB_X23_Y20_N30
\y_1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_1[6]~feeder_combout\ = \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	combout => \y_1[6]~feeder_combout\);

-- Location: FF_X23_Y20_N31
\y_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_1[6]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(6));

-- Location: FF_X23_Y20_N5
\z_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(6));

-- Location: LCCOMB_X23_Y20_N4
\ce1|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_1(6) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_1(6) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_1(6),
	datab => \fsm0|current_state.S2~q\,
	datac => z_1(6),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce1|MUX3_1|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
\ce1|MUX3_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux5~1_combout\ = (\ce1|MUX3_1|Mux5~0_combout\) # ((x_1(6) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_1(6),
	datab => \fsm0|current_state.S2~q\,
	datac => \ce1|MUX3_1|Mux5~0_combout\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce1|MUX3_1|Mux5~1_combout\);

-- Location: LCCOMB_X23_Y19_N12
\ce1|MUX3_1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux4~2_combout\ = (\fsm0|current_state.S2~q\ & (x_1(7))) # (!\fsm0|current_state.S2~q\ & ((y_1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_1(7),
	datac => y_1(7),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux4~2_combout\);

-- Location: FF_X23_Y19_N27
\ce1|reg1_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|MUX3_1|Mux4~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(5));

-- Location: FF_X23_Y19_N13
\ce1|reg2_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|MUX3_1|Mux4~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(5));

-- Location: LCCOMB_X23_Y19_N26
\ce1|MUX3_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux6~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce1|reg1_out\(5))))) # (!\fsm0|current_state.S2~q\ & (((\ce1|reg2_out\(5))) # (!\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => \ce1|reg1_out\(5),
	datad => \ce1|reg2_out\(5),
	combout => \ce1|MUX3_3|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y19_N6
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ = z_1(11) $ (\fsm0|current_state.S3~q\ $ (\ce1|MUX3_3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_1(11),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce1|MUX3_3|Mux6~0_combout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: FF_X22_Y20_N29
\x_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(5));

-- Location: FF_X21_Y18_N27
\y_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(5));

-- Location: FF_X21_Y18_N29
\z_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(5));

-- Location: LCCOMB_X21_Y18_N28
\ce1|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_1(5) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_1(5) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_1(5),
	datab => \fsm0|current_state.S2~q\,
	datac => z_1(5),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce1|MUX3_1|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y19_N24
\ce1|MUX3_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux6~1_combout\ = (\ce1|MUX3_1|Mux6~0_combout\) # ((x_1(5) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_1(5),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce1|MUX3_1|Mux6~0_combout\,
	combout => \ce1|MUX3_1|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y19_N24
\ce1|MUX3_1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux5~2_combout\ = (\fsm0|current_state.S2~q\ & (x_1(6))) # (!\fsm0|current_state.S2~q\ & ((y_1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_1(6),
	datad => y_1(6),
	combout => \ce1|MUX3_1|Mux5~2_combout\);

-- Location: FF_X21_Y19_N31
\ce1|reg1_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|MUX3_1|Mux5~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(4));

-- Location: FF_X21_Y19_N25
\ce1|reg2_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|MUX3_1|Mux5~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(4));

-- Location: LCCOMB_X21_Y19_N30
\ce1|MUX3_3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux7~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce1|reg1_out\(4))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce1|reg2_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => \ce1|reg1_out\(4),
	datad => \ce1|reg2_out\(4),
	combout => \ce1|MUX3_3|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y18_N26
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ = \ce1|MUX3_3|Mux7~0_combout\ $ (z_1(11) $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|MUX3_3|Mux7~0_combout\,
	datab => z_1(11),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\);

-- Location: FF_X21_Y18_N21
\y_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(4));

-- Location: FF_X21_Y18_N5
\z_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(4));

-- Location: LCCOMB_X21_Y18_N4
\ce1|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux7~0_combout\ = (\fsm0|current_state.S3~q\ & (y_1(4) & ((!\fsm0|current_state.S2~q\)))) # (!\fsm0|current_state.S3~q\ & (((z_1(4) & \fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => y_1(4),
	datac => z_1(4),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux7~0_combout\);

-- Location: FF_X22_Y20_N13
\x_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(4));

-- Location: LCCOMB_X21_Y18_N6
\ce1|MUX3_1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux7~1_combout\ = (\ce1|MUX3_1|Mux7~0_combout\) # ((x_1(4) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce1|MUX3_1|Mux7~0_combout\,
	datad => x_1(4),
	combout => \ce1|MUX3_1|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y19_N0
\ce1|MUX3_1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux6~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_1(5)))) # (!\fsm0|current_state.S2~q\ & (y_1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_1(5),
	datac => x_1(5),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux6~2_combout\);

-- Location: FF_X23_Y19_N1
\ce1|reg2_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|MUX3_1|Mux6~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(3));

-- Location: FF_X23_Y19_N19
\ce1|reg1_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|MUX3_1|Mux6~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(3));

-- Location: LCCOMB_X23_Y19_N18
\ce1|MUX3_3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux8~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce1|reg1_out\(3))))) # (!\fsm0|current_state.S2~q\ & ((\ce1|reg2_out\(3)) # ((!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce1|reg2_out\(3),
	datac => \ce1|reg1_out\(3),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce1|MUX3_3|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ = z_1(11) $ (\fsm0|current_state.S3~q\ $ (\ce1|MUX3_3|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_1(11),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce1|MUX3_3|Mux8~0_combout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\);

-- Location: FF_X21_Y18_N3
\y_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(3));

-- Location: FF_X21_Y18_N17
\z_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(3));

-- Location: LCCOMB_X21_Y18_N16
\ce1|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S3~q\ & (y_1(3) & ((!\fsm0|current_state.S2~q\)))) # (!\fsm0|current_state.S3~q\ & (((z_1(3) & \fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => y_1(3),
	datac => z_1(3),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux8~0_combout\);

-- Location: FF_X22_Y20_N11
\x_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(3));

-- Location: LCCOMB_X22_Y18_N2
\ce1|MUX3_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux8~1_combout\ = (\ce1|MUX3_1|Mux8~0_combout\) # ((x_1(3) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce1|MUX3_1|Mux8~0_combout\,
	datad => x_1(3),
	combout => \ce1|MUX3_1|Mux8~1_combout\);

-- Location: FF_X22_Y20_N1
\x_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(2));

-- Location: LCCOMB_X21_Y18_N14
\y_1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_1[2]~feeder_combout\ = \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	combout => \y_1[2]~feeder_combout\);

-- Location: FF_X21_Y18_N15
\y_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_1[2]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(2));

-- Location: FF_X21_Y19_N23
\z_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(2));

-- Location: LCCOMB_X21_Y19_N22
\ce1|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S3~q\ & (y_1(2) & ((!\fsm0|current_state.S2~q\)))) # (!\fsm0|current_state.S3~q\ & (((z_1(2) & \fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => y_1(2),
	datac => z_1(2),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y19_N20
\ce1|MUX3_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux9~1_combout\ = (\ce1|MUX3_1|Mux9~0_combout\) # ((x_1(2) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => x_1(2),
	datac => \ce1|MUX3_1|Mux9~0_combout\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux9~1_combout\);

-- Location: LCCOMB_X21_Y19_N8
\ce1|MUX3_1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux7~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_1(4)))) # (!\fsm0|current_state.S2~q\ & (y_1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => y_1(4),
	datad => x_1(4),
	combout => \ce1|MUX3_1|Mux7~2_combout\);

-- Location: FF_X21_Y19_N7
\ce1|reg1_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|MUX3_1|Mux7~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(2));

-- Location: FF_X21_Y19_N9
\ce1|reg2_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|MUX3_1|Mux7~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(2));

-- Location: LCCOMB_X21_Y19_N6
\ce1|MUX3_3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux9~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce1|reg1_out\(2))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce1|reg2_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => \ce1|reg1_out\(2),
	datad => \ce1|reg2_out\(2),
	combout => \ce1|MUX3_3|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y19_N16
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ = \fsm0|current_state.S3~q\ $ (z_1(11) $ (\ce1|MUX3_3|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => z_1(11),
	datad => \ce1|MUX3_3|Mux9~0_combout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\);

-- Location: FF_X21_Y18_N11
\y_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(1));

-- Location: FF_X21_Y18_N9
\z_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(1));

-- Location: LCCOMB_X21_Y18_N10
\ce1|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux10~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_1(1)))) # (!\fsm0|current_state.S2~q\ & (y_1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => y_1(1),
	datad => z_1(1),
	combout => \ce1|MUX3_1|Mux10~0_combout\);

-- Location: FF_X22_Y20_N7
\x_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(1));

-- Location: LCCOMB_X21_Y18_N8
\ce1|MUX3_1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux10~1_combout\ = (\ce1|MUX3_1|Mux10~0_combout\) # ((x_1(1) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|MUX3_1|Mux10~0_combout\,
	datab => x_1(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce1|MUX3_1|Mux10~1_combout\);

-- Location: LCCOMB_X23_Y19_N20
\ce1|MUX3_1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux8~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_1(3)))) # (!\fsm0|current_state.S2~q\ & (y_1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_1(3),
	datab => x_1(3),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce1|MUX3_1|Mux8~2_combout\);

-- Location: FF_X23_Y19_N21
\ce1|reg2_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|MUX3_1|Mux8~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(1));

-- Location: FF_X23_Y19_N11
\ce1|reg1_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|MUX3_1|Mux8~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(1));

-- Location: LCCOMB_X23_Y19_N10
\ce1|MUX3_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux10~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce1|reg1_out\(1))))) # (!\fsm0|current_state.S2~q\ & ((\ce1|reg2_out\(1)) # ((!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce1|reg2_out\(1),
	datac => \ce1|reg1_out\(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce1|MUX3_3|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y19_N30
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ = \fsm0|current_state.S3~q\ $ (z_1(11) $ (\ce1|MUX3_3|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => z_1(11),
	datad => \ce1|MUX3_3|Mux10~0_combout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\);

-- Location: LCCOMB_X21_Y19_N12
\ce1|MUX3_1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux9~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_1(2)))) # (!\fsm0|current_state.S2~q\ & (y_1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => y_1(2),
	datad => x_1(2),
	combout => \ce1|MUX3_1|Mux9~2_combout\);

-- Location: FF_X21_Y19_N19
\ce1|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|MUX3_1|Mux9~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg1_out\(0));

-- Location: FF_X21_Y19_N13
\ce1|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|MUX3_1|Mux9~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce1|reg2_out\(0));

-- Location: LCCOMB_X21_Y19_N18
\ce1|MUX3_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_3|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce1|reg1_out\(0))))) # (!\fsm0|current_state.S2~q\ & (((\ce1|reg2_out\(0))) # (!\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => \ce1|reg1_out\(0),
	datad => \ce1|reg2_out\(0),
	combout => \ce1|MUX3_3|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\ce1|add|LPM_ADD_SUB_component|auto_generated|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|_~10_combout\ = z_1(11) $ (\fsm0|current_state.S3~q\ $ (\ce1|MUX3_3|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_1(11),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce1|MUX3_3|Mux11~0_combout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~10_combout\);

-- Location: LCCOMB_X25_Y17_N10
\z_1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_1[0]~feeder_combout\ = \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \z_1[0]~feeder_combout\);

-- Location: FF_X25_Y17_N11
\z_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_1[0]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_1(0));

-- Location: FF_X25_Y17_N5
\y_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_1(0));

-- Location: LCCOMB_X25_Y17_N4
\ce1|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux11~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_1(0))) # (!\fsm0|current_state.S2~q\ & ((y_1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_1(0),
	datab => \fsm0|current_state.S2~q\,
	datac => y_1(0),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce1|MUX3_1|Mux11~0_combout\);

-- Location: FF_X22_Y20_N31
\x_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce0|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_1(0));

-- Location: LCCOMB_X22_Y17_N0
\ce1|MUX3_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|MUX3_1|Mux11~1_combout\ = (\ce1|MUX3_1|Mux11~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => \ce1|MUX3_1|Mux11~0_combout\,
	datad => x_1(0),
	combout => \ce1|MUX3_1|Mux11~1_combout\);

-- Location: LCCOMB_X22_Y18_N4
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(\fsm0|current_state.S3~q\ $ (z_1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => z_1(11),
	datad => VCC,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X22_Y18_N6
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce1|add|LPM_ADD_SUB_component|auto_generated|_~10_combout\ & ((\ce1|MUX3_1|Mux11~1_combout\ & (\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\ce1|MUX3_1|Mux11~1_combout\ & (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~10_combout\ & ((\ce1|MUX3_1|Mux11~1_combout\ & 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\ce1|MUX3_1|Mux11~1_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~10_combout\ & (!\ce1|MUX3_1|Mux11~1_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~10_combout\ & ((!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce1|MUX3_1|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~10_combout\,
	datab => \ce1|MUX3_1|Mux11~1_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X22_Y18_N8
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce1|MUX3_1|Mux10~1_combout\ $ (\ce1|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ $ (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce1|MUX3_1|Mux10~1_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\ce1|MUX3_1|Mux10~1_combout\ & (\ce1|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|MUX3_1|Mux10~1_combout\,
	datab => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X22_Y18_N10
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce1|MUX3_1|Mux9~1_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & (\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\ce1|MUX3_1|Mux9~1_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce1|MUX3_1|Mux9~1_combout\ & (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce1|MUX3_1|Mux9~1_combout\ & ((!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|MUX3_1|Mux9~1_combout\,
	datab => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X22_Y18_N12
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ $ (\ce1|MUX3_1|Mux8~1_combout\ $ (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((\ce1|MUX3_1|Mux8~1_combout\) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & (\ce1|MUX3_1|Mux8~1_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\,
	datab => \ce1|MUX3_1|Mux8~1_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X22_Y18_N14
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce1|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((\ce1|MUX3_1|Mux7~1_combout\ & (\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\ce1|MUX3_1|Mux7~1_combout\ & (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((\ce1|MUX3_1|Mux7~1_combout\ & 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce1|MUX3_1|Mux7~1_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (!\ce1|MUX3_1|Mux7~1_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\ce1|MUX3_1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\,
	datab => \ce1|MUX3_1|Mux7~1_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X22_Y18_N16
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ $ (\ce1|MUX3_1|Mux6~1_combout\ $ (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((\ce1|MUX3_1|Mux6~1_combout\) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & (\ce1|MUX3_1|Mux6~1_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datab => \ce1|MUX3_1|Mux6~1_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X22_Y18_N18
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce1|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\ce1|MUX3_1|Mux5~1_combout\ & (\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\ce1|MUX3_1|Mux5~1_combout\ & (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\ce1|MUX3_1|Mux5~1_combout\ & 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\ce1|MUX3_1|Mux5~1_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (!\ce1|MUX3_1|Mux5~1_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!\ce1|MUX3_1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datab => \ce1|MUX3_1|Mux5~1_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X22_Y18_N20
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ $ (\ce1|MUX3_1|Mux4~1_combout\ $ (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((\ce1|MUX3_1|Mux4~1_combout\) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (\ce1|MUX3_1|Mux4~1_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datab => \ce1|MUX3_1|Mux4~1_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X22_Y18_N22
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce1|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\ce1|MUX3_1|Mux3~1_combout\ & (\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\ce1|MUX3_1|Mux3~1_combout\ & (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\ce1|MUX3_1|Mux3~1_combout\ & 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\ce1|MUX3_1|Mux3~1_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (!\ce1|MUX3_1|Mux3~1_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce1|MUX3_1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datab => \ce1|MUX3_1|Mux3~1_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X22_Y18_N24
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ $ (\ce1|MUX3_1|Mux2~1_combout\ $ (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce1|MUX3_1|Mux2~1_combout\) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (\ce1|MUX3_1|Mux2~1_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datab => \ce1|MUX3_1|Mux2~1_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X22_Y18_N26
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce1|MUX3_1|Mux1~1_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!\ce1|MUX3_1|Mux1~1_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce1|MUX3_1|Mux1~1_combout\ & (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce1|MUX3_1|Mux1~1_combout\ & ((!\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce1|MUX3_1|Mux1~1_combout\,
	datab => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X22_Y18_N28
\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\ce1|MUX3_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ce1|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => \ce1|MUX3_1|Mux0~1_combout\,
	cin => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: FF_X22_Y18_N29
\x_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(11));

-- Location: FF_X25_Y18_N9
\z_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(11));

-- Location: FF_X23_Y18_N3
\y_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(11));

-- Location: LCCOMB_X23_Y18_N2
\ce2|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux0~0_combout\ = (\fsm0|current_state.S2~q\ & (z_2(11) & ((!\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (((y_2(11) & \fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_2(11),
	datab => \fsm0|current_state.S2~q\,
	datac => y_2(11),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce2|MUX3_1|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y18_N28
\ce2|MUX3_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux0~1_combout\ = (\ce2|MUX3_1|Mux0~0_combout\) # ((x_2(11) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => x_2(11),
	datac => \fsm0|current_state.S2~q\,
	datad => \ce2|MUX3_1|Mux0~0_combout\,
	combout => \ce2|MUX3_1|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y18_N8
\fsm0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|Selector2~0_combout\ = (\fsm0|current_state.S2~q\ & ((x_2(11)))) # (!\fsm0|current_state.S2~q\ & (y_2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_2(11),
	datab => x_2(11),
	datad => \fsm0|current_state.S2~q\,
	combout => \fsm0|Selector2~0_combout\);

-- Location: FF_X25_Y18_N27
\ce2|reg1_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector2~0_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg1_out\(8));

-- Location: FF_X25_Y18_N29
\ce2|reg2_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector2~0_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg2_out\(8));

-- Location: LCCOMB_X25_Y18_N26
\ce2|MUX3_3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_3|Mux3~0_combout\ = (\fsm0|current_state.S3~q\ & ((!\ce2|reg2_out\(8)))) # (!\fsm0|current_state.S3~q\ & (!\ce2|reg1_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => \ce2|reg1_out\(8),
	datad => \ce2|reg2_out\(8),
	combout => \ce2|MUX3_3|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y18_N2
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = z_2(11) $ (\fsm0|current_state.S3~q\ $ (((!\ce2|MUX3_3|Mux3~0_combout\ & \fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_2(11),
	datab => \fsm0|current_state.S3~q\,
	datac => \ce2|MUX3_3|Mux3~0_combout\,
	datad => \fsm0|current_state.S1~q\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: FF_X22_Y18_N27
\x_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(10));

-- Location: FF_X25_Y18_N1
\z_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(10));

-- Location: LCCOMB_X22_Y19_N20
\y_2[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_2[10]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	combout => \y_2[10]~feeder_combout\);

-- Location: FF_X22_Y19_N21
\y_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_2[10]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(10));

-- Location: LCCOMB_X25_Y18_N0
\ce2|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & (z_2(10)))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & ((y_2(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => z_2(10),
	datad => y_2(10),
	combout => \ce2|MUX3_1|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y18_N22
\ce2|MUX3_1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux1~1_combout\ = (\ce2|MUX3_1|Mux1~0_combout\) # ((x_2(10) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_2(10),
	datab => \ce2|MUX3_1|Mux1~0_combout\,
	datac => \fsm0|current_state.S3~q\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce2|MUX3_1|Mux1~1_combout\);

-- Location: FF_X22_Y18_N25
\x_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(9));

-- Location: FF_X25_Y18_N5
\z_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(9));

-- Location: LCCOMB_X26_Y18_N24
\y_2[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_2[9]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	combout => \y_2[9]~feeder_combout\);

-- Location: FF_X26_Y18_N25
\y_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_2[9]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(9));

-- Location: LCCOMB_X25_Y18_N4
\ce2|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & (z_2(9)))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & ((y_2(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => z_2(9),
	datad => y_2(9),
	combout => \ce2|MUX3_1|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y18_N14
\ce2|MUX3_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux2~1_combout\ = (\ce2|MUX3_1|Mux2~0_combout\) # ((x_2(9) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_2(9),
	datac => \ce2|MUX3_1|Mux2~0_combout\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce2|MUX3_1|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y18_N20
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = z_2(11) $ (\fsm0|current_state.S3~q\ $ (((!\fsm0|current_state.S1~q\) # (!\ce2|MUX3_3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_2(11),
	datab => \fsm0|current_state.S3~q\,
	datac => \ce2|MUX3_3|Mux3~0_combout\,
	datad => \fsm0|current_state.S1~q\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X22_Y18_N23
\x_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(8));

-- Location: FF_X23_Y17_N17
\z_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(8));

-- Location: LCCOMB_X23_Y17_N6
\y_2[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_2[8]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \y_2[8]~feeder_combout\);

-- Location: FF_X23_Y17_N7
\y_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_2[8]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(8));

-- Location: LCCOMB_X23_Y17_N16
\ce2|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux3~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_2(8))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_2(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_2(8),
	datad => y_2(8),
	combout => \ce2|MUX3_1|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y17_N12
\ce2|MUX3_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux3~1_combout\ = (\ce2|MUX3_1|Mux3~0_combout\) # ((x_2(8) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => x_2(8),
	datad => \ce2|MUX3_1|Mux3~0_combout\,
	combout => \ce2|MUX3_1|Mux3~1_combout\);

-- Location: FF_X22_Y18_N21
\x_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(7));

-- Location: FF_X23_Y17_N23
\z_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(7));

-- Location: LCCOMB_X23_Y17_N24
\y_2[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_2[7]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \y_2[7]~feeder_combout\);

-- Location: FF_X23_Y17_N25
\y_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_2[7]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(7));

-- Location: LCCOMB_X23_Y17_N22
\ce2|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_2(7))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_2(7),
	datad => y_2(7),
	combout => \ce2|MUX3_1|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y17_N26
\ce2|MUX3_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux4~1_combout\ = (\ce2|MUX3_1|Mux4~0_combout\) # ((x_2(7) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => x_2(7),
	datac => \ce2|MUX3_1|Mux4~0_combout\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce2|MUX3_1|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y18_N12
\ce2|MUX3_1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux1~2_combout\ = (\fsm0|current_state.S2~q\ & (x_2(10))) # (!\fsm0|current_state.S2~q\ & ((y_2(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => x_2(10),
	datad => y_2(10),
	combout => \ce2|MUX3_1|Mux1~2_combout\);

-- Location: FF_X25_Y18_N13
\ce2|reg2_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|MUX3_1|Mux1~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg2_out\(7));

-- Location: FF_X25_Y18_N31
\ce2|reg1_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg1_out\(7));

-- Location: LCCOMB_X25_Y18_N30
\ce2|MUX3_3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_3|Mux4~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce2|reg1_out\(7))))) # (!\fsm0|current_state.S2~q\ & ((\ce2|reg2_out\(7)) # ((!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|reg2_out\(7),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce2|reg1_out\(7),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce2|MUX3_3|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y18_N18
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = z_2(11) $ (\fsm0|current_state.S3~q\ $ (\ce2|MUX3_3|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_2(11),
	datab => \fsm0|current_state.S3~q\,
	datac => \ce2|MUX3_3|Mux4~0_combout\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: FF_X22_Y18_N19
\x_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(6));

-- Location: LCCOMB_X23_Y18_N24
\y_2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_2[6]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	combout => \y_2[6]~feeder_combout\);

-- Location: FF_X23_Y18_N25
\y_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_2[6]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(6));

-- Location: FF_X23_Y18_N23
\z_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(6));

-- Location: LCCOMB_X23_Y18_N22
\ce2|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_2(6) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_2(6) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => y_2(6),
	datac => z_2(6),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce2|MUX3_1|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y18_N14
\ce2|MUX3_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux5~1_combout\ = (\ce2|MUX3_1|Mux5~0_combout\) # ((x_2(6) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => x_2(6),
	datac => \ce2|MUX3_1|Mux5~0_combout\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce2|MUX3_1|Mux5~1_combout\);

-- Location: LCCOMB_X25_Y18_N10
\ce2|MUX3_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux2~2_combout\ = (\fsm0|current_state.S2~q\ & (x_2(9))) # (!\fsm0|current_state.S2~q\ & ((y_2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_2(9),
	datad => y_2(9),
	combout => \ce2|MUX3_1|Mux2~2_combout\);

-- Location: FF_X25_Y18_N11
\ce2|reg2_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|MUX3_1|Mux2~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg2_out\(6));

-- Location: FF_X25_Y18_N25
\ce2|reg1_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|MUX3_1|Mux2~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg1_out\(6));

-- Location: LCCOMB_X25_Y18_N24
\ce2|MUX3_3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_3|Mux5~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce2|reg1_out\(6))))) # (!\fsm0|current_state.S2~q\ & ((\ce2|reg2_out\(6)) # ((!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|reg2_out\(6),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce2|reg1_out\(6),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce2|MUX3_3|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = \fsm0|current_state.S3~q\ $ (\ce2|MUX3_3|Mux5~0_combout\ $ (z_2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \ce2|MUX3_3|Mux5~0_combout\,
	datad => z_2(11),
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X23_Y18_N26
\y_2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_2[5]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	combout => \y_2[5]~feeder_combout\);

-- Location: FF_X23_Y18_N27
\y_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_2[5]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(5));

-- Location: FF_X23_Y18_N9
\z_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(5));

-- Location: LCCOMB_X23_Y18_N8
\ce2|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_2(5) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_2(5) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_2(5),
	datab => \fsm0|current_state.S2~q\,
	datac => z_2(5),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce2|MUX3_1|Mux6~0_combout\);

-- Location: FF_X22_Y18_N17
\x_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(5));

-- Location: LCCOMB_X23_Y18_N0
\ce2|MUX3_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux6~1_combout\ = (\ce2|MUX3_1|Mux6~0_combout\) # ((x_2(5) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce2|MUX3_1|Mux6~0_combout\,
	datad => x_2(5),
	combout => \ce2|MUX3_1|Mux6~1_combout\);

-- Location: LCCOMB_X22_Y17_N26
\ce2|MUX3_1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux3~2_combout\ = (\fsm0|current_state.S2~q\ & (x_2(8))) # (!\fsm0|current_state.S2~q\ & ((y_2(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => x_2(8),
	datad => y_2(8),
	combout => \ce2|MUX3_1|Mux3~2_combout\);

-- Location: FF_X22_Y17_N27
\ce2|reg2_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|MUX3_1|Mux3~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg2_out\(5));

-- Location: FF_X23_Y17_N1
\ce2|reg1_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|MUX3_1|Mux3~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg1_out\(5));

-- Location: LCCOMB_X23_Y17_N0
\ce2|MUX3_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_3|Mux6~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce2|reg1_out\(5))))) # (!\fsm0|current_state.S2~q\ & ((\ce2|reg2_out\(5)) # ((!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|reg2_out\(5),
	datab => \fsm0|current_state.S2~q\,
	datac => \ce2|reg1_out\(5),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce2|MUX3_3|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \fsm0|current_state.S3~q\ $ (z_2(11) $ (\ce2|MUX3_3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => z_2(11),
	datad => \ce2|MUX3_3|Mux6~0_combout\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X23_Y18_N30
\y_2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_2[4]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	combout => \y_2[4]~feeder_combout\);

-- Location: FF_X23_Y18_N31
\y_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_2[4]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(4));

-- Location: FF_X23_Y18_N5
\z_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(4));

-- Location: LCCOMB_X23_Y18_N4
\ce2|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux7~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_2(4) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_2(4) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_2(4),
	datab => \fsm0|current_state.S2~q\,
	datac => z_2(4),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce2|MUX3_1|Mux7~0_combout\);

-- Location: FF_X22_Y18_N15
\x_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(4));

-- Location: LCCOMB_X23_Y18_N16
\ce2|MUX3_1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux7~1_combout\ = (\ce2|MUX3_1|Mux7~0_combout\) # ((x_2(4) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce2|MUX3_1|Mux7~0_combout\,
	datad => x_2(4),
	combout => \ce2|MUX3_1|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y18_N10
\ce2|MUX3_1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux4~2_combout\ = (\fsm0|current_state.S2~q\ & (x_2(7))) # (!\fsm0|current_state.S2~q\ & ((y_2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S2~q\,
	datac => x_2(7),
	datad => y_2(7),
	combout => \ce2|MUX3_1|Mux4~2_combout\);

-- Location: FF_X19_Y18_N25
\ce2|reg1_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|MUX3_1|Mux4~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg1_out\(4));

-- Location: FF_X19_Y18_N11
\ce2|reg2_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|MUX3_1|Mux4~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg2_out\(4));

-- Location: LCCOMB_X19_Y18_N24
\ce2|MUX3_3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_3|Mux7~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce2|reg1_out\(4))))) # (!\fsm0|current_state.S2~q\ & (((\ce2|reg2_out\(4))) # (!\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce2|reg1_out\(4),
	datad => \ce2|reg2_out\(4),
	combout => \ce2|MUX3_3|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y18_N18
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ = z_2(11) $ (\ce2|MUX3_3|Mux7~0_combout\ $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_2(11),
	datac => \ce2|MUX3_3|Mux7~0_combout\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X22_Y17_N28
\ce2|MUX3_1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux5~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_2(6)))) # (!\fsm0|current_state.S2~q\ & (y_2(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_2(6),
	datab => x_2(6),
	datac => \fsm0|current_state.S2~q\,
	combout => \ce2|MUX3_1|Mux5~2_combout\);

-- Location: FF_X21_Y17_N29
\ce2|reg1_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|MUX3_1|Mux5~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg1_out\(3));

-- Location: FF_X22_Y17_N29
\ce2|reg2_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|MUX3_1|Mux5~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg2_out\(3));

-- Location: LCCOMB_X21_Y17_N28
\ce2|MUX3_3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_3|Mux8~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce2|reg1_out\(3))))) # (!\fsm0|current_state.S2~q\ & (((\ce2|reg2_out\(3))) # (!\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => \ce2|reg1_out\(3),
	datad => \ce2|reg2_out\(3),
	combout => \ce2|MUX3_3|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y17_N30
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ = \fsm0|current_state.S3~q\ $ (z_2(11) $ (\ce2|MUX3_3|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => z_2(11),
	datad => \ce2|MUX3_3|Mux8~0_combout\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\);

-- Location: FF_X22_Y16_N27
\z_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(3));

-- Location: LCCOMB_X22_Y16_N12
\y_2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_2[3]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	combout => \y_2[3]~feeder_combout\);

-- Location: FF_X22_Y16_N13
\y_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_2[3]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(3));

-- Location: LCCOMB_X22_Y16_N26
\ce2|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_2(3))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_2(3),
	datad => y_2(3),
	combout => \ce2|MUX3_1|Mux8~0_combout\);

-- Location: FF_X22_Y18_N13
\x_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(3));

-- Location: LCCOMB_X22_Y16_N30
\ce2|MUX3_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux8~1_combout\ = (\ce2|MUX3_1|Mux8~0_combout\) # ((x_2(3) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce2|MUX3_1|Mux8~0_combout\,
	datad => x_2(3),
	combout => \ce2|MUX3_1|Mux8~1_combout\);

-- Location: LCCOMB_X21_Y17_N22
\ce2|MUX3_1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux6~2_combout\ = (\fsm0|current_state.S2~q\ & (x_2(5))) # (!\fsm0|current_state.S2~q\ & ((y_2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_2(5),
	datac => y_2(5),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce2|MUX3_1|Mux6~2_combout\);

-- Location: FF_X21_Y17_N25
\ce2|reg1_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|MUX3_1|Mux6~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg1_out\(2));

-- Location: FF_X21_Y17_N23
\ce2|reg2_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|MUX3_1|Mux6~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg2_out\(2));

-- Location: LCCOMB_X21_Y17_N24
\ce2|MUX3_3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_3|Mux9~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce2|reg1_out\(2))))) # (!\fsm0|current_state.S2~q\ & (((\ce2|reg2_out\(2))) # (!\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => \ce2|reg1_out\(2),
	datad => \ce2|reg2_out\(2),
	combout => \ce2|MUX3_3|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y17_N0
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ = z_2(11) $ (\fsm0|current_state.S3~q\ $ (\ce2|MUX3_3|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_2(11),
	datab => \fsm0|current_state.S3~q\,
	datad => \ce2|MUX3_3|Mux9~0_combout\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\);

-- Location: LCCOMB_X21_Y18_N0
\z_2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_2[2]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	combout => \z_2[2]~feeder_combout\);

-- Location: FF_X21_Y18_N1
\z_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_2[2]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(2));

-- Location: FF_X21_Y18_N31
\y_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(2));

-- Location: LCCOMB_X21_Y18_N30
\ce2|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_2(2))) # (!\fsm0|current_state.S2~q\ & ((y_2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_2(2),
	datac => y_2(2),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce2|MUX3_1|Mux9~0_combout\);

-- Location: FF_X22_Y18_N11
\x_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(2));

-- Location: LCCOMB_X21_Y18_N20
\ce2|MUX3_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux9~1_combout\ = (\ce2|MUX3_1|Mux9~0_combout\) # ((x_2(2) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|MUX3_1|Mux9~0_combout\,
	datab => x_2(2),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce2|MUX3_1|Mux9~1_combout\);

-- Location: LCCOMB_X22_Y17_N14
\ce2|MUX3_1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux7~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_2(4)))) # (!\fsm0|current_state.S2~q\ & (y_2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datac => y_2(4),
	datad => x_2(4),
	combout => \ce2|MUX3_1|Mux7~2_combout\);

-- Location: FF_X23_Y17_N31
\ce2|reg1_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|MUX3_1|Mux7~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg1_out\(1));

-- Location: FF_X22_Y17_N15
\ce2|reg2_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|MUX3_1|Mux7~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg2_out\(1));

-- Location: LCCOMB_X23_Y17_N30
\ce2|MUX3_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_3|Mux10~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce2|reg1_out\(1))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce2|reg2_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce2|reg1_out\(1),
	datad => \ce2|reg2_out\(1),
	combout => \ce2|MUX3_3|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y17_N4
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ = \fsm0|current_state.S3~q\ $ (\ce2|MUX3_3|Mux10~0_combout\ $ (z_2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => \ce2|MUX3_3|Mux10~0_combout\,
	datad => z_2(11),
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\);

-- Location: FF_X22_Y18_N9
\x_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(1));

-- Location: LCCOMB_X21_Y18_N18
\z_2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_2[1]~feeder_combout\ = \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	combout => \z_2[1]~feeder_combout\);

-- Location: FF_X21_Y18_N19
\z_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_2[1]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(1));

-- Location: FF_X21_Y18_N25
\y_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(1));

-- Location: LCCOMB_X21_Y18_N24
\ce2|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux10~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_2(1))) # (!\fsm0|current_state.S2~q\ & ((y_2(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_2(1),
	datac => y_2(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce2|MUX3_1|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y18_N2
\ce2|MUX3_1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux10~1_combout\ = (\ce2|MUX3_1|Mux10~0_combout\) # ((x_2(1) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_2(1),
	datab => \fsm0|current_state.S1~q\,
	datad => \ce2|MUX3_1|Mux10~0_combout\,
	combout => \ce2|MUX3_1|Mux10~1_combout\);

-- Location: FF_X24_Y18_N27
\x_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_2(0));

-- Location: FF_X23_Y18_N21
\z_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_2(0));

-- Location: FF_X22_Y18_N7
\y_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce1|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_2(0));

-- Location: LCCOMB_X23_Y18_N20
\ce2|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (z_2(0))) # (!\fsm0|current_state.S2~q\ & ((y_2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S2~q\,
	datac => z_2(0),
	datad => y_2(0),
	combout => \ce2|MUX3_1|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\ce2|MUX3_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux11~1_combout\ = (\fsm0|current_state.S1~q\ & ((\ce2|MUX3_1|Mux11~0_combout\))) # (!\fsm0|current_state.S1~q\ & (x_2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => x_2(0),
	datad => \ce2|MUX3_1|Mux11~0_combout\,
	combout => \ce2|MUX3_1|Mux11~1_combout\);

-- Location: LCCOMB_X25_Y18_N6
\ce2|MUX3_1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_1|Mux8~2_combout\ = (\fsm0|current_state.S2~q\ & (x_2(3))) # (!\fsm0|current_state.S2~q\ & ((y_2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_2(3),
	datad => y_2(3),
	combout => \ce2|MUX3_1|Mux8~2_combout\);

-- Location: FF_X25_Y18_N17
\ce2|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|MUX3_1|Mux8~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg1_out\(0));

-- Location: FF_X25_Y18_N7
\ce2|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|MUX3_1|Mux8~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce2|reg2_out\(0));

-- Location: LCCOMB_X25_Y18_N16
\ce2|MUX3_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|MUX3_3|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce2|reg1_out\(0))))) # (!\fsm0|current_state.S2~q\ & (((\ce2|reg2_out\(0))) # (!\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => \ce2|reg1_out\(0),
	datad => \ce2|reg2_out\(0),
	combout => \ce2|MUX3_3|Mux11~0_combout\);

-- Location: LCCOMB_X25_Y18_N28
\ce2|add|LPM_ADD_SUB_component|auto_generated|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ = z_2(11) $ (\fsm0|current_state.S3~q\ $ (\ce2|MUX3_3|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_2(11),
	datab => \fsm0|current_state.S3~q\,
	datad => \ce2|MUX3_3|Mux11~0_combout\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\);

-- Location: LCCOMB_X24_Y18_N0
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(\fsm0|current_state.S3~q\ $ (z_2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => z_2(11),
	datad => VCC,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X24_Y18_N2
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce2|MUX3_1|Mux11~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & (\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\ce2|MUX3_1|Mux11~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce2|MUX3_1|Mux11~1_combout\ & (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce2|MUX3_1|Mux11~1_combout\ & ((!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|MUX3_1|Mux11~1_combout\,
	datab => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~9_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X24_Y18_N4
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ $ (\ce2|MUX3_1|Mux10~1_combout\ $ (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & ((\ce2|MUX3_1|Mux10~1_combout\) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & (\ce2|MUX3_1|Mux10~1_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\,
	datab => \ce2|MUX3_1|Mux10~1_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X24_Y18_N6
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce2|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((\ce2|MUX3_1|Mux9~1_combout\ & (\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\ce2|MUX3_1|Mux9~1_combout\ & (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((\ce2|MUX3_1|Mux9~1_combout\ & 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce2|MUX3_1|Mux9~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & (!\ce2|MUX3_1|Mux9~1_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\ce2|MUX3_1|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\,
	datab => \ce2|MUX3_1|Mux9~1_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X24_Y18_N8
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ $ (\ce2|MUX3_1|Mux8~1_combout\ $ (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((\ce2|MUX3_1|Mux8~1_combout\) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (\ce2|MUX3_1|Mux8~1_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\,
	datab => \ce2|MUX3_1|Mux8~1_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X24_Y18_N10
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce2|MUX3_1|Mux7~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & (\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\ce2|MUX3_1|Mux7~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce2|MUX3_1|Mux7~1_combout\ & (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce2|MUX3_1|Mux7~1_combout\ & ((!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|MUX3_1|Mux7~1_combout\,
	datab => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X24_Y18_N12
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce2|MUX3_1|Mux6~1_combout\ $ (\ce2|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ $ (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce2|MUX3_1|Mux6~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # 
-- (!\ce2|MUX3_1|Mux6~1_combout\ & (\ce2|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|MUX3_1|Mux6~1_combout\,
	datab => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X24_Y18_N14
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce2|MUX3_1|Mux5~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\ce2|MUX3_1|Mux5~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce2|MUX3_1|Mux5~1_combout\ & (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce2|MUX3_1|Mux5~1_combout\ & ((!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|MUX3_1|Mux5~1_combout\,
	datab => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X24_Y18_N16
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce2|MUX3_1|Mux4~1_combout\ $ (\ce2|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ $ (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce2|MUX3_1|Mux4~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # 
-- (!\ce2|MUX3_1|Mux4~1_combout\ & (\ce2|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|MUX3_1|Mux4~1_combout\,
	datab => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X24_Y18_N18
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce2|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce2|MUX3_1|Mux3~1_combout\ & (\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\ce2|MUX3_1|Mux3~1_combout\ & (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce2|MUX3_1|Mux3~1_combout\ & 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\ce2|MUX3_1|Mux3~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (!\ce2|MUX3_1|Mux3~1_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce2|MUX3_1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datab => \ce2|MUX3_1|Mux3~1_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X24_Y18_N20
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce2|MUX3_1|Mux2~1_combout\ $ (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce2|MUX3_1|Mux2~1_combout\) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce2|MUX3_1|Mux2~1_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce2|MUX3_1|Mux2~1_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X24_Y18_N22
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce2|MUX3_1|Mux1~1_combout\ & (\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # 
-- (!\ce2|MUX3_1|Mux1~1_combout\ & (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce2|MUX3_1|Mux1~1_combout\ & 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\ce2|MUX3_1|Mux1~1_combout\ & ((\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce2|MUX3_1|Mux1~1_combout\ & !\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce2|MUX3_1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce2|MUX3_1|Mux1~1_combout\,
	datad => VCC,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X24_Y18_N24
\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce2|MUX3_1|Mux0~1_combout\ $ (\ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ce2|MUX3_1|Mux0~1_combout\,
	datad => \ce2|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	cin => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: FF_X24_Y18_N1
\y_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(11));

-- Location: FF_X24_Y18_N25
\x_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(11));

-- Location: LCCOMB_X24_Y13_N0
\fsm0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|Selector3~0_combout\ = (\fsm0|current_state.S2~q\ & ((x_3(11)))) # (!\fsm0|current_state.S2~q\ & (y_3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_3(11),
	datac => \fsm0|current_state.S2~q\,
	datad => x_3(11),
	combout => \fsm0|Selector3~0_combout\);

-- Location: FF_X24_Y13_N7
\ce3|reg1_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector3~0_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg1_out\(7));

-- Location: FF_X24_Y13_N1
\ce3|reg2_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm0|Selector3~0_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg2_out\(7));

-- Location: LCCOMB_X24_Y13_N6
\ce3|MUX3_3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_3|Mux3~0_combout\ = (\fsm0|current_state.S3~q\ & ((!\ce3|reg2_out\(7)))) # (!\fsm0|current_state.S3~q\ & (!\ce3|reg1_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => \ce3|reg1_out\(7),
	datad => \ce3|reg2_out\(7),
	combout => \ce3|MUX3_3|Mux3~0_combout\);

-- Location: FF_X24_Y13_N29
\z_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(11));

-- Location: LCCOMB_X24_Y13_N14
\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \fsm0|current_state.S3~q\ $ (z_3(11) $ (((!\ce3|MUX3_3|Mux3~0_combout\ & \fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|MUX3_3|Mux3~0_combout\,
	datab => \fsm0|current_state.S1~q\,
	datac => \fsm0|current_state.S3~q\,
	datad => z_3(11),
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X24_Y13_N26
\ce3|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux0~0_combout\ = (\fsm0|current_state.S3~q\ & (((!\fsm0|current_state.S2~q\ & y_3(11))))) # (!\fsm0|current_state.S3~q\ & (z_3(11) & (\fsm0|current_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => z_3(11),
	datac => \fsm0|current_state.S2~q\,
	datad => y_3(11),
	combout => \ce3|MUX3_1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y13_N20
\ce3|MUX3_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux0~1_combout\ = (\ce3|MUX3_1|Mux0~0_combout\) # ((x_3(11) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce3|MUX3_1|Mux0~0_combout\,
	datad => x_3(11),
	combout => \ce3|MUX3_1|Mux0~1_combout\);

-- Location: FF_X24_Y18_N23
\x_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(10));

-- Location: FF_X24_Y14_N9
\z_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(10));

-- Location: LCCOMB_X24_Y14_N6
\y_3[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_3[10]~feeder_combout\ = \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	combout => \y_3[10]~feeder_combout\);

-- Location: FF_X24_Y14_N7
\y_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_3[10]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(10));

-- Location: LCCOMB_X24_Y14_N8
\ce3|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & (z_3(10)))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & ((y_3(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => z_3(10),
	datad => y_3(10),
	combout => \ce3|MUX3_1|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y14_N20
\ce3|MUX3_1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux1~1_combout\ = (\ce3|MUX3_1|Mux1~0_combout\) # ((x_3(10) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_3(10),
	datab => \ce3|MUX3_1|Mux1~0_combout\,
	datac => \fsm0|current_state.S2~q\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce3|MUX3_1|Mux1~1_combout\);

-- Location: FF_X24_Y18_N9
\y_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(9));

-- Location: FF_X23_Y18_N13
\z_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(9));

-- Location: LCCOMB_X23_Y18_N12
\ce3|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_3(9) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_3(9) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => y_3(9),
	datac => z_3(9),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce3|MUX3_1|Mux2~0_combout\);

-- Location: FF_X24_Y18_N21
\x_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(9));

-- Location: LCCOMB_X24_Y14_N30
\ce3|MUX3_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux2~1_combout\ = (\ce3|MUX3_1|Mux2~0_combout\) # ((x_3(9) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => \ce3|MUX3_1|Mux2~0_combout\,
	datad => x_3(9),
	combout => \ce3|MUX3_1|Mux2~1_combout\);

-- Location: FF_X24_Y18_N19
\x_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(8));

-- Location: FF_X24_Y14_N29
\z_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(8));

-- Location: LCCOMB_X24_Y14_N18
\y_3[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_3[8]~feeder_combout\ = \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \y_3[8]~feeder_combout\);

-- Location: FF_X24_Y14_N19
\y_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_3[8]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(8));

-- Location: LCCOMB_X24_Y14_N28
\ce3|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux3~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & (z_3(8)))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & ((y_3(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => z_3(8),
	datad => y_3(8),
	combout => \ce3|MUX3_1|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\ce3|MUX3_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux3~1_combout\ = (\ce3|MUX3_1|Mux3~0_combout\) # ((x_3(8) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_3(8),
	datab => \ce3|MUX3_1|Mux3~0_combout\,
	datac => \fsm0|current_state.S3~q\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce3|MUX3_1|Mux3~1_combout\);

-- Location: LCCOMB_X24_Y13_N22
\ce3|add|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = \fsm0|current_state.S3~q\ $ (z_3(11) $ (((!\fsm0|current_state.S1~q\) # (!\ce3|MUX3_3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|MUX3_3|Mux3~0_combout\,
	datab => \fsm0|current_state.S1~q\,
	datac => \fsm0|current_state.S3~q\,
	datad => z_3(11),
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X24_Y18_N17
\x_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(7));

-- Location: LCCOMB_X23_Y20_N18
\y_3[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_3[7]~feeder_combout\ = \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \y_3[7]~feeder_combout\);

-- Location: FF_X23_Y20_N19
\y_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_3[7]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(7));

-- Location: FF_X23_Y20_N25
\z_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(7));

-- Location: LCCOMB_X23_Y20_N24
\ce3|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_3(7) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_3(7) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_3(7),
	datab => \fsm0|current_state.S2~q\,
	datac => z_3(7),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce3|MUX3_1|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y20_N0
\ce3|MUX3_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux4~1_combout\ = (\ce3|MUX3_1|Mux4~0_combout\) # ((x_3(7) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => x_3(7),
	datad => \ce3|MUX3_1|Mux4~0_combout\,
	combout => \ce3|MUX3_1|Mux4~1_combout\);

-- Location: FF_X24_Y18_N15
\x_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(6));

-- Location: FF_X24_Y17_N1
\z_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(6));

-- Location: FF_X24_Y18_N5
\y_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(6));

-- Location: LCCOMB_X24_Y17_N0
\ce3|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_3(6))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_3(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_3(6),
	datad => y_3(6),
	combout => \ce3|MUX3_1|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y17_N22
\ce3|MUX3_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux5~1_combout\ = (\ce3|MUX3_1|Mux5~0_combout\) # ((x_3(6) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_3(6),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce3|MUX3_1|Mux5~0_combout\,
	combout => \ce3|MUX3_1|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y17_N30
\ce3|MUX3_1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux1~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_3(10)))) # (!\fsm0|current_state.S2~q\ & (y_3(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_3(10),
	datac => x_3(10),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce3|MUX3_1|Mux1~2_combout\);

-- Location: FF_X24_Y17_N31
\ce3|reg2_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|MUX3_1|Mux1~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg2_out\(6));

-- Location: FF_X24_Y17_N9
\ce3|reg1_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg1_out\(6));

-- Location: LCCOMB_X24_Y17_N8
\ce3|MUX3_3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_3|Mux5~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce3|reg1_out\(6))))) # (!\fsm0|current_state.S2~q\ & (\ce3|reg2_out\(6) & ((\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|reg2_out\(6),
	datab => \fsm0|current_state.S2~q\,
	datac => \ce3|reg1_out\(6),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce3|MUX3_3|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y13_N2
\ce3|add|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \fsm0|current_state.S3~q\ $ (\ce3|MUX3_3|Mux5~0_combout\ $ (z_3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \ce3|MUX3_3|Mux5~0_combout\,
	datad => z_3(11),
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X24_Y17_N20
\ce3|MUX3_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux2~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_3(9)))) # (!\fsm0|current_state.S2~q\ & (y_3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_3(9),
	datac => \fsm0|current_state.S2~q\,
	datad => x_3(9),
	combout => \ce3|MUX3_1|Mux2~2_combout\);

-- Location: FF_X24_Y17_N19
\ce3|reg1_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|MUX3_1|Mux2~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg1_out\(5));

-- Location: FF_X24_Y17_N21
\ce3|reg2_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|MUX3_1|Mux2~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg2_out\(5));

-- Location: LCCOMB_X24_Y17_N18
\ce3|MUX3_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_3|Mux6~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce3|reg1_out\(5))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce3|reg2_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce3|reg1_out\(5),
	datad => \ce3|reg2_out\(5),
	combout => \ce3|MUX3_3|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y13_N12
\ce3|add|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = \fsm0|current_state.S3~q\ $ (\ce3|MUX3_3|Mux6~0_combout\ $ (z_3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => \ce3|MUX3_3|Mux6~0_combout\,
	datad => z_3(11),
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: FF_X24_Y18_N13
\x_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(5));

-- Location: FF_X23_Y17_N29
\z_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(5));

-- Location: LCCOMB_X23_Y17_N18
\y_3[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_3[5]~feeder_combout\ = \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	combout => \y_3[5]~feeder_combout\);

-- Location: FF_X23_Y17_N19
\y_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_3[5]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(5));

-- Location: LCCOMB_X23_Y17_N28
\ce3|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_3(5))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_3(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_3(5),
	datad => y_3(5),
	combout => \ce3|MUX3_1|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y17_N24
\ce3|MUX3_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux6~1_combout\ = (\ce3|MUX3_1|Mux6~0_combout\) # ((x_3(5) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => x_3(5),
	datad => \ce3|MUX3_1|Mux6~0_combout\,
	combout => \ce3|MUX3_1|Mux6~1_combout\);

-- Location: LCCOMB_X24_Y13_N4
\ce3|MUX3_1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux3~2_combout\ = (\fsm0|current_state.S2~q\ & (x_3(8))) # (!\fsm0|current_state.S2~q\ & ((y_3(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S2~q\,
	datac => x_3(8),
	datad => y_3(8),
	combout => \ce3|MUX3_1|Mux3~2_combout\);

-- Location: FF_X24_Y13_N31
\ce3|reg1_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|MUX3_1|Mux3~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg1_out\(4));

-- Location: FF_X24_Y13_N5
\ce3|reg2_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|MUX3_1|Mux3~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg2_out\(4));

-- Location: LCCOMB_X24_Y13_N30
\ce3|MUX3_3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_3|Mux7~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce3|reg1_out\(4))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce3|reg2_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => \ce3|reg1_out\(4),
	datad => \ce3|reg2_out\(4),
	combout => \ce3|MUX3_3|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y13_N10
\ce3|add|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \fsm0|current_state.S3~q\ $ (\ce3|MUX3_3|Mux7~0_combout\ $ (z_3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => \ce3|MUX3_3|Mux7~0_combout\,
	datad => z_3(11),
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: FF_X24_Y18_N11
\x_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(4));

-- Location: LCCOMB_X23_Y17_N14
\y_3[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_3[4]~feeder_combout\ = \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	combout => \y_3[4]~feeder_combout\);

-- Location: FF_X23_Y17_N15
\y_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_3[4]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(4));

-- Location: FF_X23_Y17_N9
\z_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(4));

-- Location: LCCOMB_X23_Y17_N8
\ce3|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux7~0_combout\ = (\fsm0|current_state.S3~q\ & (y_3(4) & ((!\fsm0|current_state.S2~q\)))) # (!\fsm0|current_state.S3~q\ & (((z_3(4) & \fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => y_3(4),
	datac => z_3(4),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce3|MUX3_1|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\ce3|MUX3_1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux7~1_combout\ = (\ce3|MUX3_1|Mux7~0_combout\) # ((x_3(4) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_3(4),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce3|MUX3_1|Mux7~0_combout\,
	combout => \ce3|MUX3_1|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y17_N26
\ce3|MUX3_1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux4~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_3(7)))) # (!\fsm0|current_state.S2~q\ & (y_3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_3(7),
	datab => x_3(7),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce3|MUX3_1|Mux4~2_combout\);

-- Location: FF_X24_Y17_N17
\ce3|reg1_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|MUX3_1|Mux4~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg1_out\(3));

-- Location: FF_X24_Y17_N27
\ce3|reg2_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|MUX3_1|Mux4~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg2_out\(3));

-- Location: LCCOMB_X24_Y17_N16
\ce3|MUX3_3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_3|Mux8~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce3|reg1_out\(3))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce3|reg2_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce3|reg1_out\(3),
	datad => \ce3|reg2_out\(3),
	combout => \ce3|MUX3_3|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y13_N8
\ce3|add|LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ = \fsm0|current_state.S3~q\ $ (\ce3|MUX3_3|Mux8~0_combout\ $ (z_3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => \ce3|MUX3_3|Mux8~0_combout\,
	datad => z_3(11),
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: FF_X25_Y17_N23
\z_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(3));

-- Location: FF_X25_Y17_N13
\y_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(3));

-- Location: LCCOMB_X25_Y17_N12
\ce3|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_3(3))) # (!\fsm0|current_state.S2~q\ & ((y_3(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_3(3),
	datab => \fsm0|current_state.S2~q\,
	datac => y_3(3),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce3|MUX3_1|Mux8~0_combout\);

-- Location: FF_X24_Y18_N3
\x_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(3));

-- Location: LCCOMB_X25_Y17_N22
\ce3|MUX3_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux8~1_combout\ = (\ce3|MUX3_1|Mux8~0_combout\) # ((x_3(3) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|MUX3_1|Mux8~0_combout\,
	datab => x_3(3),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce3|MUX3_1|Mux8~1_combout\);

-- Location: LCCOMB_X22_Y15_N6
\z_3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_3[2]~feeder_combout\ = \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	combout => \z_3[2]~feeder_combout\);

-- Location: FF_X22_Y15_N7
\z_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_3[2]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(2));

-- Location: FF_X22_Y15_N29
\y_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(2));

-- Location: LCCOMB_X22_Y15_N28
\ce3|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_3(2))) # (!\fsm0|current_state.S2~q\ & ((y_3(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_3(2),
	datab => \fsm0|current_state.S2~q\,
	datac => y_3(2),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce3|MUX3_1|Mux9~0_combout\);

-- Location: FF_X24_Y18_N7
\x_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(2));

-- Location: LCCOMB_X22_Y15_N10
\ce3|MUX3_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux9~1_combout\ = (\ce3|MUX3_1|Mux9~0_combout\) # ((x_3(2) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ce3|MUX3_1|Mux9~0_combout\,
	datac => x_3(2),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce3|MUX3_1|Mux9~1_combout\);

-- Location: LCCOMB_X24_Y17_N10
\ce3|MUX3_1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux5~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_3(6)))) # (!\fsm0|current_state.S2~q\ & (y_3(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_3(6),
	datac => \fsm0|current_state.S2~q\,
	datad => x_3(6),
	combout => \ce3|MUX3_1|Mux5~2_combout\);

-- Location: FF_X24_Y17_N5
\ce3|reg1_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|MUX3_1|Mux5~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg1_out\(2));

-- Location: FF_X24_Y17_N11
\ce3|reg2_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|MUX3_1|Mux5~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg2_out\(2));

-- Location: LCCOMB_X24_Y17_N4
\ce3|MUX3_3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_3|Mux9~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce3|reg1_out\(2))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce3|reg2_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce3|reg1_out\(2),
	datad => \ce3|reg2_out\(2),
	combout => \ce3|MUX3_3|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y13_N18
\ce3|add|LPM_ADD_SUB_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ = \fsm0|current_state.S3~q\ $ (\ce3|MUX3_3|Mux9~0_combout\ $ (z_3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => \ce3|MUX3_3|Mux9~0_combout\,
	datad => z_3(11),
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\);

-- Location: FF_X24_Y18_N31
\x_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(1));

-- Location: LCCOMB_X21_Y18_N12
\z_3[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_3[1]~feeder_combout\ = \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	combout => \z_3[1]~feeder_combout\);

-- Location: FF_X21_Y18_N13
\z_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_3[1]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(1));

-- Location: FF_X21_Y18_N23
\y_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(1));

-- Location: LCCOMB_X21_Y18_N22
\ce3|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux10~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_3(1))) # (!\fsm0|current_state.S2~q\ & ((y_3(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_3(1),
	datab => \fsm0|current_state.S2~q\,
	datac => y_3(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce3|MUX3_1|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y18_N30
\ce3|MUX3_1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux10~1_combout\ = (\ce3|MUX3_1|Mux10~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => x_3(1),
	datad => \ce3|MUX3_1|Mux10~0_combout\,
	combout => \ce3|MUX3_1|Mux10~1_combout\);

-- Location: LCCOMB_X24_Y17_N6
\ce3|MUX3_1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux6~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_3(5)))) # (!\fsm0|current_state.S2~q\ & (y_3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_3(5),
	datac => x_3(5),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce3|MUX3_1|Mux6~2_combout\);

-- Location: FF_X24_Y17_N13
\ce3|reg1_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|MUX3_1|Mux6~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg1_out\(1));

-- Location: FF_X24_Y17_N7
\ce3|reg2_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|MUX3_1|Mux6~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg2_out\(1));

-- Location: LCCOMB_X24_Y17_N12
\ce3|MUX3_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_3|Mux10~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce3|reg1_out\(1))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce3|reg2_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce3|reg1_out\(1),
	datad => \ce3|reg2_out\(1),
	combout => \ce3|MUX3_3|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y13_N28
\ce3|add|LPM_ADD_SUB_component|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ = \fsm0|current_state.S3~q\ $ (z_3(11) $ (\ce3|MUX3_3|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => z_3(11),
	datad => \ce3|MUX3_3|Mux10~0_combout\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\);

-- Location: FF_X24_Y18_N29
\x_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_3(0));

-- Location: FF_X22_Y16_N7
\y_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_3(0));

-- Location: LCCOMB_X22_Y16_N20
\z_3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_3[0]~feeder_combout\ = \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce2|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \z_3[0]~feeder_combout\);

-- Location: FF_X22_Y16_N21
\z_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_3[0]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_3(0));

-- Location: LCCOMB_X22_Y16_N6
\ce3|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux11~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_3(0)))) # (!\fsm0|current_state.S2~q\ & (y_3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => y_3(0),
	datad => z_3(0),
	combout => \ce3|MUX3_1|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y16_N24
\ce3|MUX3_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux11~1_combout\ = (\ce3|MUX3_1|Mux11~0_combout\) # ((x_3(0) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_3(0),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce3|MUX3_1|Mux11~0_combout\,
	combout => \ce3|MUX3_1|Mux11~1_combout\);

-- Location: LCCOMB_X24_Y17_N2
\ce3|MUX3_1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_1|Mux7~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_3(4)))) # (!\fsm0|current_state.S2~q\ & (y_3(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_3(4),
	datab => x_3(4),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce3|MUX3_1|Mux7~2_combout\);

-- Location: FF_X24_Y17_N29
\ce3|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|MUX3_1|Mux7~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg1_out\(0));

-- Location: FF_X24_Y17_N3
\ce3|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|MUX3_1|Mux7~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce3|reg2_out\(0));

-- Location: LCCOMB_X24_Y17_N28
\ce3|MUX3_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|MUX3_3|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce3|reg1_out\(0))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce3|reg2_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce3|reg1_out\(0),
	datad => \ce3|reg2_out\(0),
	combout => \ce3|MUX3_3|Mux11~0_combout\);

-- Location: LCCOMB_X25_Y13_N2
\ce3|add|LPM_ADD_SUB_component|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ = z_3(11) $ (\fsm0|current_state.S3~q\ $ (\ce3|MUX3_3|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_3(11),
	datab => \fsm0|current_state.S3~q\,
	datad => \ce3|MUX3_3|Mux11~0_combout\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\);

-- Location: LCCOMB_X25_Y13_N4
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(z_3(11) $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_3(11),
	datab => \fsm0|current_state.S3~q\,
	datad => VCC,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X25_Y13_N6
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce3|MUX3_1|Mux11~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & (\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\ce3|MUX3_1|Mux11~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce3|MUX3_1|Mux11~1_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce3|MUX3_1|Mux11~1_combout\ & ((!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|MUX3_1|Mux11~1_combout\,
	datab => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~8_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X25_Y13_N8
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce3|MUX3_1|Mux10~1_combout\ $ (\ce3|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ $ (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce3|MUX3_1|Mux10~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\ce3|MUX3_1|Mux10~1_combout\ & (\ce3|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|MUX3_1|Mux10~1_combout\,
	datab => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X25_Y13_N10
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce3|MUX3_1|Mux9~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\ce3|MUX3_1|Mux9~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce3|MUX3_1|Mux9~1_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce3|MUX3_1|Mux9~1_combout\ & ((!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|MUX3_1|Mux9~1_combout\,
	datab => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X25_Y13_N12
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ $ (\ce3|MUX3_1|Mux8~1_combout\ $ (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((\ce3|MUX3_1|Mux8~1_combout\) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & (\ce3|MUX3_1|Mux8~1_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datab => \ce3|MUX3_1|Mux8~1_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X25_Y13_N14
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce3|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\ce3|MUX3_1|Mux7~1_combout\ & (\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\ce3|MUX3_1|Mux7~1_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\ce3|MUX3_1|Mux7~1_combout\ & 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce3|MUX3_1|Mux7~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (!\ce3|MUX3_1|Mux7~1_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\ce3|MUX3_1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datab => \ce3|MUX3_1|Mux7~1_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X25_Y13_N16
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ $ (\ce3|MUX3_1|Mux6~1_combout\ $ (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((\ce3|MUX3_1|Mux6~1_combout\) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (\ce3|MUX3_1|Mux6~1_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datab => \ce3|MUX3_1|Mux6~1_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X25_Y13_N18
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce3|MUX3_1|Mux5~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\ce3|MUX3_1|Mux5~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce3|MUX3_1|Mux5~1_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce3|MUX3_1|Mux5~1_combout\ & ((!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|MUX3_1|Mux5~1_combout\,
	datab => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X25_Y13_N20
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce3|MUX3_1|Mux4~1_combout\ $ (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce3|MUX3_1|Mux4~1_combout\) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce3|MUX3_1|Mux4~1_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce3|MUX3_1|Mux4~1_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X25_Y13_N22
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce3|MUX3_1|Mux3~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!\ce3|MUX3_1|Mux3~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce3|MUX3_1|Mux3~1_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce3|MUX3_1|Mux3~1_combout\ & ((!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|MUX3_1|Mux3~1_combout\,
	datab => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X25_Y13_N24
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce3|MUX3_1|Mux2~1_combout\ $ (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce3|MUX3_1|Mux2~1_combout\) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce3|MUX3_1|Mux2~1_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce3|MUX3_1|Mux2~1_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X25_Y13_N26
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce3|MUX3_1|Mux1~1_combout\ & (\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # 
-- (!\ce3|MUX3_1|Mux1~1_combout\ & (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce3|MUX3_1|Mux1~1_combout\ & 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\ce3|MUX3_1|Mux1~1_combout\ & ((\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce3|MUX3_1|Mux1~1_combout\ & !\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce3|MUX3_1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce3|MUX3_1|Mux1~1_combout\,
	datad => VCC,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X25_Y13_N28
\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\ce3|MUX3_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce3|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => \ce3|MUX3_1|Mux0~1_combout\,
	cin => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: FF_X25_Y13_N29
\x_4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(11));

-- Location: FF_X26_Y13_N29
\y_4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(11));

-- Location: LCCOMB_X26_Y13_N16
\ce4|MUX3_1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux0~2_combout\ = (\fsm0|current_state.S2~q\ & (x_4(11))) # (!\fsm0|current_state.S2~q\ & ((y_4(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S2~q\,
	datac => x_4(11),
	datad => y_4(11),
	combout => \ce4|MUX3_1|Mux0~2_combout\);

-- Location: FF_X25_Y14_N23
\ce4|reg1_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|MUX3_1|Mux0~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg1_out\(6));

-- Location: FF_X26_Y13_N17
\ce4|reg2_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|MUX3_1|Mux0~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg2_out\(6));

-- Location: LCCOMB_X25_Y14_N22
\ce4|MUX3_3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_3|Mux4~0_combout\ = (\fsm0|current_state.S3~q\ & ((!\ce4|reg2_out\(6)))) # (!\fsm0|current_state.S3~q\ & (!\ce4|reg1_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => \ce4|reg1_out\(6),
	datad => \ce4|reg2_out\(6),
	combout => \ce4|MUX3_3|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y13_N24
\z_4[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_4[11]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	combout => \z_4[11]~feeder_combout\);

-- Location: FF_X24_Y13_N25
\z_4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_4[11]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(11));

-- Location: LCCOMB_X25_Y14_N12
\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = z_4(11) $ (((\fsm0|current_state.S1~q\ & !\ce4|MUX3_3|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datac => \ce4|MUX3_3|Mux4~0_combout\,
	datad => z_4(11),
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X26_Y13_N28
\ce4|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux0~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & (y_4(11)))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & ((z_4(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_4(11),
	datad => z_4(11),
	combout => \ce4|MUX3_1|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y13_N6
\ce4|MUX3_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux0~1_combout\ = (\ce4|MUX3_1|Mux0~0_combout\) # ((x_4(11) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => x_4(11),
	datad => \ce4|MUX3_1|Mux0~0_combout\,
	combout => \ce4|MUX3_1|Mux0~1_combout\);

-- Location: FF_X25_Y13_N27
\x_4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(10));

-- Location: LCCOMB_X26_Y13_N26
\y_4[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_4[10]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	combout => \y_4[10]~feeder_combout\);

-- Location: FF_X26_Y13_N27
\y_4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_4[10]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(10));

-- Location: FF_X24_Y13_N3
\z_4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(10));

-- Location: LCCOMB_X23_Y13_N22
\ce4|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & ((z_4(10))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & (y_4(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => y_4(10),
	datad => z_4(10),
	combout => \ce4|MUX3_1|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\ce4|MUX3_1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux1~1_combout\ = (\ce4|MUX3_1|Mux1~0_combout\) # ((x_4(10) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_4(10),
	datab => \fsm0|current_state.S2~q\,
	datac => \fsm0|current_state.S3~q\,
	datad => \ce4|MUX3_1|Mux1~0_combout\,
	combout => \ce4|MUX3_1|Mux1~1_combout\);

-- Location: FF_X25_Y13_N25
\x_4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(9));

-- Location: FF_X26_Y15_N25
\z_4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(9));

-- Location: LCCOMB_X26_Y16_N20
\y_4[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_4[9]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	combout => \y_4[9]~feeder_combout\);

-- Location: FF_X26_Y16_N21
\y_4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_4[9]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(9));

-- Location: LCCOMB_X26_Y15_N24
\ce4|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & (z_4(9)))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & ((y_4(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => z_4(9),
	datad => y_4(9),
	combout => \ce4|MUX3_1|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y15_N14
\ce4|MUX3_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux2~1_combout\ = (\ce4|MUX3_1|Mux2~0_combout\) # ((x_4(9) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_4(9),
	datab => \fsm0|current_state.S3~q\,
	datac => \fsm0|current_state.S2~q\,
	datad => \ce4|MUX3_1|Mux2~0_combout\,
	combout => \ce4|MUX3_1|Mux2~1_combout\);

-- Location: FF_X25_Y13_N23
\x_4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(8));

-- Location: LCCOMB_X26_Y13_N18
\y_4[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_4[8]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \y_4[8]~feeder_combout\);

-- Location: FF_X26_Y13_N19
\y_4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_4[8]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(8));

-- Location: FF_X25_Y13_N1
\z_4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(8));

-- Location: LCCOMB_X25_Y13_N0
\ce4|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux3~0_combout\ = (\fsm0|current_state.S3~q\ & (y_4(8) & ((!\fsm0|current_state.S2~q\)))) # (!\fsm0|current_state.S3~q\ & (((z_4(8) & \fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => y_4(8),
	datac => z_4(8),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce4|MUX3_1|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y13_N30
\ce4|MUX3_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux3~1_combout\ = (\ce4|MUX3_1|Mux3~0_combout\) # ((x_4(8) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_4(8),
	datab => \ce4|MUX3_1|Mux3~0_combout\,
	datac => \fsm0|current_state.S3~q\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce4|MUX3_1|Mux3~1_combout\);

-- Location: FF_X25_Y13_N21
\x_4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(7));

-- Location: LCCOMB_X26_Y16_N30
\y_4[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_4[7]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \y_4[7]~feeder_combout\);

-- Location: FF_X26_Y16_N31
\y_4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_4[7]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(7));

-- Location: FF_X26_Y15_N11
\z_4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(7));

-- Location: LCCOMB_X26_Y15_N10
\ce4|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S3~q\ & (y_4(7) & ((!\fsm0|current_state.S2~q\)))) # (!\fsm0|current_state.S3~q\ & (((z_4(7) & \fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_4(7),
	datab => \fsm0|current_state.S3~q\,
	datac => z_4(7),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce4|MUX3_1|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y15_N4
\ce4|MUX3_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux4~1_combout\ = (\ce4|MUX3_1|Mux4~0_combout\) # ((x_4(7) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => x_4(7),
	datad => \ce4|MUX3_1|Mux4~0_combout\,
	combout => \ce4|MUX3_1|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y14_N10
\ce4|add|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = z_4(11) $ (((!\ce4|MUX3_3|Mux4~0_combout\) # (!\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datac => \ce4|MUX3_3|Mux4~0_combout\,
	datad => z_4(11),
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X25_Y13_N19
\x_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(6));

-- Location: LCCOMB_X25_Y14_N24
\z_4[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_4[6]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	combout => \z_4[6]~feeder_combout\);

-- Location: FF_X25_Y14_N25
\z_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_4[6]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(6));

-- Location: FF_X25_Y14_N3
\y_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(6));

-- Location: LCCOMB_X25_Y14_N2
\ce4|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S2~q\ & (z_4(6) & ((!\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (((y_4(6) & \fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_4(6),
	datac => y_4(6),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce4|MUX3_1|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y15_N6
\ce4|MUX3_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux5~1_combout\ = (\ce4|MUX3_1|Mux5~0_combout\) # ((x_4(6) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_4(6),
	datab => \fsm0|current_state.S3~q\,
	datac => \fsm0|current_state.S2~q\,
	datad => \ce4|MUX3_1|Mux5~0_combout\,
	combout => \ce4|MUX3_1|Mux5~1_combout\);

-- Location: FF_X25_Y13_N17
\x_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(5));

-- Location: FF_X24_Y15_N29
\z_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(5));

-- Location: LCCOMB_X24_Y14_N14
\y_4[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_4[5]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	combout => \y_4[5]~feeder_combout\);

-- Location: FF_X24_Y14_N15
\y_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_4[5]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(5));

-- Location: LCCOMB_X24_Y15_N28
\ce4|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_4(5))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_4(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_4(5),
	datad => y_4(5),
	combout => \ce4|MUX3_1|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y15_N2
\ce4|MUX3_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux6~1_combout\ = (\ce4|MUX3_1|Mux6~0_combout\) # ((x_4(5) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => x_4(5),
	datac => \fsm0|current_state.S2~q\,
	datad => \ce4|MUX3_1|Mux6~0_combout\,
	combout => \ce4|MUX3_1|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y13_N20
\ce4|MUX3_1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux1~2_combout\ = (\fsm0|current_state.S2~q\ & (x_4(10))) # (!\fsm0|current_state.S2~q\ & ((y_4(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_4(10),
	datab => \fsm0|current_state.S2~q\,
	datac => y_4(10),
	combout => \ce4|MUX3_1|Mux1~2_combout\);

-- Location: FF_X26_Y13_N21
\ce4|reg2_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|MUX3_1|Mux1~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg2_out\(5));

-- Location: FF_X23_Y13_N5
\ce4|reg1_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg1_out\(5));

-- Location: LCCOMB_X23_Y13_N4
\ce4|MUX3_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_3|Mux6~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce4|reg1_out\(5))))) # (!\fsm0|current_state.S2~q\ & (\ce4|reg2_out\(5) & (\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|reg2_out\(5),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce4|reg1_out\(5),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce4|MUX3_3|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y15_N0
\ce4|add|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = z_4(11) $ (\ce4|MUX3_3|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_4(11),
	datad => \ce4|MUX3_3|Mux6~0_combout\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X25_Y17_N28
\z_4[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_4[4]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	combout => \z_4[4]~feeder_combout\);

-- Location: FF_X25_Y17_N29
\z_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_4[4]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(4));

-- Location: FF_X25_Y17_N27
\y_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(4));

-- Location: LCCOMB_X25_Y17_N26
\ce4|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux7~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_4(4))) # (!\fsm0|current_state.S2~q\ & ((y_4(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_4(4),
	datac => y_4(4),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce4|MUX3_1|Mux7~0_combout\);

-- Location: FF_X25_Y13_N15
\x_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(4));

-- Location: LCCOMB_X25_Y17_N8
\ce4|MUX3_1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux7~1_combout\ = (\ce4|MUX3_1|Mux7~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_4(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datac => \ce4|MUX3_1|Mux7~0_combout\,
	datad => x_4(4),
	combout => \ce4|MUX3_1|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y15_N2
\ce4|MUX3_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux2~2_combout\ = (\fsm0|current_state.S2~q\ & (x_4(9))) # (!\fsm0|current_state.S2~q\ & ((y_4(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S2~q\,
	datac => x_4(9),
	datad => y_4(9),
	combout => \ce4|MUX3_1|Mux2~2_combout\);

-- Location: FF_X26_Y15_N3
\ce4|reg2_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|MUX3_1|Mux2~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg2_out\(4));

-- Location: FF_X26_Y15_N13
\ce4|reg1_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|MUX3_1|Mux2~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg1_out\(4));

-- Location: LCCOMB_X26_Y15_N12
\ce4|MUX3_3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_3|Mux7~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce4|reg1_out\(4))))) # (!\fsm0|current_state.S2~q\ & (\ce4|reg2_out\(4) & ((\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce4|reg2_out\(4),
	datac => \ce4|reg1_out\(4),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce4|MUX3_3|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y15_N8
\ce4|add|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = z_4(11) $ (\ce4|MUX3_3|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => z_4(11),
	datad => \ce4|MUX3_3|Mux7~0_combout\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: FF_X25_Y13_N13
\x_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(3));

-- Location: FF_X25_Y14_N7
\y_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(3));

-- Location: FF_X25_Y14_N17
\z_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(3));

-- Location: LCCOMB_X25_Y14_N6
\ce4|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_4(3)))) # (!\fsm0|current_state.S2~q\ & (y_4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_4(3),
	datad => z_4(3),
	combout => \ce4|MUX3_1|Mux8~0_combout\);

-- Location: LCCOMB_X25_Y14_N16
\ce4|MUX3_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux8~1_combout\ = (\ce4|MUX3_1|Mux8~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => x_4(3),
	datad => \ce4|MUX3_1|Mux8~0_combout\,
	combout => \ce4|MUX3_1|Mux8~1_combout\);

-- Location: LCCOMB_X26_Y13_N30
\ce4|MUX3_1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux3~2_combout\ = (\fsm0|current_state.S2~q\ & (x_4(8))) # (!\fsm0|current_state.S2~q\ & ((y_4(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S2~q\,
	datac => x_4(8),
	datad => y_4(8),
	combout => \ce4|MUX3_1|Mux3~2_combout\);

-- Location: FF_X26_Y13_N31
\ce4|reg2_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|MUX3_1|Mux3~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg2_out\(3));

-- Location: FF_X26_Y15_N31
\ce4|reg1_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|MUX3_1|Mux3~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg1_out\(3));

-- Location: LCCOMB_X26_Y15_N30
\ce4|MUX3_3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_3|Mux8~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce4|reg1_out\(3))))) # (!\fsm0|current_state.S2~q\ & (\ce4|reg2_out\(3) & ((\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce4|reg2_out\(3),
	datac => \ce4|reg1_out\(3),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce4|MUX3_3|Mux8~0_combout\);

-- Location: LCCOMB_X26_Y15_N0
\ce4|add|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \ce4|MUX3_3|Mux8~0_combout\ $ (z_4(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_3|Mux8~0_combout\,
	datac => z_4(11),
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: FF_X25_Y14_N31
\y_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(2));

-- Location: LCCOMB_X25_Y14_N20
\z_4[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_4[2]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	combout => \z_4[2]~feeder_combout\);

-- Location: FF_X25_Y14_N21
\z_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_4[2]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(2));

-- Location: LCCOMB_X25_Y14_N30
\ce4|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_4(2)))) # (!\fsm0|current_state.S2~q\ & (y_4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_4(2),
	datad => z_4(2),
	combout => \ce4|MUX3_1|Mux9~0_combout\);

-- Location: FF_X25_Y13_N11
\x_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(2));

-- Location: LCCOMB_X25_Y14_N8
\ce4|MUX3_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux9~1_combout\ = (\ce4|MUX3_1|Mux9~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_4(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datac => \ce4|MUX3_1|Mux9~0_combout\,
	datad => x_4(2),
	combout => \ce4|MUX3_1|Mux9~1_combout\);

-- Location: LCCOMB_X26_Y15_N20
\ce4|MUX3_1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux4~2_combout\ = (\fsm0|current_state.S2~q\ & (x_4(7))) # (!\fsm0|current_state.S2~q\ & ((y_4(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_4(7),
	datac => y_4(7),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce4|MUX3_1|Mux4~2_combout\);

-- Location: FF_X26_Y15_N21
\ce4|reg2_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|MUX3_1|Mux4~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg2_out\(2));

-- Location: FF_X26_Y15_N27
\ce4|reg1_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|MUX3_1|Mux4~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg1_out\(2));

-- Location: LCCOMB_X26_Y15_N26
\ce4|MUX3_3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_3|Mux9~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce4|reg1_out\(2))))) # (!\fsm0|current_state.S2~q\ & (\ce4|reg2_out\(2) & ((\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce4|reg2_out\(2),
	datac => \ce4|reg1_out\(2),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce4|MUX3_3|Mux9~0_combout\);

-- Location: LCCOMB_X26_Y15_N18
\ce4|add|LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ = z_4(11) $ (\ce4|MUX3_3|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_4(11),
	datac => \ce4|MUX3_3|Mux9~0_combout\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: FF_X25_Y14_N5
\y_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(1));

-- Location: LCCOMB_X25_Y14_N18
\z_4[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_4[1]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	combout => \z_4[1]~feeder_combout\);

-- Location: FF_X25_Y14_N19
\z_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_4[1]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(1));

-- Location: LCCOMB_X25_Y14_N4
\ce4|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux10~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_4(1)))) # (!\fsm0|current_state.S2~q\ & (y_4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_4(1),
	datad => z_4(1),
	combout => \ce4|MUX3_1|Mux10~0_combout\);

-- Location: FF_X25_Y13_N9
\x_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(1));

-- Location: LCCOMB_X25_Y14_N14
\ce4|MUX3_1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux10~1_combout\ = (\ce4|MUX3_1|Mux10~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datac => \ce4|MUX3_1|Mux10~0_combout\,
	datad => x_4(1),
	combout => \ce4|MUX3_1|Mux10~1_combout\);

-- Location: LCCOMB_X26_Y15_N14
\ce4|MUX3_1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux5~2_combout\ = (\fsm0|current_state.S2~q\ & (x_4(6))) # (!\fsm0|current_state.S2~q\ & ((y_4(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_4(6),
	datab => y_4(6),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce4|MUX3_1|Mux5~2_combout\);

-- Location: FF_X26_Y15_N15
\ce4|reg2_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|MUX3_1|Mux5~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg2_out\(1));

-- Location: FF_X26_Y15_N29
\ce4|reg1_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|MUX3_1|Mux5~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg1_out\(1));

-- Location: LCCOMB_X26_Y15_N28
\ce4|MUX3_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_3|Mux10~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce4|reg1_out\(1))))) # (!\fsm0|current_state.S2~q\ & (\ce4|reg2_out\(1) & ((\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce4|reg2_out\(1),
	datac => \ce4|reg1_out\(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce4|MUX3_3|Mux10~0_combout\);

-- Location: LCCOMB_X26_Y15_N16
\ce4|add|LPM_ADD_SUB_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ = z_4(11) $ (\ce4|MUX3_3|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_4(11),
	datad => \ce4|MUX3_3|Mux10~0_combout\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X25_Y15_N2
\ce4|MUX3_1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux6~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_4(5)))) # (!\fsm0|current_state.S2~q\ & (y_4(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_4(5),
	datab => x_4(5),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce4|MUX3_1|Mux6~2_combout\);

-- Location: FF_X26_Y15_N17
\ce4|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|MUX3_1|Mux6~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg2_out\(0));

-- Location: FF_X26_Y15_N23
\ce4|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|MUX3_1|Mux6~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce4|reg1_out\(0));

-- Location: LCCOMB_X26_Y15_N22
\ce4|MUX3_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_3|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce4|reg1_out\(0))))) # (!\fsm0|current_state.S2~q\ & (\ce4|reg2_out\(0) & ((\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce4|reg2_out\(0),
	datac => \ce4|reg1_out\(0),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce4|MUX3_3|Mux11~0_combout\);

-- Location: LCCOMB_X25_Y15_N30
\ce4|add|LPM_ADD_SUB_component|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ = z_4(11) $ (\ce4|MUX3_3|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_4(11),
	datad => \ce4|MUX3_3|Mux11~0_combout\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\);

-- Location: FF_X21_Y14_N3
\y_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_4(0));

-- Location: LCCOMB_X21_Y14_N16
\z_4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_4[0]~feeder_combout\ = \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \z_4[0]~feeder_combout\);

-- Location: FF_X21_Y14_N17
\z_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_4[0]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_4(0));

-- Location: LCCOMB_X21_Y14_N2
\ce4|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux11~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_4(0)))) # (!\fsm0|current_state.S2~q\ & (y_4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_4(0),
	datad => z_4(0),
	combout => \ce4|MUX3_1|Mux11~0_combout\);

-- Location: FF_X25_Y13_N3
\x_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce3|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_4(0));

-- Location: LCCOMB_X25_Y14_N0
\ce4|MUX3_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|MUX3_1|Mux11~1_combout\ = (\ce4|MUX3_1|Mux11~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_4(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datac => \ce4|MUX3_1|Mux11~0_combout\,
	datad => x_4(0),
	combout => \ce4|MUX3_1|Mux11~1_combout\);

-- Location: LCCOMB_X25_Y15_N4
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(!z_4(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_4(11),
	datad => VCC,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X25_Y15_N6
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((\ce4|MUX3_1|Mux11~1_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce4|MUX3_1|Mux11~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND))))) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((\ce4|MUX3_1|Mux11~1_combout\ & 
-- (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\ce4|MUX3_1|Mux11~1_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\))))
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce4|MUX3_1|Mux11~1_combout\))) # 
-- (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & (!\ce4|MUX3_1|Mux11~1_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~7_combout\,
	datab => \ce4|MUX3_1|Mux11~1_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X25_Y15_N8
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce4|MUX3_1|Mux10~1_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce4|MUX3_1|Mux10~1_combout\ & ((!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\))) # 
-- (!\ce4|MUX3_1|Mux10~1_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux10~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X25_Y15_N10
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce4|MUX3_1|Mux9~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)))) # (!\ce4|MUX3_1|Mux9~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & 
-- ((\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND))) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\))))
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce4|MUX3_1|Mux9~1_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce4|MUX3_1|Mux9~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux9~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X25_Y15_N12
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce4|MUX3_1|Mux8~1_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce4|MUX3_1|Mux8~1_combout\ & ((!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\))) # 
-- (!\ce4|MUX3_1|Mux8~1_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux8~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X25_Y15_N14
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce4|MUX3_1|Mux7~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)))) # (!\ce4|MUX3_1|Mux7~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & 
-- ((\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND))) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\))))
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce4|MUX3_1|Mux7~1_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce4|MUX3_1|Mux7~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux7~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X25_Y15_N16
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce4|MUX3_1|Mux6~1_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce4|MUX3_1|Mux6~1_combout\ & ((!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\))) # 
-- (!\ce4|MUX3_1|Mux6~1_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux6~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X25_Y15_N18
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce4|MUX3_1|Mux5~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)))) # (!\ce4|MUX3_1|Mux5~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND))) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce4|MUX3_1|Mux5~1_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce4|MUX3_1|Mux5~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux5~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X25_Y15_N20
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce4|MUX3_1|Mux4~1_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce4|MUX3_1|Mux4~1_combout\ & ((!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\))) # 
-- (!\ce4|MUX3_1|Mux4~1_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux4~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X25_Y15_N22
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce4|MUX3_1|Mux3~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)))) # (!\ce4|MUX3_1|Mux3~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND))) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\))))
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce4|MUX3_1|Mux3~1_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce4|MUX3_1|Mux3~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux3~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X25_Y15_N24
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce4|MUX3_1|Mux2~1_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce4|MUX3_1|Mux2~1_combout\ & ((!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))) # 
-- (!\ce4|MUX3_1|Mux2~1_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux2~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X25_Y15_N26
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce4|MUX3_1|Mux1~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)))) # (!\ce4|MUX3_1|Mux1~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND))) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\))))
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce4|MUX3_1|Mux1~1_combout\ & (\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce4|MUX3_1|Mux1~1_combout\ & ((\ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce4|MUX3_1|Mux1~1_combout\,
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X25_Y15_N28
\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (\ce4|MUX3_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ce4|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => \ce4|MUX3_1|Mux0~1_combout\,
	cin => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: FF_X24_Y15_N1
\z_5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(11));

-- Location: FF_X25_Y15_N11
\y_5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(11));

-- Location: FF_X25_Y15_N29
\x_5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(11));

-- Location: LCCOMB_X25_Y16_N30
\fsm0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|Selector5~0_combout\ = (\fsm0|current_state.S2~q\ & ((x_5(11)))) # (!\fsm0|current_state.S2~q\ & (y_5(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_5(11),
	datac => \fsm0|current_state.S2~q\,
	datad => x_5(11),
	combout => \fsm0|Selector5~0_combout\);

-- Location: FF_X24_Y16_N29
\ce5|reg1_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector5~0_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg1_out\(5));

-- Location: FF_X25_Y16_N31
\ce5|reg2_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm0|Selector5~0_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg2_out\(5));

-- Location: LCCOMB_X24_Y16_N28
\ce5|MUX3_3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_3|Mux5~0_combout\ = (\fsm0|current_state.S3~q\ & ((!\ce5|reg2_out\(5)))) # (!\fsm0|current_state.S3~q\ & (!\ce5|reg1_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => \ce5|reg1_out\(5),
	datad => \ce5|reg2_out\(5),
	combout => \ce5|MUX3_3|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y16_N30
\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \fsm0|current_state.S3~q\ $ (z_5(11) $ (((\fsm0|current_state.S1~q\ & !\ce5|MUX3_3|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => z_5(11),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce5|MUX3_3|Mux5~0_combout\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X25_Y16_N10
\ce5|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux0~0_combout\ = (\fsm0|current_state.S2~q\ & (z_5(11) & (!\fsm0|current_state.S3~q\))) # (!\fsm0|current_state.S2~q\ & (((\fsm0|current_state.S3~q\ & y_5(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_5(11),
	datab => \fsm0|current_state.S2~q\,
	datac => \fsm0|current_state.S3~q\,
	datad => y_5(11),
	combout => \ce5|MUX3_1|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y16_N28
\ce5|MUX3_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux0~1_combout\ = (\ce5|MUX3_1|Mux0~0_combout\) # ((x_5(11) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_5(11),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce5|MUX3_1|Mux0~0_combout\,
	combout => \ce5|MUX3_1|Mux0~1_combout\);

-- Location: FF_X25_Y15_N27
\x_5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(10));

-- Location: FF_X24_Y15_N27
\z_5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(10));

-- Location: FF_X25_Y15_N5
\y_5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(10));

-- Location: LCCOMB_X24_Y15_N26
\ce5|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_5(10))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_5(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_5(10),
	datad => y_5(10),
	combout => \ce5|MUX3_1|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y15_N16
\ce5|MUX3_1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux1~1_combout\ = (\ce5|MUX3_1|Mux1~0_combout\) # ((x_5(10) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => x_5(10),
	datac => \ce5|MUX3_1|Mux1~0_combout\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_1|Mux1~1_combout\);

-- Location: FF_X25_Y15_N25
\x_5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(9));

-- Location: FF_X25_Y15_N9
\y_5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(9));

-- Location: FF_X24_Y15_N19
\z_5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(9));

-- Location: LCCOMB_X24_Y15_N18
\ce5|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_5(9) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_5(9) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_5(9),
	datab => \fsm0|current_state.S2~q\,
	datac => z_5(9),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce5|MUX3_1|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y15_N24
\ce5|MUX3_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux2~1_combout\ = (\ce5|MUX3_1|Mux2~0_combout\) # ((x_5(9) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_5(9),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce5|MUX3_1|Mux2~0_combout\,
	combout => \ce5|MUX3_1|Mux2~1_combout\);

-- Location: FF_X25_Y15_N23
\x_5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(8));

-- Location: LCCOMB_X26_Y16_N22
\y_5[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_5[8]~feeder_combout\ = \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \y_5[8]~feeder_combout\);

-- Location: FF_X26_Y16_N23
\y_5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_5[8]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(8));

-- Location: FF_X26_Y16_N25
\z_5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(8));

-- Location: LCCOMB_X26_Y16_N24
\ce5|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux3~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_5(8) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_5(8) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_5(8),
	datab => \fsm0|current_state.S2~q\,
	datac => z_5(8),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce5|MUX3_1|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y16_N12
\ce5|MUX3_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux3~1_combout\ = (\ce5|MUX3_1|Mux3~0_combout\) # ((x_5(8) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_5(8),
	datab => \fsm0|current_state.S2~q\,
	datac => \fsm0|current_state.S3~q\,
	datad => \ce5|MUX3_1|Mux3~0_combout\,
	combout => \ce5|MUX3_1|Mux3~1_combout\);

-- Location: FF_X26_Y16_N5
\z_5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(7));

-- Location: LCCOMB_X26_Y16_N10
\y_5[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_5[7]~feeder_combout\ = \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \y_5[7]~feeder_combout\);

-- Location: FF_X26_Y16_N11
\y_5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_5[7]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(7));

-- Location: LCCOMB_X26_Y16_N4
\ce5|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_5(7))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_5(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_5(7),
	datad => y_5(7),
	combout => \ce5|MUX3_1|Mux4~0_combout\);

-- Location: FF_X25_Y15_N21
\x_5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(7));

-- Location: LCCOMB_X25_Y16_N18
\ce5|MUX3_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux4~1_combout\ = (\ce5|MUX3_1|Mux4~0_combout\) # ((x_5(7) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|MUX3_1|Mux4~0_combout\,
	datab => x_5(7),
	datac => \fsm0|current_state.S3~q\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_1|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y16_N12
\ce5|add|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = z_5(11) $ (\fsm0|current_state.S3~q\ $ (((!\ce5|MUX3_3|Mux5~0_combout\) # (!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_5(11),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce5|MUX3_3|Mux5~0_combout\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X24_Y15_N23
\z_5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(6));

-- Location: FF_X25_Y15_N7
\y_5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(6));

-- Location: LCCOMB_X24_Y15_N22
\ce5|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_5(6))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_5(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_5(6),
	datad => y_5(6),
	combout => \ce5|MUX3_1|Mux5~0_combout\);

-- Location: FF_X25_Y15_N19
\x_5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(6));

-- Location: LCCOMB_X24_Y15_N4
\ce5|MUX3_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux5~1_combout\ = (\ce5|MUX3_1|Mux5~0_combout\) # ((x_5(6) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|MUX3_1|Mux5~0_combout\,
	datab => \fsm0|current_state.S2~q\,
	datac => \fsm0|current_state.S3~q\,
	datad => x_5(6),
	combout => \ce5|MUX3_1|Mux5~1_combout\);

-- Location: FF_X23_Y16_N7
\z_5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(5));

-- Location: FF_X23_Y16_N23
\y_5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(5));

-- Location: LCCOMB_X23_Y16_N22
\ce5|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_5(5))) # (!\fsm0|current_state.S2~q\ & ((y_5(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_5(5),
	datab => \fsm0|current_state.S1~q\,
	datac => y_5(5),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_1|Mux6~0_combout\);

-- Location: FF_X25_Y15_N17
\x_5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(5));

-- Location: LCCOMB_X23_Y16_N20
\ce5|MUX3_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux6~1_combout\ = (\ce5|MUX3_1|Mux6~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_5(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => \ce5|MUX3_1|Mux6~0_combout\,
	datad => x_5(5),
	combout => \ce5|MUX3_1|Mux6~1_combout\);

-- Location: FF_X25_Y15_N15
\x_5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(4));

-- Location: FF_X23_Y16_N1
\z_5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(4));

-- Location: FF_X23_Y16_N3
\y_5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(4));

-- Location: LCCOMB_X23_Y16_N2
\ce5|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux7~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_5(4))) # (!\fsm0|current_state.S2~q\ & ((y_5(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_5(4),
	datac => y_5(4),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_1|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y16_N26
\ce5|MUX3_1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux7~1_combout\ = (\ce5|MUX3_1|Mux7~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_5(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => x_5(4),
	datad => \ce5|MUX3_1|Mux7~0_combout\,
	combout => \ce5|MUX3_1|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y15_N6
\ce5|MUX3_1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux1~2_combout\ = (\fsm0|current_state.S2~q\ & (x_5(10))) # (!\fsm0|current_state.S2~q\ & ((y_5(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_5(10),
	datac => y_5(10),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_1|Mux1~2_combout\);

-- Location: FF_X23_Y15_N29
\ce5|reg1_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg1_out\(4));

-- Location: FF_X24_Y15_N7
\ce5|reg2_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|MUX3_1|Mux1~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg2_out\(4));

-- Location: LCCOMB_X23_Y15_N28
\ce5|MUX3_3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_3|Mux7~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce5|reg1_out\(4))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce5|reg2_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce5|reg1_out\(4),
	datad => \ce5|reg2_out\(4),
	combout => \ce5|MUX3_3|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y15_N22
\ce5|add|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \fsm0|current_state.S3~q\ $ (z_5(11) $ (\ce5|MUX3_3|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => z_5(11),
	datad => \ce5|MUX3_3|Mux7~0_combout\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: FF_X23_Y16_N17
\z_5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(3));

-- Location: FF_X23_Y16_N11
\y_5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(3));

-- Location: LCCOMB_X23_Y16_N10
\ce5|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_5(3))) # (!\fsm0|current_state.S2~q\ & ((y_5(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_5(3),
	datac => y_5(3),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_1|Mux8~0_combout\);

-- Location: FF_X25_Y15_N13
\x_5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(3));

-- Location: LCCOMB_X23_Y16_N16
\ce5|MUX3_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux8~1_combout\ = (\ce5|MUX3_1|Mux8~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_5(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|MUX3_1|Mux8~0_combout\,
	datab => \fsm0|current_state.S1~q\,
	datad => x_5(3),
	combout => \ce5|MUX3_1|Mux8~1_combout\);

-- Location: LCCOMB_X24_Y15_N30
\ce5|MUX3_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux2~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_5(9)))) # (!\fsm0|current_state.S2~q\ & (y_5(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_5(9),
	datab => x_5(9),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_1|Mux2~2_combout\);

-- Location: FF_X24_Y15_N31
\ce5|reg2_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|MUX3_1|Mux2~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg2_out\(3));

-- Location: FF_X24_Y15_N9
\ce5|reg1_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|MUX3_1|Mux2~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg1_out\(3));

-- Location: LCCOMB_X24_Y15_N8
\ce5|MUX3_3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_3|Mux8~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce5|reg1_out\(3))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & (\ce5|reg2_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \ce5|reg2_out\(3),
	datac => \ce5|reg1_out\(3),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_3|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y15_N12
\ce5|add|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = z_5(11) $ (\ce5|MUX3_3|Mux8~0_combout\ $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_5(11),
	datac => \ce5|MUX3_3|Mux8~0_combout\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X25_Y17_N24
\z_5[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_5[2]~feeder_combout\ = \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	combout => \z_5[2]~feeder_combout\);

-- Location: FF_X25_Y17_N25
\z_5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_5[2]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(2));

-- Location: FF_X25_Y17_N15
\y_5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(2));

-- Location: LCCOMB_X25_Y17_N14
\ce5|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_5(2))) # (!\fsm0|current_state.S2~q\ & ((y_5(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_5(2),
	datac => y_5(2),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce5|MUX3_1|Mux9~0_combout\);

-- Location: FF_X25_Y15_N1
\x_5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(2));

-- Location: LCCOMB_X25_Y17_N20
\ce5|MUX3_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux9~1_combout\ = (\ce5|MUX3_1|Mux9~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_5(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datac => \ce5|MUX3_1|Mux9~0_combout\,
	datad => x_5(2),
	combout => \ce5|MUX3_1|Mux9~1_combout\);

-- Location: LCCOMB_X25_Y16_N16
\ce5|MUX3_1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux3~2_combout\ = (\fsm0|current_state.S2~q\ & (x_5(8))) # (!\fsm0|current_state.S2~q\ & ((y_5(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_5(8),
	datac => \fsm0|current_state.S2~q\,
	datad => y_5(8),
	combout => \ce5|MUX3_1|Mux3~2_combout\);

-- Location: FF_X26_Y16_N29
\ce5|reg1_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|MUX3_1|Mux3~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg1_out\(2));

-- Location: FF_X25_Y16_N17
\ce5|reg2_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|MUX3_1|Mux3~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg2_out\(2));

-- Location: LCCOMB_X26_Y16_N28
\ce5|MUX3_3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_3|Mux9~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce5|reg1_out\(2))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce5|reg2_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => \ce5|reg1_out\(2),
	datad => \ce5|reg2_out\(2),
	combout => \ce5|MUX3_3|Mux9~0_combout\);

-- Location: LCCOMB_X25_Y16_N26
\ce5|add|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \fsm0|current_state.S3~q\ $ (z_5(11) $ (\ce5|MUX3_3|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => z_5(11),
	datad => \ce5|MUX3_3|Mux9~0_combout\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: FF_X25_Y15_N31
\x_5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(1));

-- Location: LCCOMB_X25_Y17_N18
\z_5[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_5[1]~feeder_combout\ = \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	combout => \z_5[1]~feeder_combout\);

-- Location: FF_X25_Y17_N19
\z_5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_5[1]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(1));

-- Location: FF_X25_Y17_N17
\y_5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(1));

-- Location: LCCOMB_X25_Y17_N16
\ce5|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux10~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_5(1))) # (!\fsm0|current_state.S2~q\ & ((y_5(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_5(1),
	datac => y_5(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce5|MUX3_1|Mux10~0_combout\);

-- Location: LCCOMB_X25_Y17_N30
\ce5|MUX3_1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux10~1_combout\ = (\ce5|MUX3_1|Mux10~0_combout\) # ((x_5(1) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_5(1),
	datab => \ce5|MUX3_1|Mux10~0_combout\,
	datac => \fsm0|current_state.S1~q\,
	combout => \ce5|MUX3_1|Mux10~1_combout\);

-- Location: LCCOMB_X25_Y16_N20
\ce5|MUX3_1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux4~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_5(7)))) # (!\fsm0|current_state.S2~q\ & (y_5(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S2~q\,
	datac => y_5(7),
	datad => x_5(7),
	combout => \ce5|MUX3_1|Mux4~2_combout\);

-- Location: FF_X25_Y16_N21
\ce5|reg2_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|MUX3_1|Mux4~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg2_out\(1));

-- Location: FF_X26_Y16_N19
\ce5|reg1_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|MUX3_1|Mux4~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg1_out\(1));

-- Location: LCCOMB_X26_Y16_N18
\ce5|MUX3_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_3|Mux10~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce5|reg1_out\(1))))) # (!\fsm0|current_state.S2~q\ & (\ce5|reg2_out\(1) & ((\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce5|reg2_out\(1),
	datac => \ce5|reg1_out\(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce5|MUX3_3|Mux10~0_combout\);

-- Location: LCCOMB_X25_Y16_N22
\ce5|add|LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ = \fsm0|current_state.S3~q\ $ (z_5(11) $ (\ce5|MUX3_3|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datac => z_5(11),
	datad => \ce5|MUX3_3|Mux10~0_combout\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: FF_X25_Y15_N3
\x_5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_5(0));

-- Location: LCCOMB_X21_Y15_N10
\z_5[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_5[0]~feeder_combout\ = \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \z_5[0]~feeder_combout\);

-- Location: FF_X21_Y15_N11
\z_5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_5[0]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_5(0));

-- Location: FF_X21_Y15_N21
\y_5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce4|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_5(0));

-- Location: LCCOMB_X21_Y15_N20
\ce5|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux11~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_5(0))) # (!\fsm0|current_state.S2~q\ & ((y_5(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_5(0),
	datab => \fsm0|current_state.S1~q\,
	datac => y_5(0),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_1|Mux11~0_combout\);

-- Location: LCCOMB_X21_Y15_N2
\ce5|MUX3_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux11~1_combout\ = (\ce5|MUX3_1|Mux11~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_5(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => x_5(0),
	datad => \ce5|MUX3_1|Mux11~0_combout\,
	combout => \ce5|MUX3_1|Mux11~1_combout\);

-- Location: LCCOMB_X24_Y15_N20
\ce5|MUX3_1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_1|Mux5~2_combout\ = (\fsm0|current_state.S2~q\ & (x_5(6))) # (!\fsm0|current_state.S2~q\ & ((y_5(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_5(6),
	datac => \fsm0|current_state.S2~q\,
	datad => y_5(6),
	combout => \ce5|MUX3_1|Mux5~2_combout\);

-- Location: FF_X24_Y15_N21
\ce5|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|MUX3_1|Mux5~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg2_out\(0));

-- Location: FF_X24_Y15_N11
\ce5|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|MUX3_1|Mux5~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce5|reg1_out\(0));

-- Location: LCCOMB_X24_Y15_N10
\ce5|MUX3_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|MUX3_3|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce5|reg1_out\(0))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & (\ce5|reg2_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \ce5|reg2_out\(0),
	datac => \ce5|reg1_out\(0),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce5|MUX3_3|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y15_N0
\ce5|add|LPM_ADD_SUB_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ = \fsm0|current_state.S3~q\ $ (z_5(11) $ (\ce5|MUX3_3|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => z_5(11),
	datad => \ce5|MUX3_3|Mux11~0_combout\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X24_Y16_N0
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(\fsm0|current_state.S3~q\ $ (z_5(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => z_5(11),
	datad => VCC,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X24_Y16_N2
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce5|MUX3_1|Mux11~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\ce5|MUX3_1|Mux11~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce5|MUX3_1|Mux11~1_combout\ & (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce5|MUX3_1|Mux11~1_combout\ & ((!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|MUX3_1|Mux11~1_combout\,
	datab => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X24_Y16_N4
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce5|MUX3_1|Mux10~1_combout\ $ (\ce5|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ $ (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce5|MUX3_1|Mux10~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\ce5|MUX3_1|Mux10~1_combout\ & (\ce5|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|MUX3_1|Mux10~1_combout\,
	datab => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X24_Y16_N6
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce5|MUX3_1|Mux9~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\ce5|MUX3_1|Mux9~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce5|MUX3_1|Mux9~1_combout\ & (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce5|MUX3_1|Mux9~1_combout\ & ((!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|MUX3_1|Mux9~1_combout\,
	datab => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X24_Y16_N8
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce5|MUX3_1|Mux8~1_combout\ $ (\ce5|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ $ (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce5|MUX3_1|Mux8~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # 
-- (!\ce5|MUX3_1|Mux8~1_combout\ & (\ce5|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|MUX3_1|Mux8~1_combout\,
	datab => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X24_Y16_N10
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce5|MUX3_1|Mux7~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\ce5|MUX3_1|Mux7~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce5|MUX3_1|Mux7~1_combout\ & (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce5|MUX3_1|Mux7~1_combout\ & ((!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|MUX3_1|Mux7~1_combout\,
	datab => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X24_Y16_N12
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce5|MUX3_1|Mux6~1_combout\ $ (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce5|MUX3_1|Mux6~1_combout\) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce5|MUX3_1|Mux6~1_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce5|MUX3_1|Mux6~1_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X24_Y16_N14
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce5|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce5|MUX3_1|Mux5~1_combout\ & (\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\ce5|MUX3_1|Mux5~1_combout\ & (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce5|MUX3_1|Mux5~1_combout\ & 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\ce5|MUX3_1|Mux5~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (!\ce5|MUX3_1|Mux5~1_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!\ce5|MUX3_1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datab => \ce5|MUX3_1|Mux5~1_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X24_Y16_N16
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce5|MUX3_1|Mux4~1_combout\ $ (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce5|MUX3_1|Mux4~1_combout\) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce5|MUX3_1|Mux4~1_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce5|MUX3_1|Mux4~1_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X24_Y16_N18
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce5|MUX3_1|Mux3~1_combout\ & (\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\ce5|MUX3_1|Mux3~1_combout\ & (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce5|MUX3_1|Mux3~1_combout\ & 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\ce5|MUX3_1|Mux3~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce5|MUX3_1|Mux3~1_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce5|MUX3_1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce5|MUX3_1|Mux3~1_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X24_Y16_N20
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce5|MUX3_1|Mux2~1_combout\ $ (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce5|MUX3_1|Mux2~1_combout\) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce5|MUX3_1|Mux2~1_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce5|MUX3_1|Mux2~1_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X24_Y16_N22
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce5|MUX3_1|Mux1~1_combout\ & (\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # 
-- (!\ce5|MUX3_1|Mux1~1_combout\ & (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce5|MUX3_1|Mux1~1_combout\ & 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\ce5|MUX3_1|Mux1~1_combout\ & ((\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce5|MUX3_1|Mux1~1_combout\ & !\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce5|MUX3_1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce5|MUX3_1|Mux1~1_combout\,
	datad => VCC,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X24_Y16_N24
\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\ce5|MUX3_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce5|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => \ce5|MUX3_1|Mux0~1_combout\,
	cin => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: FF_X23_Y14_N13
\z_6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(11));

-- Location: FF_X25_Y16_N25
\y_6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(11));

-- Location: FF_X24_Y16_N25
\x_6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(11));

-- Location: LCCOMB_X25_Y16_N8
\fsm0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|Selector6~0_combout\ = (\fsm0|current_state.S2~q\ & ((x_6(11)))) # (!\fsm0|current_state.S2~q\ & (y_6(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_6(11),
	datab => x_6(11),
	datac => \fsm0|current_state.S2~q\,
	combout => \fsm0|Selector6~0_combout\);

-- Location: FF_X25_Y16_N9
\ce6|reg2_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm0|Selector6~0_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg2_out\(4));

-- Location: FF_X25_Y14_N29
\ce6|reg1_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector6~0_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg1_out\(4));

-- Location: LCCOMB_X25_Y14_N28
\ce6|MUX3_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_3|Mux6~0_combout\ = (\fsm0|current_state.S3~q\ & (!\ce6|reg2_out\(4))) # (!\fsm0|current_state.S3~q\ & ((!\ce6|reg1_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ce6|reg2_out\(4),
	datac => \ce6|reg1_out\(4),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce6|MUX3_3|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \fsm0|current_state.S3~q\ $ (z_6(11) $ (((\fsm0|current_state.S1~q\ & !\ce6|MUX3_3|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => z_6(11),
	datad => \ce6|MUX3_3|Mux6~0_combout\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X25_Y16_N24
\ce6|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux0~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & ((z_6(11))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & (y_6(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => y_6(11),
	datad => z_6(11),
	combout => \ce6|MUX3_1|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y16_N6
\ce6|MUX3_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux0~1_combout\ = (\ce6|MUX3_1|Mux0~0_combout\) # ((x_6(11) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_6(11),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce6|MUX3_1|Mux0~0_combout\,
	combout => \ce6|MUX3_1|Mux0~1_combout\);

-- Location: FF_X24_Y14_N11
\z_6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(10));

-- Location: LCCOMB_X24_Y14_N24
\y_6[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_6[10]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	combout => \y_6[10]~feeder_combout\);

-- Location: FF_X24_Y14_N25
\y_6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_6[10]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(10));

-- Location: LCCOMB_X24_Y14_N10
\ce6|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & (z_6(10)))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & ((y_6(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => z_6(10),
	datad => y_6(10),
	combout => \ce6|MUX3_1|Mux1~0_combout\);

-- Location: FF_X24_Y16_N23
\x_6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(10));

-- Location: LCCOMB_X23_Y14_N18
\ce6|MUX3_1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux1~1_combout\ = (\ce6|MUX3_1|Mux1~0_combout\) # ((x_6(10) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \ce6|MUX3_1|Mux1~0_combout\,
	datac => x_6(10),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y16_N6
\y_6[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_6[9]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	combout => \y_6[9]~feeder_combout\);

-- Location: FF_X26_Y16_N7
\y_6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_6[9]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(9));

-- Location: FF_X26_Y16_N17
\z_6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(9));

-- Location: LCCOMB_X26_Y16_N16
\ce6|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S3~q\ & (y_6(9) & ((!\fsm0|current_state.S2~q\)))) # (!\fsm0|current_state.S3~q\ & (((z_6(9) & \fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => y_6(9),
	datac => z_6(9),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux2~0_combout\);

-- Location: FF_X24_Y16_N21
\x_6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(9));

-- Location: LCCOMB_X23_Y14_N20
\ce6|MUX3_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux2~1_combout\ = (\ce6|MUX3_1|Mux2~0_combout\) # ((x_6(9) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \ce6|MUX3_1|Mux2~0_combout\,
	datac => x_6(9),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux2~1_combout\);

-- Location: FF_X24_Y16_N19
\x_6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(8));

-- Location: LCCOMB_X26_Y16_N2
\y_6[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_6[8]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \y_6[8]~feeder_combout\);

-- Location: FF_X26_Y16_N3
\y_6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_6[8]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(8));

-- Location: FF_X26_Y16_N13
\z_6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(8));

-- Location: LCCOMB_X26_Y16_N12
\ce6|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux3~0_combout\ = (\fsm0|current_state.S3~q\ & (y_6(8) & ((!\fsm0|current_state.S2~q\)))) # (!\fsm0|current_state.S3~q\ & (((z_6(8) & \fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => y_6(8),
	datac => z_6(8),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y14_N6
\ce6|MUX3_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux3~1_combout\ = (\ce6|MUX3_1|Mux3~0_combout\) # ((x_6(8) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_6(8),
	datab => \fsm0|current_state.S3~q\,
	datac => \ce6|MUX3_1|Mux3~0_combout\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux3~1_combout\);

-- Location: FF_X24_Y16_N17
\x_6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(7));

-- Location: FF_X24_Y14_N23
\z_6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(7));

-- Location: LCCOMB_X24_Y14_N12
\y_6[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_6[7]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \y_6[7]~feeder_combout\);

-- Location: FF_X24_Y14_N13
\y_6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_6[7]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(7));

-- Location: LCCOMB_X24_Y14_N22
\ce6|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & (z_6(7)))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & ((y_6(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => z_6(7),
	datad => y_6(7),
	combout => \ce6|MUX3_1|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y14_N4
\ce6|MUX3_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux4~1_combout\ = (\ce6|MUX3_1|Mux4~0_combout\) # ((x_6(7) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_6(7),
	datab => \ce6|MUX3_1|Mux4~0_combout\,
	datac => \fsm0|current_state.S3~q\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux4~1_combout\);

-- Location: FF_X22_Y16_N9
\y_6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(6));

-- Location: LCCOMB_X22_Y16_N22
\z_6[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_6[6]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	combout => \z_6[6]~feeder_combout\);

-- Location: FF_X22_Y16_N23
\z_6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_6[6]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(6));

-- Location: LCCOMB_X22_Y16_N8
\ce6|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_6(6)))) # (!\fsm0|current_state.S2~q\ & (y_6(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_6(6),
	datad => z_6(6),
	combout => \ce6|MUX3_1|Mux5~0_combout\);

-- Location: FF_X24_Y16_N15
\x_6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(6));

-- Location: LCCOMB_X22_Y16_N14
\ce6|MUX3_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux5~1_combout\ = (\ce6|MUX3_1|Mux5~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_6(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => \ce6|MUX3_1|Mux5~0_combout\,
	datad => x_6(6),
	combout => \ce6|MUX3_1|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y14_N30
\ce6|add|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = \fsm0|current_state.S3~q\ $ (z_6(11) $ (((!\ce6|MUX3_3|Mux6~0_combout\) # (!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => z_6(11),
	datad => \ce6|MUX3_3|Mux6~0_combout\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X22_Y16_N3
\y_6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(5));

-- Location: FF_X22_Y16_N17
\z_6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(5));

-- Location: LCCOMB_X22_Y16_N2
\ce6|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_6(5)))) # (!\fsm0|current_state.S2~q\ & (y_6(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_6(5),
	datad => z_6(5),
	combout => \ce6|MUX3_1|Mux6~0_combout\);

-- Location: FF_X24_Y16_N13
\x_6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(5));

-- Location: LCCOMB_X22_Y16_N16
\ce6|MUX3_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux6~1_combout\ = (\ce6|MUX3_1|Mux6~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_6(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \ce6|MUX3_1|Mux6~0_combout\,
	datad => x_6(5),
	combout => \ce6|MUX3_1|Mux6~1_combout\);

-- Location: FF_X24_Y16_N11
\x_6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(4));

-- Location: FF_X22_Y16_N11
\y_6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(4));

-- Location: LCCOMB_X22_Y16_N28
\z_6[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_6[4]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	combout => \z_6[4]~feeder_combout\);

-- Location: FF_X22_Y16_N29
\z_6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_6[4]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(4));

-- Location: LCCOMB_X22_Y16_N10
\ce6|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux7~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_6(4)))) # (!\fsm0|current_state.S2~q\ & (y_6(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => y_6(4),
	datad => z_6(4),
	combout => \ce6|MUX3_1|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y16_N28
\ce6|MUX3_1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux7~1_combout\ = (\ce6|MUX3_1|Mux7~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_6(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => x_6(4),
	datad => \ce6|MUX3_1|Mux7~0_combout\,
	combout => \ce6|MUX3_1|Mux7~1_combout\);

-- Location: LCCOMB_X21_Y16_N28
\z_6[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_6[3]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	combout => \z_6[3]~feeder_combout\);

-- Location: FF_X21_Y16_N29
\z_6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_6[3]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(3));

-- Location: FF_X21_Y16_N19
\y_6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(3));

-- Location: LCCOMB_X21_Y16_N18
\ce6|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_6(3))) # (!\fsm0|current_state.S2~q\ & ((y_6(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_6(3),
	datab => \fsm0|current_state.S2~q\,
	datac => y_6(3),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce6|MUX3_1|Mux8~0_combout\);

-- Location: FF_X24_Y16_N9
\x_6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(3));

-- Location: LCCOMB_X21_Y16_N20
\ce6|MUX3_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux8~1_combout\ = (\ce6|MUX3_1|Mux8~0_combout\) # ((x_6(3) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ce6|MUX3_1|Mux8~0_combout\,
	datac => x_6(3),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce6|MUX3_1|Mux8~1_combout\);

-- Location: LCCOMB_X23_Y14_N28
\ce6|MUX3_1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux1~2_combout\ = (\fsm0|current_state.S2~q\ & (x_6(10))) # (!\fsm0|current_state.S2~q\ & ((y_6(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S2~q\,
	datac => x_6(10),
	datad => y_6(10),
	combout => \ce6|MUX3_1|Mux1~2_combout\);

-- Location: FF_X23_Y14_N29
\ce6|reg2_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|MUX3_1|Mux1~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg2_out\(3));

-- Location: FF_X23_Y14_N23
\ce6|reg1_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg1_out\(3));

-- Location: LCCOMB_X23_Y14_N22
\ce6|MUX3_3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_3|Mux8~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce6|reg1_out\(3))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & (\ce6|reg2_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \ce6|reg2_out\(3),
	datac => \ce6|reg1_out\(3),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_3|Mux8~0_combout\);

-- Location: LCCOMB_X23_Y14_N10
\ce6|add|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \fsm0|current_state.S3~q\ $ (\ce6|MUX3_3|Mux8~0_combout\ $ (z_6(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => \ce6|MUX3_3|Mux8~0_combout\,
	datad => z_6(11),
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X23_Y14_N14
\ce6|MUX3_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux2~2_combout\ = (\fsm0|current_state.S2~q\ & (x_6(9))) # (!\fsm0|current_state.S2~q\ & ((y_6(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_6(9),
	datac => y_6(9),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux2~2_combout\);

-- Location: FF_X23_Y14_N17
\ce6|reg1_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|MUX3_1|Mux2~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg1_out\(2));

-- Location: FF_X23_Y14_N15
\ce6|reg2_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|MUX3_1|Mux2~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg2_out\(2));

-- Location: LCCOMB_X23_Y14_N16
\ce6|MUX3_3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_3|Mux9~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce6|reg1_out\(2))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce6|reg2_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce6|reg1_out\(2),
	datad => \ce6|reg2_out\(2),
	combout => \ce6|MUX3_3|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\ce6|add|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = z_6(11) $ (\ce6|MUX3_3|Mux9~0_combout\ $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_6(11),
	datab => \ce6|MUX3_3|Mux9~0_combout\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: FF_X24_Y16_N7
\x_6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(2));

-- Location: LCCOMB_X23_Y16_N18
\z_6[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_6[2]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	combout => \z_6[2]~feeder_combout\);

-- Location: FF_X23_Y16_N19
\z_6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_6[2]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(2));

-- Location: FF_X23_Y16_N25
\y_6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(2));

-- Location: LCCOMB_X23_Y16_N24
\ce6|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_6(2))) # (!\fsm0|current_state.S2~q\ & ((y_6(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_6(2),
	datac => y_6(2),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y16_N6
\ce6|MUX3_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux9~1_combout\ = (\ce6|MUX3_1|Mux9~0_combout\) # ((x_6(2) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_6(2),
	datab => \fsm0|current_state.S1~q\,
	datad => \ce6|MUX3_1|Mux9~0_combout\,
	combout => \ce6|MUX3_1|Mux9~1_combout\);

-- Location: LCCOMB_X23_Y14_N8
\ce6|MUX3_1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux3~2_combout\ = (\fsm0|current_state.S2~q\ & (x_6(8))) # (!\fsm0|current_state.S2~q\ & ((y_6(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_6(8),
	datac => y_6(8),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux3~2_combout\);

-- Location: FF_X23_Y14_N9
\ce6|reg2_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|MUX3_1|Mux3~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg2_out\(1));

-- Location: FF_X23_Y14_N27
\ce6|reg1_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|MUX3_1|Mux3~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg1_out\(1));

-- Location: LCCOMB_X23_Y14_N26
\ce6|MUX3_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_3|Mux10~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce6|reg1_out\(1))))) # (!\fsm0|current_state.S2~q\ & (\ce6|reg2_out\(1) & (\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|reg2_out\(1),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce6|reg1_out\(1),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_3|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y14_N2
\ce6|add|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \fsm0|current_state.S3~q\ $ (\ce6|MUX3_3|Mux10~0_combout\ $ (z_6(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => \ce6|MUX3_3|Mux10~0_combout\,
	datad => z_6(11),
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X23_Y16_N8
\z_6[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_6[1]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	combout => \z_6[1]~feeder_combout\);

-- Location: FF_X23_Y16_N9
\z_6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_6[1]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(1));

-- Location: FF_X23_Y16_N31
\y_6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(1));

-- Location: LCCOMB_X23_Y16_N30
\ce6|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux10~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_6(1))) # (!\fsm0|current_state.S2~q\ & ((y_6(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_6(1),
	datac => y_6(1),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux10~0_combout\);

-- Location: FF_X24_Y16_N5
\x_6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(1));

-- Location: LCCOMB_X23_Y16_N0
\ce6|MUX3_1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux10~1_combout\ = (\ce6|MUX3_1|Mux10~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_6(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|MUX3_1|Mux10~0_combout\,
	datab => \fsm0|current_state.S1~q\,
	datad => x_6(1),
	combout => \ce6|MUX3_1|Mux10~1_combout\);

-- Location: LCCOMB_X23_Y14_N30
\ce6|MUX3_1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux4~2_combout\ = (\fsm0|current_state.S2~q\ & (x_6(7))) # (!\fsm0|current_state.S2~q\ & ((y_6(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_6(7),
	datac => y_6(7),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux4~2_combout\);

-- Location: FF_X23_Y14_N31
\ce6|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|MUX3_1|Mux4~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg2_out\(0));

-- Location: FF_X23_Y14_N1
\ce6|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|MUX3_1|Mux4~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce6|reg1_out\(0));

-- Location: LCCOMB_X23_Y14_N0
\ce6|MUX3_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_3|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce6|reg1_out\(0))))) # (!\fsm0|current_state.S2~q\ & (\ce6|reg2_out\(0) & (\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|reg2_out\(0),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce6|reg1_out\(0),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_3|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y14_N12
\ce6|add|LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ = \fsm0|current_state.S3~q\ $ (z_6(11) $ (\ce6|MUX3_3|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => z_6(11),
	datad => \ce6|MUX3_3|Mux11~0_combout\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: FF_X24_Y16_N27
\x_6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_6(0));

-- Location: LCCOMB_X23_Y16_N26
\z_6[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_6[0]~feeder_combout\ = \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \z_6[0]~feeder_combout\);

-- Location: FF_X23_Y16_N27
\z_6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_6[0]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_6(0));

-- Location: FF_X23_Y16_N5
\y_6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce5|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_6(0));

-- Location: LCCOMB_X23_Y16_N4
\ce6|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux11~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_6(0))) # (!\fsm0|current_state.S2~q\ & ((y_6(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_6(0),
	datab => \fsm0|current_state.S1~q\,
	datac => y_6(0),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce6|MUX3_1|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y16_N14
\ce6|MUX3_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|MUX3_1|Mux11~1_combout\ = (\ce6|MUX3_1|Mux11~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_6(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => x_6(0),
	datac => \ce6|MUX3_1|Mux11~0_combout\,
	combout => \ce6|MUX3_1|Mux11~1_combout\);

-- Location: LCCOMB_X22_Y14_N0
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(\fsm0|current_state.S3~q\ $ (z_6(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => z_6(11),
	datad => VCC,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X22_Y14_N2
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce6|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((\ce6|MUX3_1|Mux11~1_combout\ & (\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\ce6|MUX3_1|Mux11~1_combout\ & (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((\ce6|MUX3_1|Mux11~1_combout\ & 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\ce6|MUX3_1|Mux11~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & (!\ce6|MUX3_1|Mux11~1_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce6|MUX3_1|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datab => \ce6|MUX3_1|Mux11~1_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X22_Y14_N4
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ $ (\ce6|MUX3_1|Mux10~1_combout\ $ (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\ce6|MUX3_1|Mux10~1_combout\) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (\ce6|MUX3_1|Mux10~1_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datab => \ce6|MUX3_1|Mux10~1_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X22_Y14_N6
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce6|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((\ce6|MUX3_1|Mux9~1_combout\ & (\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\ce6|MUX3_1|Mux9~1_combout\ & (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((\ce6|MUX3_1|Mux9~1_combout\ & 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce6|MUX3_1|Mux9~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (!\ce6|MUX3_1|Mux9~1_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\ce6|MUX3_1|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datab => \ce6|MUX3_1|Mux9~1_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X22_Y14_N8
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce6|MUX3_1|Mux8~1_combout\ $ (\ce6|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ $ (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce6|MUX3_1|Mux8~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # 
-- (!\ce6|MUX3_1|Mux8~1_combout\ & (\ce6|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|MUX3_1|Mux8~1_combout\,
	datab => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X22_Y14_N10
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce6|MUX3_1|Mux7~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\ce6|MUX3_1|Mux7~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce6|MUX3_1|Mux7~1_combout\ & (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce6|MUX3_1|Mux7~1_combout\ & ((!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|MUX3_1|Mux7~1_combout\,
	datab => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X22_Y14_N12
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ $ (\ce6|MUX3_1|Mux6~1_combout\ $ (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce6|MUX3_1|Mux6~1_combout\) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (\ce6|MUX3_1|Mux6~1_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datab => \ce6|MUX3_1|Mux6~1_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X22_Y14_N14
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce6|MUX3_1|Mux5~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\ce6|MUX3_1|Mux5~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce6|MUX3_1|Mux5~1_combout\ & (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce6|MUX3_1|Mux5~1_combout\ & ((!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|MUX3_1|Mux5~1_combout\,
	datab => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X22_Y14_N16
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce6|MUX3_1|Mux4~1_combout\ $ (\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce6|MUX3_1|Mux4~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # 
-- (!\ce6|MUX3_1|Mux4~1_combout\ & (\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|MUX3_1|Mux4~1_combout\,
	datab => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X22_Y14_N18
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce6|MUX3_1|Mux3~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!\ce6|MUX3_1|Mux3~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce6|MUX3_1|Mux3~1_combout\ & (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce6|MUX3_1|Mux3~1_combout\ & ((!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|MUX3_1|Mux3~1_combout\,
	datab => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X22_Y14_N20
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce6|MUX3_1|Mux2~1_combout\ $ (\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce6|MUX3_1|Mux2~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # 
-- (!\ce6|MUX3_1|Mux2~1_combout\ & (\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|MUX3_1|Mux2~1_combout\,
	datab => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X22_Y14_N22
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce6|MUX3_1|Mux1~1_combout\ & (\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # 
-- (!\ce6|MUX3_1|Mux1~1_combout\ & (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce6|MUX3_1|Mux1~1_combout\ & 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\ce6|MUX3_1|Mux1~1_combout\ & ((\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce6|MUX3_1|Mux1~1_combout\ & !\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce6|MUX3_1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce6|MUX3_1|Mux1~1_combout\,
	datad => VCC,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X22_Y14_N24
\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\ce6|MUX3_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ce6|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => \ce6|MUX3_1|Mux0~1_combout\,
	cin => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: FF_X23_Y15_N21
\z_7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(11));

-- Location: FF_X22_Y14_N19
\x_7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(8));

-- Location: LCCOMB_X22_Y15_N18
\y_7[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_7[8]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \y_7[8]~feeder_combout\);

-- Location: FF_X22_Y15_N19
\y_7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_7[8]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(8));

-- Location: LCCOMB_X23_Y15_N18
\ce7|MUX3_1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux3~2_combout\ = (\fsm0|current_state.S2~q\ & (x_7(8))) # (!\fsm0|current_state.S2~q\ & ((y_7(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_7(8),
	datac => \fsm0|current_state.S2~q\,
	datad => y_7(8),
	combout => \ce7|MUX3_1|Mux3~2_combout\);

-- Location: FF_X23_Y15_N1
\ce7|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|MUX3_1|Mux3~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce7|reg1_out\(0));

-- Location: FF_X23_Y15_N19
\ce7|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|MUX3_1|Mux3~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce7|reg2_out\(0));

-- Location: LCCOMB_X23_Y15_N0
\ce7|MUX3_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_3|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce7|reg1_out\(0))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce7|reg2_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce7|reg1_out\(0),
	datad => \ce7|reg2_out\(0),
	combout => \ce7|MUX3_3|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\ce7|add|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \fsm0|current_state.S3~q\ $ (z_7(11) $ (\ce7|MUX3_3|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => z_7(11),
	datad => \ce7|MUX3_3|Mux11~0_combout\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X22_Y14_N26
\x_7[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_7[0]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \x_7[0]~feeder_combout\);

-- Location: FF_X22_Y14_N27
\x_7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_7[0]~feeder_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(0));

-- Location: FF_X22_Y16_N19
\y_7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(0));

-- Location: LCCOMB_X22_Y16_N0
\z_7[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_7[0]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \z_7[0]~feeder_combout\);

-- Location: FF_X22_Y16_N1
\z_7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_7[0]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(0));

-- Location: LCCOMB_X22_Y16_N18
\ce7|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux11~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_7(0)))) # (!\fsm0|current_state.S2~q\ & (y_7(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => y_7(0),
	datad => z_7(0),
	combout => \ce7|MUX3_1|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y16_N4
\ce7|MUX3_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux11~1_combout\ = (\ce7|MUX3_1|Mux11~0_combout\) # ((x_7(0) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_7(0),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce7|MUX3_1|Mux11~0_combout\,
	combout => \ce7|MUX3_1|Mux11~1_combout\);

-- Location: LCCOMB_X19_Y15_N0
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(z_7(11) $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_7(11),
	datab => \fsm0|current_state.S3~q\,
	datad => VCC,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X19_Y15_N2
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\ce7|MUX3_1|Mux11~1_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\ce7|MUX3_1|Mux11~1_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\ce7|MUX3_1|Mux11~1_combout\ & 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\ce7|MUX3_1|Mux11~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (!\ce7|MUX3_1|Mux11~1_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce7|MUX3_1|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datab => \ce7|MUX3_1|Mux11~1_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X19_Y14_N8
\z_8[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_8[0]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \z_8[0]~feeder_combout\);

-- Location: FF_X19_Y14_N9
\z_8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_8[0]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(0));

-- Location: FF_X19_Y14_N23
\y_8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(0));

-- Location: LCCOMB_X19_Y14_N22
\ce8|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux11~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_8(0))) # (!\fsm0|current_state.S2~q\ & ((y_8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_8(0),
	datab => \fsm0|current_state.S1~q\,
	datac => y_8(0),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce8|MUX3_1|Mux11~0_combout\);

-- Location: FF_X19_Y15_N3
\x_8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(0));

-- Location: LCCOMB_X19_Y14_N4
\ce8|MUX3_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux11~1_combout\ = (\ce8|MUX3_1|Mux11~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_8(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => \ce8|MUX3_1|Mux11~0_combout\,
	datad => x_8(0),
	combout => \ce8|MUX3_1|Mux11~1_combout\);

-- Location: FF_X19_Y13_N19
\y_7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(11));

-- Location: LCCOMB_X19_Y13_N18
\ce7|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux0~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & (y_7(11)))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & ((z_7(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_7(11),
	datad => z_7(11),
	combout => \ce7|MUX3_1|Mux0~0_combout\);

-- Location: FF_X22_Y14_N25
\x_7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(11));

-- Location: LCCOMB_X19_Y13_N16
\ce7|MUX3_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux0~1_combout\ = (\ce7|MUX3_1|Mux0~0_combout\) # ((x_7(11) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => \ce7|MUX3_1|Mux0~0_combout\,
	datad => x_7(11),
	combout => \ce7|MUX3_1|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y13_N10
\fsm0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|Selector7~0_combout\ = (\fsm0|current_state.S2~q\ & (x_7(11))) # (!\fsm0|current_state.S2~q\ & ((y_7(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_7(11),
	datac => \fsm0|current_state.S2~q\,
	datad => y_7(11),
	combout => \fsm0|Selector7~0_combout\);

-- Location: FF_X19_Y13_N11
\ce7|reg2_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm0|Selector7~0_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce7|reg2_out\(3));

-- Location: FF_X19_Y15_N27
\ce7|reg1_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector7~0_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce7|reg1_out\(3));

-- Location: LCCOMB_X19_Y15_N26
\ce7|MUX3_3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_3|Mux7~0_combout\ = (\fsm0|current_state.S3~q\ & (!\ce7|reg2_out\(3))) # (!\fsm0|current_state.S3~q\ & ((!\ce7|reg1_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|reg2_out\(3),
	datac => \ce7|reg1_out\(3),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce7|MUX3_3|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y15_N28
\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \fsm0|current_state.S3~q\ $ (z_7(11) $ (((!\ce7|MUX3_3|Mux7~0_combout\ & \fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_3|Mux7~0_combout\,
	datab => \fsm0|current_state.S3~q\,
	datac => \fsm0|current_state.S1~q\,
	datad => z_7(11),
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: FF_X22_Y14_N23
\x_7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(10));

-- Location: FF_X23_Y15_N7
\z_7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(10));

-- Location: LCCOMB_X23_Y13_N0
\y_7[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_7[10]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	combout => \y_7[10]~feeder_combout\);

-- Location: FF_X23_Y13_N1
\y_7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_7[10]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(10));

-- Location: LCCOMB_X23_Y15_N6
\ce7|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & (z_7(10)))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & ((y_7(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => z_7(10),
	datad => y_7(10),
	combout => \ce7|MUX3_1|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y15_N24
\ce7|MUX3_1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux1~1_combout\ = (\ce7|MUX3_1|Mux1~0_combout\) # ((x_7(10) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_7(10),
	datab => \fsm0|current_state.S3~q\,
	datac => \fsm0|current_state.S2~q\,
	datad => \ce7|MUX3_1|Mux1~0_combout\,
	combout => \ce7|MUX3_1|Mux1~1_combout\);

-- Location: FF_X23_Y15_N15
\z_7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(9));

-- Location: LCCOMB_X24_Y14_N4
\y_7[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_7[9]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	combout => \y_7[9]~feeder_combout\);

-- Location: FF_X24_Y14_N5
\y_7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_7[9]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(9));

-- Location: LCCOMB_X23_Y15_N14
\ce7|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S2~q\ & (!\fsm0|current_state.S3~q\ & (z_7(9)))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S3~q\ & ((y_7(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S3~q\,
	datac => z_7(9),
	datad => y_7(9),
	combout => \ce7|MUX3_1|Mux2~0_combout\);

-- Location: FF_X22_Y14_N21
\x_7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(9));

-- Location: LCCOMB_X23_Y15_N16
\ce7|MUX3_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux2~1_combout\ = (\ce7|MUX3_1|Mux2~0_combout\) # ((x_7(9) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux2~0_combout\,
	datab => \fsm0|current_state.S3~q\,
	datac => \fsm0|current_state.S2~q\,
	datad => x_7(9),
	combout => \ce7|MUX3_1|Mux2~1_combout\);

-- Location: FF_X22_Y15_N21
\z_7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(8));

-- Location: LCCOMB_X22_Y15_N20
\ce7|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux3~0_combout\ = (\fsm0|current_state.S3~q\ & (!\fsm0|current_state.S2~q\ & ((y_7(8))))) # (!\fsm0|current_state.S3~q\ & (\fsm0|current_state.S2~q\ & (z_7(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => z_7(8),
	datad => y_7(8),
	combout => \ce7|MUX3_1|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y15_N30
\ce7|MUX3_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux3~1_combout\ = (\ce7|MUX3_1|Mux3~0_combout\) # ((x_7(8) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_7(8),
	datab => \fsm0|current_state.S2~q\,
	datac => \fsm0|current_state.S3~q\,
	datad => \ce7|MUX3_1|Mux3~0_combout\,
	combout => \ce7|MUX3_1|Mux3~1_combout\);

-- Location: FF_X22_Y14_N17
\x_7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(7));

-- Location: LCCOMB_X19_Y14_N10
\z_7[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_7[7]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \z_7[7]~feeder_combout\);

-- Location: FF_X19_Y14_N11
\z_7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_7[7]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(7));

-- Location: FF_X19_Y14_N17
\y_7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(7));

-- Location: LCCOMB_X19_Y14_N16
\ce7|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_7(7))) # (!\fsm0|current_state.S2~q\ & ((y_7(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_7(7),
	datab => \fsm0|current_state.S1~q\,
	datac => y_7(7),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce7|MUX3_1|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y14_N26
\ce7|MUX3_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux4~1_combout\ = (\ce7|MUX3_1|Mux4~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_7(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => x_7(7),
	datad => \ce7|MUX3_1|Mux4~0_combout\,
	combout => \ce7|MUX3_1|Mux4~1_combout\);

-- Location: FF_X22_Y14_N15
\x_7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(6));

-- Location: FF_X19_Y14_N3
\y_7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(6));

-- Location: LCCOMB_X19_Y14_N28
\z_7[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_7[6]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	combout => \z_7[6]~feeder_combout\);

-- Location: FF_X19_Y14_N29
\z_7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_7[6]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(6));

-- Location: LCCOMB_X19_Y14_N2
\ce7|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_7(6)))) # (!\fsm0|current_state.S2~q\ & (y_7(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => y_7(6),
	datad => z_7(6),
	combout => \ce7|MUX3_1|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y14_N0
\ce7|MUX3_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux5~1_combout\ = (\ce7|MUX3_1|Mux5~0_combout\) # ((x_7(6) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_7(6),
	datab => \fsm0|current_state.S1~q\,
	datad => \ce7|MUX3_1|Mux5~0_combout\,
	combout => \ce7|MUX3_1|Mux5~1_combout\);

-- Location: LCCOMB_X21_Y14_N4
\z_7[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_7[5]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	combout => \z_7[5]~feeder_combout\);

-- Location: FF_X21_Y14_N5
\z_7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_7[5]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(5));

-- Location: FF_X21_Y14_N7
\y_7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(5));

-- Location: LCCOMB_X21_Y14_N6
\ce7|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_7(5))) # (!\fsm0|current_state.S2~q\ & ((y_7(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_7(5),
	datac => y_7(5),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce7|MUX3_1|Mux6~0_combout\);

-- Location: FF_X22_Y14_N13
\x_7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(5));

-- Location: LCCOMB_X21_Y14_N8
\ce7|MUX3_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux6~1_combout\ = (\ce7|MUX3_1|Mux6~0_combout\) # ((x_7(5) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux6~0_combout\,
	datac => x_7(5),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce7|MUX3_1|Mux6~1_combout\);

-- Location: LCCOMB_X19_Y15_N30
\ce7|add|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = \fsm0|current_state.S3~q\ $ (z_7(11) $ (((!\fsm0|current_state.S1~q\) # (!\ce7|MUX3_3|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_3|Mux7~0_combout\,
	datab => \fsm0|current_state.S3~q\,
	datac => \fsm0|current_state.S1~q\,
	datad => z_7(11),
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X22_Y14_N11
\x_7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(4));

-- Location: LCCOMB_X21_Y14_N10
\z_7[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_7[4]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	combout => \z_7[4]~feeder_combout\);

-- Location: FF_X21_Y14_N11
\z_7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_7[4]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(4));

-- Location: FF_X21_Y14_N25
\y_7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(4));

-- Location: LCCOMB_X21_Y14_N24
\ce7|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux7~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_7(4))) # (!\fsm0|current_state.S2~q\ & ((y_7(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_7(4),
	datac => y_7(4),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce7|MUX3_1|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y14_N22
\ce7|MUX3_1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux7~1_combout\ = (\ce7|MUX3_1|Mux7~0_combout\) # ((x_7(4) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_7(4),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce7|MUX3_1|Mux7~0_combout\,
	combout => \ce7|MUX3_1|Mux7~1_combout\);

-- Location: FF_X22_Y14_N9
\x_7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(3));

-- Location: LCCOMB_X22_Y15_N12
\z_7[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_7[3]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	combout => \z_7[3]~feeder_combout\);

-- Location: FF_X22_Y15_N13
\z_7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_7[3]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(3));

-- Location: FF_X22_Y15_N31
\y_7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(3));

-- Location: LCCOMB_X22_Y15_N30
\ce7|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_7(3))) # (!\fsm0|current_state.S2~q\ & ((y_7(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_7(3),
	datab => \fsm0|current_state.S2~q\,
	datac => y_7(3),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce7|MUX3_1|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y15_N8
\ce7|MUX3_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux8~1_combout\ = (\ce7|MUX3_1|Mux8~0_combout\) # ((x_7(3) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_7(3),
	datac => \ce7|MUX3_1|Mux8~0_combout\,
	datad => \fsm0|current_state.S1~q\,
	combout => \ce7|MUX3_1|Mux8~1_combout\);

-- Location: FF_X22_Y14_N7
\x_7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(2));

-- Location: LCCOMB_X21_Y14_N20
\z_7[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_7[2]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	combout => \z_7[2]~feeder_combout\);

-- Location: FF_X21_Y14_N21
\z_7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_7[2]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(2));

-- Location: FF_X21_Y14_N19
\y_7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(2));

-- Location: LCCOMB_X21_Y14_N18
\ce7|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_7(2))) # (!\fsm0|current_state.S2~q\ & ((y_7(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_7(2),
	datac => y_7(2),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce7|MUX3_1|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y14_N0
\ce7|MUX3_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux9~1_combout\ = (\ce7|MUX3_1|Mux9~0_combout\) # ((x_7(2) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_7(2),
	datab => \ce7|MUX3_1|Mux9~0_combout\,
	datac => \fsm0|current_state.S1~q\,
	combout => \ce7|MUX3_1|Mux9~1_combout\);

-- Location: LCCOMB_X23_Y15_N26
\ce7|MUX3_1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux1~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_7(10)))) # (!\fsm0|current_state.S2~q\ & (y_7(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_7(10),
	datac => \fsm0|current_state.S2~q\,
	datad => x_7(10),
	combout => \ce7|MUX3_1|Mux1~2_combout\);

-- Location: FF_X23_Y15_N9
\ce7|reg1_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce7|reg1_out\(2));

-- Location: FF_X23_Y15_N27
\ce7|reg2_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|MUX3_1|Mux1~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce7|reg2_out\(2));

-- Location: LCCOMB_X23_Y15_N8
\ce7|MUX3_3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_3|Mux9~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce7|reg1_out\(2))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce7|reg2_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce7|reg1_out\(2),
	datad => \ce7|reg2_out\(2),
	combout => \ce7|MUX3_3|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\ce7|add|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \fsm0|current_state.S3~q\ $ (\ce7|MUX3_3|Mux9~0_combout\ $ (z_7(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S3~q\,
	datac => \ce7|MUX3_3|Mux9~0_combout\,
	datad => z_7(11),
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: FF_X22_Y14_N5
\x_7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_7(1));

-- Location: LCCOMB_X21_Y14_N26
\z_7[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_7[1]~feeder_combout\ = \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	combout => \z_7[1]~feeder_combout\);

-- Location: FF_X21_Y14_N27
\z_7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_7[1]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_7(1));

-- Location: FF_X21_Y14_N29
\y_7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce6|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_7(1));

-- Location: LCCOMB_X21_Y14_N28
\ce7|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux10~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_7(1))) # (!\fsm0|current_state.S2~q\ & ((y_7(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_7(1),
	datac => y_7(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce7|MUX3_1|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y14_N30
\ce7|MUX3_1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux10~1_combout\ = (\ce7|MUX3_1|Mux10~0_combout\) # ((x_7(1) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_7(1),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce7|MUX3_1|Mux10~0_combout\,
	combout => \ce7|MUX3_1|Mux10~1_combout\);

-- Location: LCCOMB_X23_Y15_N4
\ce7|MUX3_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_1|Mux2~2_combout\ = (\fsm0|current_state.S2~q\ & (x_7(9))) # (!\fsm0|current_state.S2~q\ & ((y_7(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_7(9),
	datac => \fsm0|current_state.S2~q\,
	datad => y_7(9),
	combout => \ce7|MUX3_1|Mux2~2_combout\);

-- Location: FF_X23_Y15_N11
\ce7|reg1_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|MUX3_1|Mux2~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce7|reg1_out\(1));

-- Location: FF_X23_Y15_N5
\ce7|reg2_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|MUX3_1|Mux2~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce7|reg2_out\(1));

-- Location: LCCOMB_X23_Y15_N10
\ce7|MUX3_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|MUX3_3|Mux10~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce7|reg1_out\(1))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & ((\ce7|reg2_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => \ce7|reg1_out\(1),
	datad => \ce7|reg2_out\(1),
	combout => \ce7|MUX3_3|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y15_N2
\ce7|add|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = z_7(11) $ (\fsm0|current_state.S3~q\ $ (\ce7|MUX3_3|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_7(11),
	datac => \fsm0|current_state.S3~q\,
	datad => \ce7|MUX3_3|Mux10~0_combout\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X19_Y15_N4
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce7|MUX3_1|Mux10~1_combout\ $ (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ $ (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce7|MUX3_1|Mux10~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\ce7|MUX3_1|Mux10~1_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux10~1_combout\,
	datab => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X19_Y15_N6
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce7|MUX3_1|Mux9~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\ce7|MUX3_1|Mux9~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce7|MUX3_1|Mux9~1_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce7|MUX3_1|Mux9~1_combout\ & ((!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux9~1_combout\,
	datab => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X19_Y15_N8
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce7|MUX3_1|Mux8~1_combout\ $ (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce7|MUX3_1|Mux8~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # 
-- (!\ce7|MUX3_1|Mux8~1_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux8~1_combout\,
	datab => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X19_Y15_N10
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce7|MUX3_1|Mux7~1_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\ce7|MUX3_1|Mux7~1_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce7|MUX3_1|Mux7~1_combout\ & 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce7|MUX3_1|Mux7~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (!\ce7|MUX3_1|Mux7~1_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\ce7|MUX3_1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datab => \ce7|MUX3_1|Mux7~1_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X19_Y15_N12
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce7|MUX3_1|Mux6~1_combout\ $ (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce7|MUX3_1|Mux6~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # 
-- (!\ce7|MUX3_1|Mux6~1_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux6~1_combout\,
	datab => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X19_Y15_N14
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce7|MUX3_1|Mux5~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\ce7|MUX3_1|Mux5~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce7|MUX3_1|Mux5~1_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce7|MUX3_1|Mux5~1_combout\ & ((!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux5~1_combout\,
	datab => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X19_Y15_N16
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce7|MUX3_1|Mux4~1_combout\ $ (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce7|MUX3_1|Mux4~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # 
-- (!\ce7|MUX3_1|Mux4~1_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux4~1_combout\,
	datab => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X19_Y15_N18
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce7|MUX3_1|Mux3~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!\ce7|MUX3_1|Mux3~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce7|MUX3_1|Mux3~1_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce7|MUX3_1|Mux3~1_combout\ & ((!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux3~1_combout\,
	datab => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X19_Y15_N20
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce7|MUX3_1|Mux2~1_combout\ $ (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce7|MUX3_1|Mux2~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # 
-- (!\ce7|MUX3_1|Mux2~1_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux2~1_combout\,
	datab => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X19_Y15_N22
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce7|MUX3_1|Mux1~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!\ce7|MUX3_1|Mux1~1_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce7|MUX3_1|Mux1~1_combout\ & (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce7|MUX3_1|Mux1~1_combout\ & ((!\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce7|MUX3_1|Mux1~1_combout\,
	datab => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X19_Y15_N24
\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce7|MUX3_1|Mux0~1_combout\ $ (\ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ce7|MUX3_1|Mux0~1_combout\,
	datad => \ce7|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	cin => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: FF_X18_Y13_N7
\z_8[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(11));

-- Location: LCCOMB_X21_Y13_N6
\y_8[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_8[9]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	combout => \y_8[9]~feeder_combout\);

-- Location: FF_X21_Y13_N7
\y_8[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_8[9]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(9));

-- Location: FF_X19_Y15_N21
\x_8[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(9));

-- Location: LCCOMB_X19_Y13_N26
\ce8|MUX3_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux2~2_combout\ = (\fsm0|current_state.S2~q\ & ((x_8(9)))) # (!\fsm0|current_state.S2~q\ & (y_8(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_8(9),
	datac => x_8(9),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce8|MUX3_1|Mux2~2_combout\);

-- Location: FF_X19_Y13_N27
\ce8|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|MUX3_1|Mux2~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce8|reg2_out\(0));

-- Location: FF_X17_Y13_N31
\ce8|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|MUX3_1|Mux2~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce8|reg1_out\(0));

-- Location: LCCOMB_X17_Y13_N30
\ce8|MUX3_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_3|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce8|reg1_out\(0))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & (\ce8|reg2_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \ce8|reg2_out\(0),
	datac => \ce8|reg1_out\(0),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce8|MUX3_3|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y13_N0
\ce8|add|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = z_8(11) $ (\ce8|MUX3_3|Mux11~0_combout\ $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_8(11),
	datab => \ce8|MUX3_3|Mux11~0_combout\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X18_Y13_N4
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(z_8(11) $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_8(11),
	datab => \fsm0|current_state.S3~q\,
	datad => VCC,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X18_Y13_N6
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce8|MUX3_1|Mux11~1_combout\ & ((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\ce8|MUX3_1|Mux11~1_combout\ & ((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce8|MUX3_1|Mux11~1_combout\ & (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce8|MUX3_1|Mux11~1_combout\ & ((!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|MUX3_1|Mux11~1_combout\,
	datab => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: FF_X18_Y13_N1
\x_9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(0));

-- Location: LCCOMB_X18_Y11_N22
\z_9[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_9[0]~feeder_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \z_9[0]~feeder_combout\);

-- Location: FF_X18_Y11_N23
\z_9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_9[0]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(0));

-- Location: FF_X18_Y11_N13
\y_9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(0));

-- Location: LCCOMB_X18_Y11_N12
\ce9|MUX3_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux11~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_9(0))) # (!\fsm0|current_state.S2~q\ & ((y_9(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_9(0),
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(0),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce9|MUX3_1|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y11_N10
\ce9|MUX3_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux11~1_combout\ = (\ce9|MUX3_1|Mux11~0_combout\) # ((x_9(0) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_9(0),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce9|MUX3_1|Mux11~0_combout\,
	combout => \ce9|MUX3_1|Mux11~1_combout\);

-- Location: FF_X19_Y15_N25
\x_8[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(11));

-- Location: FF_X19_Y13_N25
\y_8[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(11));

-- Location: LCCOMB_X19_Y16_N30
\fsm0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|Selector8~0_combout\ = (\fsm0|current_state.S2~q\ & (x_8(11))) # (!\fsm0|current_state.S2~q\ & ((y_8(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => x_8(11),
	datad => y_8(11),
	combout => \fsm0|Selector8~0_combout\);

-- Location: FF_X19_Y16_N31
\ce8|reg2_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm0|Selector8~0_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce8|reg2_out\(2));

-- Location: FF_X19_Y16_N29
\ce8|reg1_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector8~0_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce8|reg1_out\(2));

-- Location: LCCOMB_X19_Y16_N28
\ce8|MUX3_3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_3|Mux8~0_combout\ = (\fsm0|current_state.S3~q\ & (!\ce8|reg2_out\(2))) # (!\fsm0|current_state.S3~q\ & ((!\ce8|reg1_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|reg2_out\(2),
	datac => \ce8|reg1_out\(2),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|MUX3_3|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y13_N30
\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = z_8(11) $ (\fsm0|current_state.S3~q\ $ (((!\ce8|MUX3_3|Mux8~0_combout\ & \fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_8(11),
	datab => \ce8|MUX3_3|Mux8~0_combout\,
	datac => \fsm0|current_state.S1~q\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X19_Y13_N24
\ce8|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux0~0_combout\ = (\fsm0|current_state.S2~q\ & (z_8(11) & ((!\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (((y_8(11) & \fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_8(11),
	datac => y_8(11),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|MUX3_1|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y13_N6
\ce8|MUX3_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux0~1_combout\ = (\ce8|MUX3_1|Mux0~0_combout\) # ((x_8(11) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \ce8|MUX3_1|Mux0~0_combout\,
	datac => x_8(11),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|MUX3_1|Mux0~1_combout\);

-- Location: FF_X19_Y15_N1
\z_8[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(10));

-- Location: FF_X19_Y13_N21
\y_8[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(10));

-- Location: LCCOMB_X19_Y13_N20
\ce8|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S2~q\ & (z_8(10) & ((!\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (((y_8(10) & \fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_8(10),
	datab => \fsm0|current_state.S2~q\,
	datac => y_8(10),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|MUX3_1|Mux1~0_combout\);

-- Location: FF_X19_Y15_N23
\x_8[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(10));

-- Location: LCCOMB_X19_Y13_N14
\ce8|MUX3_1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux1~1_combout\ = (\ce8|MUX3_1|Mux1~0_combout\) # ((x_8(10) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|MUX3_1|Mux1~0_combout\,
	datab => x_8(10),
	datac => \fsm0|current_state.S2~q\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|MUX3_1|Mux1~1_combout\);

-- Location: FF_X21_Y13_N5
\z_8[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(9));

-- Location: LCCOMB_X21_Y13_N4
\ce8|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_8(9) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_8(9) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_8(9),
	datab => \fsm0|current_state.S2~q\,
	datac => z_8(9),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|MUX3_1|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y13_N8
\ce8|MUX3_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux2~1_combout\ = (\ce8|MUX3_1|Mux2~0_combout\) # ((x_8(9) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_8(9),
	datab => \fsm0|current_state.S2~q\,
	datac => \ce8|MUX3_1|Mux2~0_combout\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|MUX3_1|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y13_N24
\z_8[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_8[8]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \z_8[8]~feeder_combout\);

-- Location: FF_X17_Y13_N25
\z_8[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_8[8]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(8));

-- Location: FF_X17_Y13_N27
\y_8[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(8));

-- Location: LCCOMB_X17_Y13_N26
\ce8|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux3~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_8(8))) # (!\fsm0|current_state.S2~q\ & ((y_8(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => z_8(8),
	datac => y_8(8),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce8|MUX3_1|Mux3~0_combout\);

-- Location: FF_X19_Y15_N19
\x_8[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(8));

-- Location: LCCOMB_X17_Y13_N4
\ce8|MUX3_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux3~1_combout\ = (\ce8|MUX3_1|Mux3~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_8(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datac => \ce8|MUX3_1|Mux3~0_combout\,
	datad => x_8(8),
	combout => \ce8|MUX3_1|Mux3~1_combout\);

-- Location: FF_X19_Y15_N17
\x_8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(7));

-- Location: FF_X21_Y15_N19
\y_8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(7));

-- Location: LCCOMB_X21_Y15_N12
\z_8[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_8[7]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \z_8[7]~feeder_combout\);

-- Location: FF_X21_Y15_N13
\z_8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_8[7]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(7));

-- Location: LCCOMB_X21_Y15_N18
\ce8|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_8(7)))) # (!\fsm0|current_state.S2~q\ & (y_8(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => y_8(7),
	datad => z_8(7),
	combout => \ce8|MUX3_1|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y15_N8
\ce8|MUX3_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux4~1_combout\ = (\ce8|MUX3_1|Mux4~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_8(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => x_8(7),
	datad => \ce8|MUX3_1|Mux4~0_combout\,
	combout => \ce8|MUX3_1|Mux4~1_combout\);

-- Location: FF_X19_Y15_N15
\x_8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(6));

-- Location: FF_X18_Y15_N23
\y_8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(6));

-- Location: LCCOMB_X18_Y15_N12
\z_8[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_8[6]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	combout => \z_8[6]~feeder_combout\);

-- Location: FF_X18_Y15_N13
\z_8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_8[6]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(6));

-- Location: LCCOMB_X18_Y15_N22
\ce8|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_8(6)))) # (!\fsm0|current_state.S2~q\ & (y_8(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_8(6),
	datad => z_8(6),
	combout => \ce8|MUX3_1|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y15_N28
\ce8|MUX3_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux5~1_combout\ = (\ce8|MUX3_1|Mux5~0_combout\) # ((x_8(6) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_8(6),
	datac => \ce8|MUX3_1|Mux5~0_combout\,
	datad => \fsm0|current_state.S1~q\,
	combout => \ce8|MUX3_1|Mux5~1_combout\);

-- Location: FF_X21_Y15_N29
\y_8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(5));

-- Location: LCCOMB_X21_Y15_N6
\z_8[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_8[5]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	combout => \z_8[5]~feeder_combout\);

-- Location: FF_X21_Y15_N7
\z_8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_8[5]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(5));

-- Location: LCCOMB_X21_Y15_N28
\ce8|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_8(5)))) # (!\fsm0|current_state.S2~q\ & (y_8(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => \fsm0|current_state.S1~q\,
	datac => y_8(5),
	datad => z_8(5),
	combout => \ce8|MUX3_1|Mux6~0_combout\);

-- Location: FF_X19_Y15_N13
\x_8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(5));

-- Location: LCCOMB_X21_Y15_N26
\ce8|MUX3_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux6~1_combout\ = (\ce8|MUX3_1|Mux6~0_combout\) # ((x_8(5) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ce8|MUX3_1|Mux6~0_combout\,
	datac => x_8(5),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce8|MUX3_1|Mux6~1_combout\);

-- Location: FF_X19_Y15_N11
\x_8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(4));

-- Location: LCCOMB_X18_Y15_N10
\z_8[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_8[4]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	combout => \z_8[4]~feeder_combout\);

-- Location: FF_X18_Y15_N11
\z_8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_8[4]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(4));

-- Location: FF_X18_Y15_N17
\y_8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(4));

-- Location: LCCOMB_X18_Y15_N16
\ce8|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux7~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_8(4))) # (!\fsm0|current_state.S2~q\ & ((y_8(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_8(4),
	datab => \fsm0|current_state.S2~q\,
	datac => y_8(4),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce8|MUX3_1|Mux7~0_combout\);

-- Location: LCCOMB_X18_Y15_N18
\ce8|MUX3_1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux7~1_combout\ = (\ce8|MUX3_1|Mux7~0_combout\) # ((x_8(4) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_8(4),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce8|MUX3_1|Mux7~0_combout\,
	combout => \ce8|MUX3_1|Mux7~1_combout\);

-- Location: FF_X19_Y15_N9
\x_8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(3));

-- Location: LCCOMB_X21_Y15_N16
\z_8[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_8[3]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	combout => \z_8[3]~feeder_combout\);

-- Location: FF_X21_Y15_N17
\z_8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_8[3]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(3));

-- Location: FF_X21_Y15_N23
\y_8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(3));

-- Location: LCCOMB_X21_Y15_N22
\ce8|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_8(3))) # (!\fsm0|current_state.S2~q\ & ((y_8(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_8(3),
	datac => y_8(3),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce8|MUX3_1|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y15_N4
\ce8|MUX3_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux8~1_combout\ = (\ce8|MUX3_1|Mux8~0_combout\) # ((x_8(3) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_8(3),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce8|MUX3_1|Mux8~0_combout\,
	combout => \ce8|MUX3_1|Mux8~1_combout\);

-- Location: LCCOMB_X18_Y13_N2
\ce8|add|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = z_8(11) $ (\fsm0|current_state.S3~q\ $ (((!\fsm0|current_state.S1~q\) # (!\ce8|MUX3_3|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_8(11),
	datab => \ce8|MUX3_3|Mux8~0_combout\,
	datac => \fsm0|current_state.S1~q\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X19_Y15_N7
\x_8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(2));

-- Location: LCCOMB_X19_Y14_N24
\z_8[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_8[2]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	combout => \z_8[2]~feeder_combout\);

-- Location: FF_X19_Y14_N25
\z_8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_8[2]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(2));

-- Location: FF_X19_Y14_N19
\y_8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(2));

-- Location: LCCOMB_X19_Y14_N18
\ce8|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_8(2))) # (!\fsm0|current_state.S2~q\ & ((y_8(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_8(2),
	datac => y_8(2),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce8|MUX3_1|Mux9~0_combout\);

-- Location: LCCOMB_X19_Y14_N20
\ce8|MUX3_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux9~1_combout\ = (\ce8|MUX3_1|Mux9~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_8(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm0|current_state.S1~q\,
	datac => x_8(2),
	datad => \ce8|MUX3_1|Mux9~0_combout\,
	combout => \ce8|MUX3_1|Mux9~1_combout\);

-- Location: LCCOMB_X19_Y13_N22
\ce8|MUX3_1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux1~2_combout\ = (\fsm0|current_state.S2~q\ & (x_8(10))) # (!\fsm0|current_state.S2~q\ & ((y_8(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_8(10),
	datac => \fsm0|current_state.S2~q\,
	datad => y_8(10),
	combout => \ce8|MUX3_1|Mux1~2_combout\);

-- Location: FF_X19_Y13_N23
\ce8|reg2_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|MUX3_1|Mux1~2_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce8|reg2_out\(1));

-- Location: FF_X21_Y13_N13
\ce8|reg1_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce8|reg1_out\(1));

-- Location: LCCOMB_X21_Y13_N12
\ce8|MUX3_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_3|Mux10~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce8|reg1_out\(1))))) # (!\fsm0|current_state.S2~q\ & (\ce8|reg2_out\(1) & (\fsm0|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|reg2_out\(1),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce8|reg1_out\(1),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce8|MUX3_3|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y13_N4
\ce8|add|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \ce8|MUX3_3|Mux10~0_combout\ $ (z_8(11) $ (\fsm0|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|MUX3_3|Mux10~0_combout\,
	datac => z_8(11),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X19_Y14_N14
\z_8[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_8[1]~feeder_combout\ = \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	combout => \z_8[1]~feeder_combout\);

-- Location: FF_X19_Y14_N15
\z_8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_8[1]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_8(1));

-- Location: FF_X19_Y14_N13
\y_8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_8(1));

-- Location: LCCOMB_X19_Y14_N12
\ce8|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux10~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_8(1))) # (!\fsm0|current_state.S2~q\ & ((y_8(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S2~q\,
	datab => z_8(1),
	datac => y_8(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce8|MUX3_1|Mux10~0_combout\);

-- Location: FF_X19_Y15_N5
\x_8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce7|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_8(1));

-- Location: LCCOMB_X19_Y14_N30
\ce8|MUX3_1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|MUX3_1|Mux10~1_combout\ = (\ce8|MUX3_1|Mux10~0_combout\) # ((x_8(1) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|MUX3_1|Mux10~0_combout\,
	datab => x_8(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce8|MUX3_1|Mux10~1_combout\);

-- Location: LCCOMB_X18_Y13_N8
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ $ (\ce8|MUX3_1|Mux10~1_combout\ $ (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\ce8|MUX3_1|Mux10~1_combout\) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (\ce8|MUX3_1|Mux10~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datab => \ce8|MUX3_1|Mux10~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X18_Y13_N10
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux9~1_combout\ & (\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\ce8|MUX3_1|Mux9~1_combout\ & (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux9~1_combout\ & 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce8|MUX3_1|Mux9~1_combout\ & ((\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce8|MUX3_1|Mux9~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\ce8|MUX3_1|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce8|MUX3_1|Mux9~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X18_Y13_N12
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce8|MUX3_1|Mux8~1_combout\ $ (\ce8|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ $ (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce8|MUX3_1|Mux8~1_combout\ & ((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # 
-- (!\ce8|MUX3_1|Mux8~1_combout\ & (\ce8|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|MUX3_1|Mux8~1_combout\,
	datab => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X18_Y13_N14
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux7~1_combout\ & (\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\ce8|MUX3_1|Mux7~1_combout\ & (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux7~1_combout\ & 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce8|MUX3_1|Mux7~1_combout\ & ((\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce8|MUX3_1|Mux7~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\ce8|MUX3_1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce8|MUX3_1|Mux7~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X18_Y13_N16
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce8|MUX3_1|Mux6~1_combout\ $ (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux6~1_combout\) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce8|MUX3_1|Mux6~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce8|MUX3_1|Mux6~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X18_Y13_N18
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux5~1_combout\ & (\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\ce8|MUX3_1|Mux5~1_combout\ & (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux5~1_combout\ & 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\ce8|MUX3_1|Mux5~1_combout\ & ((\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce8|MUX3_1|Mux5~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!\ce8|MUX3_1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce8|MUX3_1|Mux5~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X18_Y13_N20
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce8|MUX3_1|Mux4~1_combout\ $ (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux4~1_combout\) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce8|MUX3_1|Mux4~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce8|MUX3_1|Mux4~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X18_Y13_N22
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux3~1_combout\ & (\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\ce8|MUX3_1|Mux3~1_combout\ & (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux3~1_combout\ & 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\ce8|MUX3_1|Mux3~1_combout\ & ((\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce8|MUX3_1|Mux3~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce8|MUX3_1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce8|MUX3_1|Mux3~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X18_Y13_N24
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce8|MUX3_1|Mux2~1_combout\ $ (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux2~1_combout\) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce8|MUX3_1|Mux2~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce8|MUX3_1|Mux2~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X18_Y13_N26
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux1~1_combout\ & (\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # 
-- (!\ce8|MUX3_1|Mux1~1_combout\ & (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce8|MUX3_1|Mux1~1_combout\ & 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\ce8|MUX3_1|Mux1~1_combout\ & ((\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce8|MUX3_1|Mux1~1_combout\ & !\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce8|MUX3_1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ce8|MUX3_1|Mux1~1_combout\,
	datad => VCC,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X18_Y13_N28
\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\ce8|MUX3_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce8|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => \ce8|MUX3_1|Mux0~1_combout\,
	cin => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: LCCOMB_X18_Y11_N4
\z_9[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_9[11]~feeder_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	combout => \z_9[11]~feeder_combout\);

-- Location: FF_X18_Y11_N5
\z_9[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_9[11]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(11));

-- Location: FF_X18_Y13_N27
\x_9[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(10));

-- Location: LCCOMB_X21_Y13_N22
\y_9[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_9[10]~feeder_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	combout => \y_9[10]~feeder_combout\);

-- Location: FF_X21_Y13_N23
\y_9[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_9[10]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(10));

-- Location: LCCOMB_X18_Y7_N30
\ce9|MUX3_1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux1~2_combout\ = (\fsm0|current_state.S2~q\ & (x_9(10))) # (!\fsm0|current_state.S2~q\ & ((y_9(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_9(10),
	datab => \fsm0|current_state.S2~q\,
	datad => y_9(10),
	combout => \ce9|MUX3_1|Mux1~2_combout\);

-- Location: FF_X18_Y7_N23
\ce9|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce9|reg2_out\(0));

-- Location: FF_X19_Y7_N31
\ce9|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|MUX3_1|Mux1~2_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce9|reg1_out\(0));

-- Location: LCCOMB_X19_Y7_N30
\ce9|MUX3_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_3|Mux11~0_combout\ = (\fsm0|current_state.S2~q\ & (((\ce9|reg1_out\(0))))) # (!\fsm0|current_state.S2~q\ & (\fsm0|current_state.S1~q\ & (\ce9|reg2_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \ce9|reg2_out\(0),
	datac => \ce9|reg1_out\(0),
	datad => \fsm0|current_state.S2~q\,
	combout => \ce9|MUX3_3|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y7_N28
\ce9|add|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \fsm0|current_state.S3~q\ $ (z_9(11) $ (\ce9|MUX3_3|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => z_9(11),
	datad => \ce9|MUX3_3|Mux11~0_combout\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X17_Y7_N4
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(\fsm0|current_state.S3~q\ $ (z_9(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S3~q\,
	datab => z_9(11),
	datad => VCC,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X17_Y7_N6
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\ce9|MUX3_1|Mux11~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\ce9|MUX3_1|Mux11~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\ce9|MUX3_1|Mux11~1_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce9|MUX3_1|Mux11~1_combout\ & ((!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux11~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: FF_X19_Y7_N7
\y_10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(0));

-- Location: FF_X19_Y13_N29
\y_9[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(11));

-- Location: FF_X18_Y13_N29
\x_9[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(11));

-- Location: LCCOMB_X19_Y13_N12
\fsm0|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm0|Selector9~0_combout\ = (\fsm0|current_state.S2~q\ & ((x_9(11)))) # (!\fsm0|current_state.S2~q\ & (y_9(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_9(11),
	datac => x_9(11),
	datad => \fsm0|current_state.S2~q\,
	combout => \fsm0|Selector9~0_combout\);

-- Location: LCCOMB_X18_Y17_N18
\ce9|reg2_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|reg2_out[1]~feeder_combout\ = \fsm0|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm0|Selector9~0_combout\,
	combout => \ce9|reg2_out[1]~feeder_combout\);

-- Location: FF_X18_Y17_N19
\ce9|reg2_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|reg2_out[1]~feeder_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce9|reg2_out\(1));

-- Location: FF_X18_Y17_N5
\ce9|reg1_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm0|Selector9~0_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce9|reg1_out\(1));

-- Location: LCCOMB_X18_Y17_N4
\ce9|MUX3_3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_3|Mux9~0_combout\ = (\fsm0|current_state.S3~q\ & (!\ce9|reg2_out\(1))) # (!\fsm0|current_state.S3~q\ & ((!\ce9|reg1_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ce9|reg2_out\(1),
	datac => \ce9|reg1_out\(1),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce9|MUX3_3|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y7_N0
\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = z_9(11) $ (\fsm0|current_state.S3~q\ $ (((\fsm0|current_state.S1~q\ & !\ce9|MUX3_3|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_9(11),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce9|MUX3_3|Mux9~0_combout\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X19_Y13_N28
\ce9|MUX3_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux0~0_combout\ = (\fsm0|current_state.S2~q\ & (z_9(11) & ((!\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (((y_9(11) & \fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_9(11),
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(11),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce9|MUX3_1|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y13_N30
\ce9|MUX3_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux0~1_combout\ = (\ce9|MUX3_1|Mux0~0_combout\) # ((x_9(11) & (\fsm0|current_state.S2~q\ $ (!\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_9(11),
	datab => \ce9|MUX3_1|Mux0~0_combout\,
	datac => \fsm0|current_state.S2~q\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce9|MUX3_1|Mux0~1_combout\);

-- Location: FF_X21_Y13_N21
\z_9[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(10));

-- Location: LCCOMB_X21_Y13_N20
\ce9|MUX3_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux1~0_combout\ = (\fsm0|current_state.S2~q\ & (((z_9(10) & !\fsm0|current_state.S3~q\)))) # (!\fsm0|current_state.S2~q\ & (y_9(10) & ((\fsm0|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_9(10),
	datab => \fsm0|current_state.S2~q\,
	datac => z_9(10),
	datad => \fsm0|current_state.S3~q\,
	combout => \ce9|MUX3_1|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y7_N30
\ce9|MUX3_1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux1~1_combout\ = (\ce9|MUX3_1|Mux1~0_combout\) # ((x_9(10) & (\fsm0|current_state.S3~q\ $ (!\fsm0|current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_9(10),
	datab => \fsm0|current_state.S3~q\,
	datac => \ce9|MUX3_1|Mux1~0_combout\,
	datad => \fsm0|current_state.S2~q\,
	combout => \ce9|MUX3_1|Mux1~1_combout\);

-- Location: FF_X17_Y13_N7
\y_9[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(9));

-- Location: LCCOMB_X17_Y13_N0
\z_9[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_9[9]~feeder_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	combout => \z_9[9]~feeder_combout\);

-- Location: FF_X17_Y13_N1
\z_9[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_9[9]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(9));

-- Location: LCCOMB_X17_Y13_N6
\ce9|MUX3_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux2~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_9(9)))) # (!\fsm0|current_state.S2~q\ & (y_9(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(9),
	datad => z_9(9),
	combout => \ce9|MUX3_1|Mux2~0_combout\);

-- Location: FF_X18_Y13_N25
\x_9[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(9));

-- Location: LCCOMB_X17_Y13_N8
\ce9|MUX3_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux2~1_combout\ = (\ce9|MUX3_1|Mux2~0_combout\) # ((x_9(9) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux2~0_combout\,
	datab => x_9(9),
	datac => \fsm0|current_state.S1~q\,
	combout => \ce9|MUX3_1|Mux2~1_combout\);

-- Location: FF_X18_Y13_N23
\x_9[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(8));

-- Location: FF_X17_Y13_N21
\y_9[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(8));

-- Location: LCCOMB_X17_Y13_N18
\z_9[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_9[8]~feeder_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \z_9[8]~feeder_combout\);

-- Location: FF_X17_Y13_N19
\z_9[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_9[8]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(8));

-- Location: LCCOMB_X17_Y13_N20
\ce9|MUX3_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux3~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_9(8)))) # (!\fsm0|current_state.S2~q\ & (y_9(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(8),
	datad => z_9(8),
	combout => \ce9|MUX3_1|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y13_N10
\ce9|MUX3_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux3~1_combout\ = (\ce9|MUX3_1|Mux3~0_combout\) # ((x_9(8) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_9(8),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce9|MUX3_1|Mux3~0_combout\,
	combout => \ce9|MUX3_1|Mux3~1_combout\);

-- Location: FF_X18_Y13_N21
\x_9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(7));

-- Location: FF_X17_Y13_N23
\y_9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(7));

-- Location: LCCOMB_X17_Y13_N12
\z_9[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_9[7]~feeder_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	combout => \z_9[7]~feeder_combout\);

-- Location: FF_X17_Y13_N13
\z_9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_9[7]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(7));

-- Location: LCCOMB_X17_Y13_N22
\ce9|MUX3_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux4~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_9(7)))) # (!\fsm0|current_state.S2~q\ & (y_9(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(7),
	datad => z_9(7),
	combout => \ce9|MUX3_1|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y13_N28
\ce9|MUX3_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux4~1_combout\ = (\ce9|MUX3_1|Mux4~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_9(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => x_9(7),
	datac => \ce9|MUX3_1|Mux4~0_combout\,
	combout => \ce9|MUX3_1|Mux4~1_combout\);

-- Location: FF_X18_Y13_N19
\x_9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(6));

-- Location: FF_X17_Y13_N17
\y_9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(6));

-- Location: LCCOMB_X17_Y13_N2
\z_9[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_9[6]~feeder_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	combout => \z_9[6]~feeder_combout\);

-- Location: FF_X17_Y13_N3
\z_9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_9[6]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(6));

-- Location: LCCOMB_X17_Y13_N16
\ce9|MUX3_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux5~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & ((z_9(6)))) # (!\fsm0|current_state.S2~q\ & (y_9(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(6),
	datad => z_9(6),
	combout => \ce9|MUX3_1|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\ce9|MUX3_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux5~1_combout\ = (\ce9|MUX3_1|Mux5~0_combout\) # ((x_9(6) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_9(6),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce9|MUX3_1|Mux5~0_combout\,
	combout => \ce9|MUX3_1|Mux5~1_combout\);

-- Location: FF_X18_Y13_N17
\x_9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(5));

-- Location: FF_X18_Y11_N19
\z_9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(5));

-- Location: FF_X18_Y11_N9
\y_9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(5));

-- Location: LCCOMB_X18_Y11_N8
\ce9|MUX3_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux6~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_9(5))) # (!\fsm0|current_state.S2~q\ & ((y_9(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_9(5),
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(5),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce9|MUX3_1|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y11_N18
\ce9|MUX3_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux6~1_combout\ = (\ce9|MUX3_1|Mux6~0_combout\) # ((x_9(5) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_9(5),
	datab => \ce9|MUX3_1|Mux6~0_combout\,
	datad => \fsm0|current_state.S1~q\,
	combout => \ce9|MUX3_1|Mux6~1_combout\);

-- Location: FF_X18_Y13_N15
\x_9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(4));

-- Location: LCCOMB_X18_Y11_N14
\z_9[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_9[4]~feeder_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	combout => \z_9[4]~feeder_combout\);

-- Location: FF_X18_Y11_N15
\z_9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_9[4]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(4));

-- Location: FF_X18_Y11_N25
\y_9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(4));

-- Location: LCCOMB_X18_Y11_N24
\ce9|MUX3_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux7~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_9(4))) # (!\fsm0|current_state.S2~q\ & ((y_9(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_9(4),
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(4),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce9|MUX3_1|Mux7~0_combout\);

-- Location: LCCOMB_X18_Y11_N2
\ce9|MUX3_1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux7~1_combout\ = (\ce9|MUX3_1|Mux7~0_combout\) # ((x_9(4) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_9(4),
	datac => \fsm0|current_state.S1~q\,
	datad => \ce9|MUX3_1|Mux7~0_combout\,
	combout => \ce9|MUX3_1|Mux7~1_combout\);

-- Location: FF_X18_Y13_N13
\x_9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(3));

-- Location: LCCOMB_X18_Y11_N16
\z_9[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \z_9[3]~feeder_combout\ = \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	combout => \z_9[3]~feeder_combout\);

-- Location: FF_X18_Y11_N17
\z_9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z_9[3]~feeder_combout\,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(3));

-- Location: FF_X18_Y11_N27
\y_9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(3));

-- Location: LCCOMB_X18_Y11_N26
\ce9|MUX3_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux8~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_9(3))) # (!\fsm0|current_state.S2~q\ & ((y_9(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_9(3),
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(3),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce9|MUX3_1|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\ce9|MUX3_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux8~1_combout\ = (\ce9|MUX3_1|Mux8~0_combout\) # ((x_9(3) & !\fsm0|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_9(3),
	datac => \ce9|MUX3_1|Mux8~0_combout\,
	datad => \fsm0|current_state.S1~q\,
	combout => \ce9|MUX3_1|Mux8~1_combout\);

-- Location: FF_X18_Y13_N11
\x_9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(2));

-- Location: FF_X18_Y11_N7
\z_9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(2));

-- Location: FF_X18_Y11_N1
\y_9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(2));

-- Location: LCCOMB_X18_Y11_N0
\ce9|MUX3_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux9~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_9(2))) # (!\fsm0|current_state.S2~q\ & ((y_9(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_9(2),
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(2),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce9|MUX3_1|Mux9~0_combout\);

-- Location: LCCOMB_X18_Y11_N6
\ce9|MUX3_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux9~1_combout\ = (\ce9|MUX3_1|Mux9~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_9(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => x_9(2),
	datad => \ce9|MUX3_1|Mux9~0_combout\,
	combout => \ce9|MUX3_1|Mux9~1_combout\);

-- Location: LCCOMB_X17_Y7_N2
\ce9|add|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = z_9(11) $ (\fsm0|current_state.S3~q\ $ (((!\ce9|MUX3_3|Mux9~0_combout\) # (!\fsm0|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_9(11),
	datab => \fsm0|current_state.S1~q\,
	datac => \ce9|MUX3_3|Mux9~0_combout\,
	datad => \fsm0|current_state.S3~q\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X18_Y13_N9
\x_9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_9(1));

-- Location: FF_X18_Y11_N31
\z_9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_9(1));

-- Location: FF_X18_Y11_N29
\y_9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce8|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_9(1));

-- Location: LCCOMB_X18_Y11_N28
\ce9|MUX3_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux10~0_combout\ = (\fsm0|current_state.S1~q\ & ((\fsm0|current_state.S2~q\ & (z_9(1))) # (!\fsm0|current_state.S2~q\ & ((y_9(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_9(1),
	datab => \fsm0|current_state.S2~q\,
	datac => y_9(1),
	datad => \fsm0|current_state.S1~q\,
	combout => \ce9|MUX3_1|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y11_N30
\ce9|MUX3_1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|MUX3_1|Mux10~1_combout\ = (\ce9|MUX3_1|Mux10~0_combout\) # ((!\fsm0|current_state.S1~q\ & x_9(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm0|current_state.S1~q\,
	datab => x_9(1),
	datad => \ce9|MUX3_1|Mux10~0_combout\,
	combout => \ce9|MUX3_1|Mux10~1_combout\);

-- Location: LCCOMB_X17_Y7_N8
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\ce9|MUX3_1|Mux10~1_combout\ $ (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\ce9|MUX3_1|Mux10~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\ce9|MUX3_1|Mux10~1_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux10~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X17_Y7_N10
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\ce9|MUX3_1|Mux9~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\ce9|MUX3_1|Mux9~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\ce9|MUX3_1|Mux9~1_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce9|MUX3_1|Mux9~1_combout\ & ((!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux9~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X17_Y7_N12
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\ce9|MUX3_1|Mux8~1_combout\ $ (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\ce9|MUX3_1|Mux8~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # 
-- (!\ce9|MUX3_1|Mux8~1_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux8~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X17_Y7_N14
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\ce9|MUX3_1|Mux7~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\ce9|MUX3_1|Mux7~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\ce9|MUX3_1|Mux7~1_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce9|MUX3_1|Mux7~1_combout\ & ((!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux7~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X17_Y7_N16
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce9|MUX3_1|Mux6~1_combout\ $ (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce9|MUX3_1|Mux6~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # 
-- (!\ce9|MUX3_1|Mux6~1_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux6~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X17_Y7_N18
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce9|MUX3_1|Mux5~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\ce9|MUX3_1|Mux5~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce9|MUX3_1|Mux5~1_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce9|MUX3_1|Mux5~1_combout\ & ((!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux5~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X17_Y7_N20
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce9|MUX3_1|Mux4~1_combout\ $ (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce9|MUX3_1|Mux4~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # 
-- (!\ce9|MUX3_1|Mux4~1_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux4~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X17_Y7_N22
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\ce9|MUX3_1|Mux3~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!\ce9|MUX3_1|Mux3~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\ce9|MUX3_1|Mux3~1_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce9|MUX3_1|Mux3~1_combout\ & ((!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux3~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X17_Y7_N24
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce9|MUX3_1|Mux2~1_combout\ $ (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce9|MUX3_1|Mux2~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # 
-- (!\ce9|MUX3_1|Mux2~1_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux2~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X17_Y7_N26
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\ce9|MUX3_1|Mux1~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!\ce9|MUX3_1|Mux1~1_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\ce9|MUX3_1|Mux1~1_combout\ & (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce9|MUX3_1|Mux1~1_combout\ & ((!\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce9|MUX3_1|Mux1~1_combout\,
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X17_Y7_N28
\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\ce9|MUX3_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ce9|add|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => \ce9|MUX3_1|Mux0~1_combout\,
	cin => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: FF_X17_Y7_N29
\x_10[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(11));

-- Location: FF_X19_Y7_N1
\ce10_end|reg1_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_10(11),
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce10_end|reg1_out\(0));

-- Location: FF_X18_Y7_N29
\z_10[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => z_10(11));

-- Location: LCCOMB_X19_Y7_N0
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \ce10_end|reg1_out\(0) $ (z_10(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce10_end|reg1_out\(0),
	datad => z_10(11),
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X19_Y7_N4
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(z_10(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_10(11),
	datad => VCC,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X19_Y7_N6
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (y_10(0) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!y_10(0) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((y_10(0) & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!y_10(0) & 
-- ((!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_10(0),
	datab => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: FF_X19_Y7_N9
\y_10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(1));

-- Location: LCCOMB_X19_Y7_N8
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((y_10(1) $ (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((y_10(1) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # (!y_10(1) & 
-- (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_10(1),
	datab => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: FF_X19_Y7_N11
\y_10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(2));

-- Location: LCCOMB_X19_Y7_N10
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (y_10(2) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!y_10(2) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((y_10(2) & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!y_10(2) & 
-- ((!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_10(2),
	datab => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: FF_X19_Y7_N13
\y_10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(3));

-- Location: LCCOMB_X19_Y7_N12
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((y_10(3) $ (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((y_10(3) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # (!y_10(3) & 
-- (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_10(3),
	datab => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: FF_X19_Y7_N15
\y_10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(4));

-- Location: LCCOMB_X19_Y7_N14
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (y_10(4) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!y_10(4) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND)))))
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((y_10(4) & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!y_10(4) & 
-- ((!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_10(4),
	datab => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: FF_X19_Y7_N17
\y_10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(5));

-- Location: LCCOMB_X19_Y7_N16
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (y_10(5) $ (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((y_10(5)) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (y_10(5) & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => y_10(5),
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: FF_X19_Y7_N19
\y_10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(6));

-- Location: LCCOMB_X19_Y7_N18
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((y_10(6) & (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # (!y_10(6) & 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((y_10(6) & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!y_10(6) & 
-- ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!y_10(6) & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!y_10(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => y_10(6),
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: FF_X19_Y7_N21
\y_10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(7));

-- Location: LCCOMB_X19_Y7_N20
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (y_10(7) $ (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((y_10(7)) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (y_10(7) & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => y_10(7),
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: FF_X19_Y7_N23
\y_10[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(8));

-- Location: LCCOMB_X19_Y7_N22
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (y_10(8) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!y_10(8) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((y_10(8) & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!y_10(8) & 
-- ((!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_10(8),
	datab => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: FF_X19_Y7_N25
\y_10[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(9));

-- Location: LCCOMB_X19_Y7_N24
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (y_10(9) $ (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((y_10(9)) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (y_10(9) & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => y_10(9),
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: FF_X19_Y7_N27
\y_10[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(10));

-- Location: LCCOMB_X19_Y7_N26
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (y_10(10) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!y_10(10) & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((y_10(10) & (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!y_10(10) & 
-- ((!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_10(10),
	datab => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X19_Y7_N2
\y_10[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_10[11]~feeder_combout\ = \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	combout => \y_10[11]~feeder_combout\);

-- Location: FF_X19_Y7_N3
\y_10[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_10[11]~feeder_combout\,
	ena => \fsm0|current_state.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_10(11));

-- Location: LCCOMB_X19_Y7_N28
\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = y_10(11) $ (\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (!\ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_10(11),
	datad => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	cin => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce10_end|add1|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: DSPMULT_X20_Y6_N0
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ce10_end|multi1|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y6_N2
\ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => \fsm0|current_state.S3~q\,
	dataa => \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ce10_end|multi1|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X18_Y7_N5
\x_10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(0));

-- Location: FF_X18_Y7_N1
\ce10_end|reg2_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => y_10(11),
	sload => VCC,
	ena => \fsm0|ALT_INV_current_state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ce10_end|reg2_out\(0));

-- Location: LCCOMB_X18_Y7_N0
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \ce10_end|reg2_out\(0) $ (z_10(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ce10_end|reg2_out\(0),
	datad => z_10(11),
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X18_Y7_N2
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(!z_10(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => z_10(11),
	datad => VCC,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X18_Y7_N4
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (x_10(0) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)))) # (!x_10(0) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND))) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\))))
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((x_10(0) & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!x_10(0) & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_10(0),
	datab => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: FF_X17_Y7_N9
\x_10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(1));

-- Location: LCCOMB_X18_Y7_N6
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((x_10(1) $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((x_10(1) & ((!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\))) # (!x_10(1) & 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_10(1),
	datab => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: FF_X18_Y7_N31
\x_10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	sload => VCC,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(2));

-- Location: LCCOMB_X18_Y7_N8
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (x_10(2) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)))) # (!x_10(2) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND))) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\))))
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((x_10(2) & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!x_10(2) & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_10(2),
	datab => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: FF_X17_Y7_N13
\x_10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(3));

-- Location: LCCOMB_X18_Y7_N10
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((x_10(3) $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((x_10(3) & ((!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\))) # (!x_10(3) & 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_10(3),
	datab => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: FF_X17_Y7_N15
\x_10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(4));

-- Location: LCCOMB_X18_Y7_N12
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (x_10(4) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)))) # (!x_10(4) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND))) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\))))
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((x_10(4) & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!x_10(4) & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_10(4),
	datab => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: FF_X17_Y7_N17
\x_10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(5));

-- Location: LCCOMB_X18_Y7_N14
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((x_10(5) $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((x_10(5) & ((!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\))) # (!x_10(5) & 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_10(5),
	datab => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: FF_X17_Y7_N19
\x_10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(6));

-- Location: LCCOMB_X18_Y7_N16
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((x_10(6) & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!x_10(6) & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND))))) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((x_10(6) & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!x_10(6) & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (!x_10(6)))) # 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!x_10(6) & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => x_10(6),
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: FF_X17_Y7_N21
\x_10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(7));

-- Location: LCCOMB_X18_Y7_N18
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((x_10(7) $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((x_10(7) & ((!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\))) # (!x_10(7) & 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_10(7),
	datab => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: FF_X17_Y7_N23
\x_10[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(8));

-- Location: LCCOMB_X18_Y7_N20
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (x_10(8) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)))) # (!x_10(8) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND))) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\))))
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((x_10(8) & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!x_10(8) & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_10(8),
	datab => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: FF_X17_Y7_N25
\x_10[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(9));

-- Location: LCCOMB_X18_Y7_N22
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (x_10(9) $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (x_10(9) & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)) # 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((x_10(9)) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => x_10(9),
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: FF_X17_Y7_N27
\x_10[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ce9|add|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	ena => \fsm0|current_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_10(10));

-- Location: LCCOMB_X18_Y7_N24
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (x_10(10) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # 
-- (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)))) # (!x_10(10) & ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND))) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\))))
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((x_10(10) & (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!x_10(10) & 
-- ((\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_10(10),
	datab => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X18_Y7_N26
\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ $ (x_10(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => x_10(11),
	cin => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \ce10_end|add2|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\);

-- Location: DSPMULT_X20_Y7_N0
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ce10_end|multi2|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y7_N2
\ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => \fsm0|current_state.S3~q\,
	dataa => \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ce10_end|multi2|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

ww_out_cos(0) <= \out_cos[0]~output_o\;

ww_out_cos(1) <= \out_cos[1]~output_o\;

ww_out_cos(2) <= \out_cos[2]~output_o\;

ww_out_cos(3) <= \out_cos[3]~output_o\;

ww_out_cos(4) <= \out_cos[4]~output_o\;

ww_out_cos(5) <= \out_cos[5]~output_o\;

ww_out_cos(6) <= \out_cos[6]~output_o\;

ww_out_cos(7) <= \out_cos[7]~output_o\;

ww_out_cos(8) <= \out_cos[8]~output_o\;

ww_out_cos(9) <= \out_cos[9]~output_o\;

ww_out_cos(10) <= \out_cos[10]~output_o\;

ww_out_cos(11) <= \out_cos[11]~output_o\;

ww_out_sin(0) <= \out_sin[0]~output_o\;

ww_out_sin(1) <= \out_sin[1]~output_o\;

ww_out_sin(2) <= \out_sin[2]~output_o\;

ww_out_sin(3) <= \out_sin[3]~output_o\;

ww_out_sin(4) <= \out_sin[4]~output_o\;

ww_out_sin(5) <= \out_sin[5]~output_o\;

ww_out_sin(6) <= \out_sin[6]~output_o\;

ww_out_sin(7) <= \out_sin[7]~output_o\;

ww_out_sin(8) <= \out_sin[8]~output_o\;

ww_out_sin(9) <= \out_sin[9]~output_o\;

ww_out_sin(10) <= \out_sin[10]~output_o\;

ww_out_sin(11) <= \out_sin[11]~output_o\;
END structure;


