-- megafunction wizard: %LPM_CLSHIFT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_CLSHIFT 

-- ============================================================
-- File Name: shifterIP.vhd
-- Megafunction Name(s):
-- 			LPM_CLSHIFT
--
-- Simulation Library Files(s):
-- 			
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 19.1.0 Build 670 09/22/2019 SJ Lite Edition
-- ************************************************************


--Copyright (C) 2019  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and any partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel FPGA IP License Agreement, or other applicable license
--agreement, including, without limitation, that your use is for
--the sole purpose of programming logic devices manufactured by
--Intel and sold by Intel or its authorized distributors.  Please
--refer to the applicable agreement for further details, at
--https://fpgasoftware.intel.com/eula.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY shifterIP IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		distance		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
END shifterIP;


ARCHITECTURE SYN OF shifterip IS

	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (11 DOWNTO 0);



	COMPONENT lpm_clshift
	GENERIC (
		lpm_shifttype		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL;
		lpm_widthdist		: NATURAL
	);
	PORT (
			data	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			direction	: IN STD_LOGIC ;
			distance	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire0    <= '1';
	result    <= sub_wire1(11 DOWNTO 0);

	LPM_CLSHIFT_component : LPM_CLSHIFT
	GENERIC MAP (
		lpm_shifttype => "ARITHMETIC",
		lpm_type => "LPM_CLSHIFT",
		lpm_width => 12,
		lpm_widthdist => 4
	)
	PORT MAP (
		data => data,
		direction => sub_wire0,
		distance => distance,
		result => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: LPM_SHIFTTYPE NUMERIC "1"
-- Retrieval info: PRIVATE: LPM_WIDTH NUMERIC "12"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: lpm_widthdist NUMERIC "4"
-- Retrieval info: PRIVATE: lpm_widthdist_style NUMERIC "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: PRIVATE: port_direction NUMERIC "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SHIFTTYPE STRING "ARITHMETIC"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CLSHIFT"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "12"
-- Retrieval info: CONSTANT: LPM_WIDTHDIST NUMERIC "4"
-- Retrieval info: USED_PORT: data 0 0 12 0 INPUT NODEFVAL "data[11..0]"
-- Retrieval info: USED_PORT: distance 0 0 4 0 INPUT NODEFVAL "distance[3..0]"
-- Retrieval info: USED_PORT: result 0 0 12 0 OUTPUT NODEFVAL "result[11..0]"
-- Retrieval info: CONNECT: @data 0 0 12 0 data 0 0 12 0
-- Retrieval info: CONNECT: @direction 0 0 0 0 VCC 0 0 0 0
-- Retrieval info: CONNECT: @distance 0 0 4 0 distance 0 0 4 0
-- Retrieval info: CONNECT: result 0 0 12 0 @result 0 0 12 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifterIP.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifterIP.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifterIP.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifterIP.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL shifterIP_inst.vhd FALSE
