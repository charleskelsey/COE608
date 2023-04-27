-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "03/02/2022 14:35:51"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	data_path IS
    PORT (
	Clk : IN std_logic;
	mClk : IN std_logic;
	WEN : IN std_logic;
	EN : IN std_logic;
	Clr_A : IN std_logic;
	Ld_A : IN std_logic;
	Clr_B : IN std_logic;
	Ld_B : IN std_logic;
	Clr_C : IN std_logic;
	Ld_C : IN std_logic;
	Clr_Z : IN std_logic;
	Ld_Z : IN std_logic;
	ClrPC : IN std_logic;
	Ld_PC : IN std_logic;
	ClrIR : IN std_logic;
	Ld_IR : IN std_logic;
	Out_A : BUFFER std_logic_vector(31 DOWNTO 0);
	Out_B : BUFFER std_logic_vector(31 DOWNTO 0);
	Out_C : BUFFER std_logic;
	Out_Z : BUFFER std_logic;
	Out_PC : BUFFER std_logic_vector(31 DOWNTO 0);
	Out_IR : BUFFER std_logic_vector(31 DOWNTO 0);
	Inc_PC : IN std_logic;
	ADDR_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	DATA_IN : IN std_logic_vector(31 DOWNTO 0);
	DATA_BUS : BUFFER std_logic_vector(31 DOWNTO 0);
	MEM_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	MEM_IN : BUFFER std_logic_vector(31 DOWNTO 0);
	MEM_ADDR : BUFFER std_logic_vector(7 DOWNTO 0);
	DATA_MUX : IN std_logic_vector(1 DOWNTO 0);
	REG_MUX : IN std_logic;
	A_MUX : IN std_logic;
	B_MUX : IN std_logic;
	IM_MUX1 : IN std_logic;
	IM_MUX2 : IN std_logic_vector(1 DOWNTO 0);
	ALU_Op : IN std_logic_vector(2 DOWNTO 0)
	);
END data_path;

-- Design Ports Information
-- Clr_C	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_C	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_Z	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_Z	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[1]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[5]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[8]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[9]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[10]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[11]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[12]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[14]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[15]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[16]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[17]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[18]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[19]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[20]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[21]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[22]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[23]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[24]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[25]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[26]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[27]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[28]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[29]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[30]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[31]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[5]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[7]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[8]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[9]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[10]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[11]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[12]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[14]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[15]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[16]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[18]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[19]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[20]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[21]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[22]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[23]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[24]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[25]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[26]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[27]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[28]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[29]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[30]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[31]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_C	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_Z	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[0]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[1]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[3]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[4]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[5]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[6]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[7]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[8]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[9]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[10]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[12]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[13]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[14]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[15]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[16]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[17]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[18]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[19]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[20]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[21]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[22]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[23]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[24]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[25]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[26]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[27]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[28]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[29]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[30]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[31]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[1]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[2]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[5]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[9]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[10]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[11]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[12]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[13]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[14]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[15]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[16]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[17]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[18]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[19]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[20]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[21]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[22]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[23]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[24]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[25]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[26]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[27]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[28]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[29]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[30]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[31]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[0]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[1]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[3]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[4]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[5]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[6]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[7]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[8]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[10]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[11]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[12]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[13]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[14]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[15]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[16]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[17]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[18]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[19]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[20]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[21]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[22]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[23]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[24]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[25]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[26]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[27]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[28]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[29]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[30]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[31]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[2]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[3]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[6]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[8]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[9]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[10]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[11]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[14]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[15]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[16]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[17]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[18]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[19]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[20]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[21]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[22]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[23]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[24]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[25]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[26]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[27]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[28]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[29]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[30]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[31]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[2]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[5]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[7]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[8]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[9]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[10]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[13]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[14]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[15]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[16]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[17]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[18]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[19]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[20]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[21]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[22]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[23]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[24]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[25]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[26]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[27]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[28]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[29]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[30]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[31]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[3]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[5]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[8]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[10]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[11]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[12]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[13]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[14]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[15]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[16]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[17]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[18]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[20]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[21]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[22]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[23]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[24]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[25]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[26]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[27]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[28]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[29]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[30]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[31]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[1]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[2]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[6]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[7]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_MUX[0]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_MUX[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Op[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[0]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX1	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Op[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Op[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[8]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[9]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[10]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[11]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[12]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[13]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[15]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[16]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[17]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[18]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[19]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[20]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[21]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[22]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[23]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[24]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[25]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[26]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[27]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[28]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[29]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[30]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[31]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_MUX	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_MUX	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_A	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_A	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_MUX	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_B	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_B	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClrPC	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_PC	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc_PC	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClrIR	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_IR	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WEN	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mClk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF data_path IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_mClk : std_logic;
SIGNAL ww_WEN : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_Clr_A : std_logic;
SIGNAL ww_Ld_A : std_logic;
SIGNAL ww_Clr_B : std_logic;
SIGNAL ww_Ld_B : std_logic;
SIGNAL ww_Clr_C : std_logic;
SIGNAL ww_Ld_C : std_logic;
SIGNAL ww_Clr_Z : std_logic;
SIGNAL ww_Ld_Z : std_logic;
SIGNAL ww_ClrPC : std_logic;
SIGNAL ww_Ld_PC : std_logic;
SIGNAL ww_ClrIR : std_logic;
SIGNAL ww_Ld_IR : std_logic;
SIGNAL ww_Out_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Out_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Out_C : std_logic;
SIGNAL ww_Out_Z : std_logic;
SIGNAL ww_Out_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Out_IR : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Inc_PC : std_logic;
SIGNAL ww_ADDR_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DATA_IN : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DATA_BUS : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_MEM_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_MEM_IN : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_MEM_ADDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA_MUX : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_REG_MUX : std_logic;
SIGNAL ww_A_MUX : std_logic;
SIGNAL ww_B_MUX : std_logic;
SIGNAL ww_IM_MUX1 : std_logic;
SIGNAL ww_IM_MUX2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALU_Op : std_logic_vector(2 DOWNTO 0);
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ClrIR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_A~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_B~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ClrPC~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_C~input_o\ : std_logic;
SIGNAL \Ld_C~input_o\ : std_logic;
SIGNAL \Clr_Z~input_o\ : std_logic;
SIGNAL \Ld_Z~input_o\ : std_logic;
SIGNAL \Out_A[0]~output_o\ : std_logic;
SIGNAL \Out_A[1]~output_o\ : std_logic;
SIGNAL \Out_A[2]~output_o\ : std_logic;
SIGNAL \Out_A[3]~output_o\ : std_logic;
SIGNAL \Out_A[4]~output_o\ : std_logic;
SIGNAL \Out_A[5]~output_o\ : std_logic;
SIGNAL \Out_A[6]~output_o\ : std_logic;
SIGNAL \Out_A[7]~output_o\ : std_logic;
SIGNAL \Out_A[8]~output_o\ : std_logic;
SIGNAL \Out_A[9]~output_o\ : std_logic;
SIGNAL \Out_A[10]~output_o\ : std_logic;
SIGNAL \Out_A[11]~output_o\ : std_logic;
SIGNAL \Out_A[12]~output_o\ : std_logic;
SIGNAL \Out_A[13]~output_o\ : std_logic;
SIGNAL \Out_A[14]~output_o\ : std_logic;
SIGNAL \Out_A[15]~output_o\ : std_logic;
SIGNAL \Out_A[16]~output_o\ : std_logic;
SIGNAL \Out_A[17]~output_o\ : std_logic;
SIGNAL \Out_A[18]~output_o\ : std_logic;
SIGNAL \Out_A[19]~output_o\ : std_logic;
SIGNAL \Out_A[20]~output_o\ : std_logic;
SIGNAL \Out_A[21]~output_o\ : std_logic;
SIGNAL \Out_A[22]~output_o\ : std_logic;
SIGNAL \Out_A[23]~output_o\ : std_logic;
SIGNAL \Out_A[24]~output_o\ : std_logic;
SIGNAL \Out_A[25]~output_o\ : std_logic;
SIGNAL \Out_A[26]~output_o\ : std_logic;
SIGNAL \Out_A[27]~output_o\ : std_logic;
SIGNAL \Out_A[28]~output_o\ : std_logic;
SIGNAL \Out_A[29]~output_o\ : std_logic;
SIGNAL \Out_A[30]~output_o\ : std_logic;
SIGNAL \Out_A[31]~output_o\ : std_logic;
SIGNAL \Out_B[0]~output_o\ : std_logic;
SIGNAL \Out_B[1]~output_o\ : std_logic;
SIGNAL \Out_B[2]~output_o\ : std_logic;
SIGNAL \Out_B[3]~output_o\ : std_logic;
SIGNAL \Out_B[4]~output_o\ : std_logic;
SIGNAL \Out_B[5]~output_o\ : std_logic;
SIGNAL \Out_B[6]~output_o\ : std_logic;
SIGNAL \Out_B[7]~output_o\ : std_logic;
SIGNAL \Out_B[8]~output_o\ : std_logic;
SIGNAL \Out_B[9]~output_o\ : std_logic;
SIGNAL \Out_B[10]~output_o\ : std_logic;
SIGNAL \Out_B[11]~output_o\ : std_logic;
SIGNAL \Out_B[12]~output_o\ : std_logic;
SIGNAL \Out_B[13]~output_o\ : std_logic;
SIGNAL \Out_B[14]~output_o\ : std_logic;
SIGNAL \Out_B[15]~output_o\ : std_logic;
SIGNAL \Out_B[16]~output_o\ : std_logic;
SIGNAL \Out_B[17]~output_o\ : std_logic;
SIGNAL \Out_B[18]~output_o\ : std_logic;
SIGNAL \Out_B[19]~output_o\ : std_logic;
SIGNAL \Out_B[20]~output_o\ : std_logic;
SIGNAL \Out_B[21]~output_o\ : std_logic;
SIGNAL \Out_B[22]~output_o\ : std_logic;
SIGNAL \Out_B[23]~output_o\ : std_logic;
SIGNAL \Out_B[24]~output_o\ : std_logic;
SIGNAL \Out_B[25]~output_o\ : std_logic;
SIGNAL \Out_B[26]~output_o\ : std_logic;
SIGNAL \Out_B[27]~output_o\ : std_logic;
SIGNAL \Out_B[28]~output_o\ : std_logic;
SIGNAL \Out_B[29]~output_o\ : std_logic;
SIGNAL \Out_B[30]~output_o\ : std_logic;
SIGNAL \Out_B[31]~output_o\ : std_logic;
SIGNAL \Out_C~output_o\ : std_logic;
SIGNAL \Out_Z~output_o\ : std_logic;
SIGNAL \Out_PC[0]~output_o\ : std_logic;
SIGNAL \Out_PC[1]~output_o\ : std_logic;
SIGNAL \Out_PC[2]~output_o\ : std_logic;
SIGNAL \Out_PC[3]~output_o\ : std_logic;
SIGNAL \Out_PC[4]~output_o\ : std_logic;
SIGNAL \Out_PC[5]~output_o\ : std_logic;
SIGNAL \Out_PC[6]~output_o\ : std_logic;
SIGNAL \Out_PC[7]~output_o\ : std_logic;
SIGNAL \Out_PC[8]~output_o\ : std_logic;
SIGNAL \Out_PC[9]~output_o\ : std_logic;
SIGNAL \Out_PC[10]~output_o\ : std_logic;
SIGNAL \Out_PC[11]~output_o\ : std_logic;
SIGNAL \Out_PC[12]~output_o\ : std_logic;
SIGNAL \Out_PC[13]~output_o\ : std_logic;
SIGNAL \Out_PC[14]~output_o\ : std_logic;
SIGNAL \Out_PC[15]~output_o\ : std_logic;
SIGNAL \Out_PC[16]~output_o\ : std_logic;
SIGNAL \Out_PC[17]~output_o\ : std_logic;
SIGNAL \Out_PC[18]~output_o\ : std_logic;
SIGNAL \Out_PC[19]~output_o\ : std_logic;
SIGNAL \Out_PC[20]~output_o\ : std_logic;
SIGNAL \Out_PC[21]~output_o\ : std_logic;
SIGNAL \Out_PC[22]~output_o\ : std_logic;
SIGNAL \Out_PC[23]~output_o\ : std_logic;
SIGNAL \Out_PC[24]~output_o\ : std_logic;
SIGNAL \Out_PC[25]~output_o\ : std_logic;
SIGNAL \Out_PC[26]~output_o\ : std_logic;
SIGNAL \Out_PC[27]~output_o\ : std_logic;
SIGNAL \Out_PC[28]~output_o\ : std_logic;
SIGNAL \Out_PC[29]~output_o\ : std_logic;
SIGNAL \Out_PC[30]~output_o\ : std_logic;
SIGNAL \Out_PC[31]~output_o\ : std_logic;
SIGNAL \Out_IR[0]~output_o\ : std_logic;
SIGNAL \Out_IR[1]~output_o\ : std_logic;
SIGNAL \Out_IR[2]~output_o\ : std_logic;
SIGNAL \Out_IR[3]~output_o\ : std_logic;
SIGNAL \Out_IR[4]~output_o\ : std_logic;
SIGNAL \Out_IR[5]~output_o\ : std_logic;
SIGNAL \Out_IR[6]~output_o\ : std_logic;
SIGNAL \Out_IR[7]~output_o\ : std_logic;
SIGNAL \Out_IR[8]~output_o\ : std_logic;
SIGNAL \Out_IR[9]~output_o\ : std_logic;
SIGNAL \Out_IR[10]~output_o\ : std_logic;
SIGNAL \Out_IR[11]~output_o\ : std_logic;
SIGNAL \Out_IR[12]~output_o\ : std_logic;
SIGNAL \Out_IR[13]~output_o\ : std_logic;
SIGNAL \Out_IR[14]~output_o\ : std_logic;
SIGNAL \Out_IR[15]~output_o\ : std_logic;
SIGNAL \Out_IR[16]~output_o\ : std_logic;
SIGNAL \Out_IR[17]~output_o\ : std_logic;
SIGNAL \Out_IR[18]~output_o\ : std_logic;
SIGNAL \Out_IR[19]~output_o\ : std_logic;
SIGNAL \Out_IR[20]~output_o\ : std_logic;
SIGNAL \Out_IR[21]~output_o\ : std_logic;
SIGNAL \Out_IR[22]~output_o\ : std_logic;
SIGNAL \Out_IR[23]~output_o\ : std_logic;
SIGNAL \Out_IR[24]~output_o\ : std_logic;
SIGNAL \Out_IR[25]~output_o\ : std_logic;
SIGNAL \Out_IR[26]~output_o\ : std_logic;
SIGNAL \Out_IR[27]~output_o\ : std_logic;
SIGNAL \Out_IR[28]~output_o\ : std_logic;
SIGNAL \Out_IR[29]~output_o\ : std_logic;
SIGNAL \Out_IR[30]~output_o\ : std_logic;
SIGNAL \Out_IR[31]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[0]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[1]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[2]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[3]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[4]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[5]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[6]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[7]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[8]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[9]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[10]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[11]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[12]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[13]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[14]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[15]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[16]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[17]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[18]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[19]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[20]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[21]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[22]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[23]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[24]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[25]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[26]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[27]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[28]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[29]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[30]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[31]~output_o\ : std_logic;
SIGNAL \DATA_BUS[0]~output_o\ : std_logic;
SIGNAL \DATA_BUS[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS[7]~output_o\ : std_logic;
SIGNAL \DATA_BUS[8]~output_o\ : std_logic;
SIGNAL \DATA_BUS[9]~output_o\ : std_logic;
SIGNAL \DATA_BUS[10]~output_o\ : std_logic;
SIGNAL \DATA_BUS[11]~output_o\ : std_logic;
SIGNAL \DATA_BUS[12]~output_o\ : std_logic;
SIGNAL \DATA_BUS[13]~output_o\ : std_logic;
SIGNAL \DATA_BUS[14]~output_o\ : std_logic;
SIGNAL \DATA_BUS[15]~output_o\ : std_logic;
SIGNAL \DATA_BUS[16]~output_o\ : std_logic;
SIGNAL \DATA_BUS[17]~output_o\ : std_logic;
SIGNAL \DATA_BUS[18]~output_o\ : std_logic;
SIGNAL \DATA_BUS[19]~output_o\ : std_logic;
SIGNAL \DATA_BUS[20]~output_o\ : std_logic;
SIGNAL \DATA_BUS[21]~output_o\ : std_logic;
SIGNAL \DATA_BUS[22]~output_o\ : std_logic;
SIGNAL \DATA_BUS[23]~output_o\ : std_logic;
SIGNAL \DATA_BUS[24]~output_o\ : std_logic;
SIGNAL \DATA_BUS[25]~output_o\ : std_logic;
SIGNAL \DATA_BUS[26]~output_o\ : std_logic;
SIGNAL \DATA_BUS[27]~output_o\ : std_logic;
SIGNAL \DATA_BUS[28]~output_o\ : std_logic;
SIGNAL \DATA_BUS[29]~output_o\ : std_logic;
SIGNAL \DATA_BUS[30]~output_o\ : std_logic;
SIGNAL \DATA_BUS[31]~output_o\ : std_logic;
SIGNAL \MEM_OUT[0]~output_o\ : std_logic;
SIGNAL \MEM_OUT[1]~output_o\ : std_logic;
SIGNAL \MEM_OUT[2]~output_o\ : std_logic;
SIGNAL \MEM_OUT[3]~output_o\ : std_logic;
SIGNAL \MEM_OUT[4]~output_o\ : std_logic;
SIGNAL \MEM_OUT[5]~output_o\ : std_logic;
SIGNAL \MEM_OUT[6]~output_o\ : std_logic;
SIGNAL \MEM_OUT[7]~output_o\ : std_logic;
SIGNAL \MEM_OUT[8]~output_o\ : std_logic;
SIGNAL \MEM_OUT[9]~output_o\ : std_logic;
SIGNAL \MEM_OUT[10]~output_o\ : std_logic;
SIGNAL \MEM_OUT[11]~output_o\ : std_logic;
SIGNAL \MEM_OUT[12]~output_o\ : std_logic;
SIGNAL \MEM_OUT[13]~output_o\ : std_logic;
SIGNAL \MEM_OUT[14]~output_o\ : std_logic;
SIGNAL \MEM_OUT[15]~output_o\ : std_logic;
SIGNAL \MEM_OUT[16]~output_o\ : std_logic;
SIGNAL \MEM_OUT[17]~output_o\ : std_logic;
SIGNAL \MEM_OUT[18]~output_o\ : std_logic;
SIGNAL \MEM_OUT[19]~output_o\ : std_logic;
SIGNAL \MEM_OUT[20]~output_o\ : std_logic;
SIGNAL \MEM_OUT[21]~output_o\ : std_logic;
SIGNAL \MEM_OUT[22]~output_o\ : std_logic;
SIGNAL \MEM_OUT[23]~output_o\ : std_logic;
SIGNAL \MEM_OUT[24]~output_o\ : std_logic;
SIGNAL \MEM_OUT[25]~output_o\ : std_logic;
SIGNAL \MEM_OUT[26]~output_o\ : std_logic;
SIGNAL \MEM_OUT[27]~output_o\ : std_logic;
SIGNAL \MEM_OUT[28]~output_o\ : std_logic;
SIGNAL \MEM_OUT[29]~output_o\ : std_logic;
SIGNAL \MEM_OUT[30]~output_o\ : std_logic;
SIGNAL \MEM_OUT[31]~output_o\ : std_logic;
SIGNAL \MEM_IN[0]~output_o\ : std_logic;
SIGNAL \MEM_IN[1]~output_o\ : std_logic;
SIGNAL \MEM_IN[2]~output_o\ : std_logic;
SIGNAL \MEM_IN[3]~output_o\ : std_logic;
SIGNAL \MEM_IN[4]~output_o\ : std_logic;
SIGNAL \MEM_IN[5]~output_o\ : std_logic;
SIGNAL \MEM_IN[6]~output_o\ : std_logic;
SIGNAL \MEM_IN[7]~output_o\ : std_logic;
SIGNAL \MEM_IN[8]~output_o\ : std_logic;
SIGNAL \MEM_IN[9]~output_o\ : std_logic;
SIGNAL \MEM_IN[10]~output_o\ : std_logic;
SIGNAL \MEM_IN[11]~output_o\ : std_logic;
SIGNAL \MEM_IN[12]~output_o\ : std_logic;
SIGNAL \MEM_IN[13]~output_o\ : std_logic;
SIGNAL \MEM_IN[14]~output_o\ : std_logic;
SIGNAL \MEM_IN[15]~output_o\ : std_logic;
SIGNAL \MEM_IN[16]~output_o\ : std_logic;
SIGNAL \MEM_IN[17]~output_o\ : std_logic;
SIGNAL \MEM_IN[18]~output_o\ : std_logic;
SIGNAL \MEM_IN[19]~output_o\ : std_logic;
SIGNAL \MEM_IN[20]~output_o\ : std_logic;
SIGNAL \MEM_IN[21]~output_o\ : std_logic;
SIGNAL \MEM_IN[22]~output_o\ : std_logic;
SIGNAL \MEM_IN[23]~output_o\ : std_logic;
SIGNAL \MEM_IN[24]~output_o\ : std_logic;
SIGNAL \MEM_IN[25]~output_o\ : std_logic;
SIGNAL \MEM_IN[26]~output_o\ : std_logic;
SIGNAL \MEM_IN[27]~output_o\ : std_logic;
SIGNAL \MEM_IN[28]~output_o\ : std_logic;
SIGNAL \MEM_IN[29]~output_o\ : std_logic;
SIGNAL \MEM_IN[30]~output_o\ : std_logic;
SIGNAL \MEM_IN[31]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[0]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[1]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[2]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[3]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[4]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[5]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[6]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[7]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \A_MUX~input_o\ : std_logic;
SIGNAL \DATA_MUX[1]~input_o\ : std_logic;
SIGNAL \DATA_MUX[0]~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux31~5_combout\ : std_logic;
SIGNAL \IM_MUX1~input_o\ : std_logic;
SIGNAL \ALU_Op[2]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux7~0_combout\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \ALU_Op[0]~input_o\ : std_logic;
SIGNAL \ALU_Op[1]~input_o\ : std_logic;
SIGNAL \IM_MUX2[0]~input_o\ : std_logic;
SIGNAL \IM_MUX2[1]~input_o\ : std_logic;
SIGNAL \B_MUX~input_o\ : std_logic;
SIGNAL \B_Mux0|f[1]~3_combout\ : std_logic;
SIGNAL \Clr_B~input_o\ : std_logic;
SIGNAL \Clr_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_B~input_o\ : std_logic;
SIGNAL \IM_MUX2a|Mux30~0_combout\ : std_logic;
SIGNAL \ClrIR~input_o\ : std_logic;
SIGNAL \ClrIR~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_IR~input_o\ : std_logic;
SIGNAL \B_Mux0|f[0]~2_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux31~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux30~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux30~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux30~3_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage0|stage1|s~combout\ : std_logic;
SIGNAL \B_Mux0|f[2]~4_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux29~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux29~9_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux29~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux29~3_combout\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux29~4_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage0|stage2|s~combout\ : std_logic;
SIGNAL \A_Mux0|f[1]~1_combout\ : std_logic;
SIGNAL \B_Mux0|f[3]~5_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux28~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~10_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~11_combout\ : std_logic;
SIGNAL \B_Mux0|f[4]~6_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux27~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~9_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage0|stage2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage0|stage3|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~12_combout\ : std_logic;
SIGNAL \DATA_IN[4]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~13_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage1|stage0|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux26~17_combout\ : std_logic;
SIGNAL \B_Mux0|f[5]~7_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux26~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux26~13_combout\ : std_logic;
SIGNAL \DATA_IN[6]~input_o\ : std_logic;
SIGNAL \IM_MUX1a|f[6]~6_combout\ : std_logic;
SIGNAL \B_Mux0|f[6]~8_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux25~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux25~9_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux25~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux25~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux25~4_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[5]~5_combout\ : std_logic;
SIGNAL \DATA_IN[7]~input_o\ : std_logic;
SIGNAL \mClk~input_o\ : std_logic;
SIGNAL \mClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~41feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~41_q\ : std_logic;
SIGNAL \WEN~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \Data_Mem0|data_out[2]~0_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~74_combout\ : std_logic;
SIGNAL \REG_MUX~input_o\ : std_logic;
SIGNAL \Reg_Mux0|f[0]~0_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[1]~1_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[2]~2_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[3]~3_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[4]~4_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[5]~5_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[6]~6_combout\ : std_logic;
SIGNAL \B_Mux0|f[7]~9_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[7]~7_combout\ : std_logic;
SIGNAL \A_Mux0|f[8]~9_combout\ : std_logic;
SIGNAL \Clr_A~input_o\ : std_logic;
SIGNAL \Clr_A~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_A~input_o\ : std_logic;
SIGNAL \IM_MUX1a|f[8]~8_combout\ : std_logic;
SIGNAL \DATA_IN[9]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~5_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux23~0_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux24~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage1|stage3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage1|stage3|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage1|stage0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage1|stage0|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage1|stage0|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage1|stage3|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage2|stage0|Cout~0_combout\ : std_logic;
SIGNAL \B_Mux0|f[9]~11_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux22~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~7_combout\ : std_logic;
SIGNAL \DATA_IN[10]~input_o\ : std_logic;
SIGNAL \B_Mux0|f[10]~12_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux21~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux21~12_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage1|stage2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage1|stage3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage2|stage0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage2|stage1|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux21~6_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[10]~10_combout\ : std_logic;
SIGNAL \B_Mux0|f[11]~13_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux20~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~4_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage2|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage2|stage2|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~7_combout\ : std_logic;
SIGNAL \DATA_IN[11]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~5_combout\ : std_logic;
SIGNAL \DATA_IN[12]~input_o\ : std_logic;
SIGNAL \B_Mux0|f[12]~14_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux19~0_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[12]~12_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux19~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux19~12_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage2|stage2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage2|stage3|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux19~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux18~9_combout\ : std_logic;
SIGNAL \B_Mux0|f[13]~15_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux18~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage3|stage0|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux18~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux18~10_combout\ : std_logic;
SIGNAL \DATA_IN[13]~input_o\ : std_logic;
SIGNAL \Reg_Mux0|f[9]~9_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[10]~10_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[11]~11_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[12]~12_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[13]~13_combout\ : std_logic;
SIGNAL \DATA_IN[14]~input_o\ : std_logic;
SIGNAL \B_Mux0|f[14]~16_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux17~0_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[14]~14_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~13_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~19_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage3|stage1|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~12_combout\ : std_logic;
SIGNAL \DATA_IN[15]~input_o\ : std_logic;
SIGNAL \B_Mux0|f[15]~17_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux16~0_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[15]~15_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux16~7_combout\ : std_logic;
SIGNAL \B_Mux0|f[17]~20_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux14~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux14~5_combout\ : std_logic;
SIGNAL \DATA_IN[16]~input_o\ : std_logic;
SIGNAL \IM_MUX2a|Mux15~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage3|stage2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage0|stage3|stage3|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux15~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux15~5_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux15~6_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[15]~15_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[16]~16_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[17]~17_combout\ : std_logic;
SIGNAL \DATA_IN[20]~input_o\ : std_logic;
SIGNAL \B_Mux0|f[19]~22_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[19]~19_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[20]~20_combout\ : std_logic;
SIGNAL \DATA_IN[21]~input_o\ : std_logic;
SIGNAL \IM_MUX2a|Mux10~0_combout\ : std_logic;
SIGNAL \ALU0|result_s~7_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage0|stage3|Cout~4_combout\ : std_logic;
SIGNAL \B_Mux0|f[18]~21_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux13~0_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux15~1_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage0|stage3|Cout~2_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[18]~18_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage0|stage3|Cout~3_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage1|stage0|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux10~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux10~1_combout\ : std_logic;
SIGNAL \DATA_IN[22]~input_o\ : std_logic;
SIGNAL \IM_MUX2a|Mux9~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux9~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux9~5_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux9~6_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~76_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~75_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~77_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~64_q\ : std_logic;
SIGNAL \IM_MUX1a|f[23]~23_combout\ : std_logic;
SIGNAL \B_Mux0|f[23]~27_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux8~0_combout\ : std_logic;
SIGNAL \ALU0|result_s~8_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage3|s~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage1|stage3|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux8~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux8~1_combout\ : std_logic;
SIGNAL \DATA_IN[28]~input_o\ : std_logic;
SIGNAL \B_Mux0|f[28]~33_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux3~0_combout\ : std_logic;
SIGNAL \B_Mux0|f[27]~32_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux4~0_combout\ : std_logic;
SIGNAL \B_Mux0|f[26]~31_combout\ : std_logic;
SIGNAL \B_Mux0|f[25]~30_combout\ : std_logic;
SIGNAL \DATA_IN[24]~input_o\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage1|stage3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage1|stage3|Cout~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux7~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux7~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux7~3_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[24]~24_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[25]~25_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[26]~26_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[27]~27_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[28]~28_combout\ : std_logic;
SIGNAL \A_Mux0|f[29]~32_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[29]~29_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux0~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux31~0_combout\ : std_logic;
SIGNAL \DATA_IN[31]~input_o\ : std_logic;
SIGNAL \DATA_IN[30]~input_o\ : std_logic;
SIGNAL \IM_MUX2a|Mux1~0_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[30]~32_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[30]~31_combout\ : std_logic;
SIGNAL \ALU0|result_s~5_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux2~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage3|stage2|s~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage2|stage3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage3|stage0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage3|stage2|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux1~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux1~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux1~2_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~72_q\ : std_logic;
SIGNAL \Reg_Mux0|f[31]~31_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Data_Mem0|data_out~31_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux1~5_combout\ : std_logic;
SIGNAL \B_Mux0|f[30]~35_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[30]~30_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~73feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~73_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~32_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux0~3_combout\ : std_logic;
SIGNAL \ALU0|result_s~6_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage3|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage3|stage3|s~combout\ : std_logic;
SIGNAL \ALU0|Mux0~0_combout\ : std_logic;
SIGNAL \ALU0|Mux0~1_combout\ : std_logic;
SIGNAL \B_Mux0|f[31]~37_combout\ : std_logic;
SIGNAL \B_Mux0|f[31]~36_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux0~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage3|stage3|s~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage2|stage3|Cout~5_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage2|stage3|Cout~6_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage3|Cout~5_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage3|Cout~6_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux12~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage2|Cout~9_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage2|Cout~10_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage3|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage3|stage1|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage3|stage1|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage3|stage2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage3|stage3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage2|Cout~8_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage3|Cout~4_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage2|stage0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux5~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage2|stage3|Cout~4_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage3|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage3|stage3|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux0~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux0~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux0~4_combout\ : std_logic;
SIGNAL \A_Mux0|f[31]~35_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[31]~33_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux1~3_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage3|stage2|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux1~4_combout\ : std_logic;
SIGNAL \A_Mux0|f[30]~33_combout\ : std_logic;
SIGNAL \A_Mux0|f[30]~34_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[30]~30_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux2~5_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage3|stage1|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux2~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux2~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux2~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux2~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux2~3_combout\ : std_logic;
SIGNAL \DATA_IN[29]~input_o\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~71feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~71_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~30_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux2~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux2~7_combout\ : std_logic;
SIGNAL \B_Mux0|f[29]~34_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[29]~29_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~66feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~66_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~25_combout\ : std_logic;
SIGNAL \B_Mux0|f[24]~28_combout\ : std_logic;
SIGNAL \B_Mux0|f[24]~29_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux7~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage2|stage0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage2|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage2|stage2|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~11_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~5_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~6_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage3|stage0|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~7_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~70feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~70_q\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Data_Mem0|data_out~29_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~10_combout\ : std_logic;
SIGNAL \A_Mux0|f[28]~31_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[28]~28_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux4~5_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage2|stage3|s~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage2|stage3|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux4~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux4~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux4~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux4~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux4~3_combout\ : std_logic;
SIGNAL \DATA_IN[27]~input_o\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~69feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~69_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~28_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux4~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux4~7_combout\ : std_logic;
SIGNAL \A_Mux0|f[27]~30_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[27]~27_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux5~1_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage2|stage2|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux5~2_combout\ : std_logic;
SIGNAL \DATA_IN[26]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux5~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux5~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux5~7_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~68feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~68_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~27_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux5~5_combout\ : std_logic;
SIGNAL \A_Mux0|f[26]~29_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[26]~26_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux6~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux6~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux6~5_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux6~0_combout\ : std_logic;
SIGNAL \ALU0|result_s~4_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage2|stage1|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux6~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux6~1_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~67_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~26_combout\ : std_logic;
SIGNAL \DATA_IN[25]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux6~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux6~6_combout\ : std_logic;
SIGNAL \A_Mux0|f[25]~28_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[25]~25_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux7~4_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage2|stage0|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux7~5_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux7~6_combout\ : std_logic;
SIGNAL \A_Mux0|f[24]~27_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[24]~24_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux8~3_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage3|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux8~4_combout\ : std_logic;
SIGNAL \DATA_IN[23]~input_o\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~65feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~65_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~24_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux8~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux8~5_combout\ : std_logic;
SIGNAL \A_Mux0|f[23]~26_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[23]~23_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Data_Mem0|data_out~23_combout\ : std_logic;
SIGNAL \A_Mux0|f[22]~24_combout\ : std_logic;
SIGNAL \A_Mux0|f[22]~25_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[22]~22_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux10~3_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage1|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux10~4_combout\ : std_logic;
SIGNAL \A_Mux0|f[21]~22_combout\ : std_logic;
SIGNAL \A_Mux0|f[21]~23_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[21]~21_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux9~1_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage2|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux9~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux9~3_combout\ : std_logic;
SIGNAL \B_Mux0|f[22]~26_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[22]~22_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~63_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~22_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux10~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux10~5_combout\ : std_logic;
SIGNAL \B_Mux0|f[21]~25_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[21]~21_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~62_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~21_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux11~3_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage1|stage0|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux11~4_combout\ : std_logic;
SIGNAL \B_Mux0|f[20]~23_combout\ : std_logic;
SIGNAL \B_Mux0|f[20]~24_combout\ : std_logic;
SIGNAL \IM_MUX2a|Mux11~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux11~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux11~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux11~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux11~5_combout\ : std_logic;
SIGNAL \A_Mux0|f[20]~21_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[20]~20_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux12~3_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage3|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux12~4_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage0|stage2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage0|stage3|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux12~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux12~1_combout\ : std_logic;
SIGNAL \DATA_IN[19]~input_o\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~61feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~61_q\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Data_Mem0|data_out~20_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux12~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux12~5_combout\ : std_logic;
SIGNAL \A_Mux0|f[19]~20_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[19]~19_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux13~1_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage2|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux13~2_combout\ : std_logic;
SIGNAL \DATA_IN[18]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux13~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux13~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux13~7_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~60feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~60_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~19_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux13~5_combout\ : std_logic;
SIGNAL \A_Mux0|f[18]~19_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[18]~18_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~58_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~17_combout\ : std_logic;
SIGNAL \B_Mux0|f[16]~18_combout\ : std_logic;
SIGNAL \B_Mux0|f[16]~19_combout\ : std_logic;
SIGNAL \ALU0|add0|stage1|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux14~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux14~1_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage1|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux14~2_combout\ : std_logic;
SIGNAL \DATA_IN[17]~input_o\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~59_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~18_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux14~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux14~3_combout\ : std_logic;
SIGNAL \A_Mux0|f[17]~18_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[17]~17_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux15~1_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage1|stage0|stage0|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux15~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux15~3_combout\ : std_logic;
SIGNAL \A_Mux0|f[16]~17_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[16]~16_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux16~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux16~13_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux16~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux16~12_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux16~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux16~10_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux16~14_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~57_q\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Data_Mem0|data_out~16_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux16~11_combout\ : std_logic;
SIGNAL \A_Mux0|f[15]~16_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~20_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~14_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~15_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~16_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~17_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~21_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~56_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~15_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux17~18_combout\ : std_logic;
SIGNAL \IR|Q[14]~feeder_combout\ : std_logic;
SIGNAL \A_Mux0|f[14]~15_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[14]~14_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~55_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~14_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux18~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux18~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux18~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux18~5_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux18~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux18~7_combout\ : std_logic;
SIGNAL \A_Mux0|f[13]~14_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[13]~13_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux19~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux19~13_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux19~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux19~10_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux19~14_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~54_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~13_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux19~11_combout\ : std_logic;
SIGNAL \A_Mux0|f[12]~13_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~13_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~14_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~10_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~53_q\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Data_Mem0|data_out~12_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~11_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux20~12_combout\ : std_logic;
SIGNAL \A_Mux0|f[11]~12_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[11]~11_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux21~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux21~13_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux21~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux21~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux21~10_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux21~14_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~52_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~11_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux21~11_combout\ : std_logic;
SIGNAL \A_Mux0|f[10]~11_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~13_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~14_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~10_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~51_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~10_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~11_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux22~12_combout\ : std_logic;
SIGNAL \A_Mux0|f[9]~10_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[9]~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~5_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~11_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~8_combout\ : std_logic;
SIGNAL \DATA_IN[8]~input_o\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~50_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux23~10_combout\ : std_logic;
SIGNAL \B_Mux0|f[8]~10_combout\ : std_logic;
SIGNAL \Reg_Mux0|f[8]~8_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~49_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux24~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux24~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux24~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux24~10_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux24~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux24~5_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux24~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux24~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux24~7_combout\ : std_logic;
SIGNAL \A_Mux0|f[7]~8_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[7]~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux25~5_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage1|stage2|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux25~6_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~48_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux25~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux25~8_combout\ : std_logic;
SIGNAL \A_Mux0|f[6]~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux26~18_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux26~10_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux26~11_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux26~12_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux26~14_combout\ : std_logic;
SIGNAL \DATA_IN[5]~input_o\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~47_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux26~15_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux26~16_combout\ : std_logic;
SIGNAL \A_Mux0|f[5]~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~17_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~14_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~15_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~46_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~5_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux27~16_combout\ : std_logic;
SIGNAL \A_Mux0|f[4]~5_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[4]~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux28~5_combout\ : std_logic;
SIGNAL \ALU0|sub0|stage0|stage0|stage3|s~combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux28~6_combout\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \DATA_MUX0|Mux28~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux28~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux28~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux28~4_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~45_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux28~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux28~8_combout\ : std_logic;
SIGNAL \A_Mux0|f[3]~4_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[3]~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux29~5_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux29~6_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~44feeder_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~44_q\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Data_Mem0|data_out~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux29~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux29~8_combout\ : std_logic;
SIGNAL \A_Mux0|f[2]~3_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[2]~2_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[0]~0_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux30~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux30~5_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~43_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux30~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux30~7_combout\ : std_logic;
SIGNAL \A_Mux0|f[1]~2_combout\ : std_logic;
SIGNAL \IM_MUX1a|f[1]~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux31~2_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux31~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux31~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux31~4_combout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Data_Mem0|DATAMEM~42_q\ : std_logic;
SIGNAL \Data_Mem0|data_out~1_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux31~6_combout\ : std_logic;
SIGNAL \A_Mux0|f[0]~0_combout\ : std_logic;
SIGNAL \ClrPC~input_o\ : std_logic;
SIGNAL \ClrPC~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_PC~input_o\ : std_logic;
SIGNAL \Inc_PC~input_o\ : std_logic;
SIGNAL \PC0|reg0|Q[0]~30_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[2]~31_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[2]~32\ : std_logic;
SIGNAL \PC0|reg0|Q[3]~33_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[3]~34\ : std_logic;
SIGNAL \PC0|reg0|Q[4]~35_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[4]~36\ : std_logic;
SIGNAL \PC0|reg0|Q[5]~37_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[5]~38\ : std_logic;
SIGNAL \PC0|reg0|Q[6]~39_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[6]~40\ : std_logic;
SIGNAL \PC0|reg0|Q[7]~41_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[7]~42\ : std_logic;
SIGNAL \PC0|reg0|Q[8]~43_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[8]~44\ : std_logic;
SIGNAL \PC0|reg0|Q[9]~45_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[9]~46\ : std_logic;
SIGNAL \PC0|reg0|Q[10]~47_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[10]~48\ : std_logic;
SIGNAL \PC0|reg0|Q[11]~49_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[11]~50\ : std_logic;
SIGNAL \PC0|reg0|Q[12]~51_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[12]~52\ : std_logic;
SIGNAL \PC0|reg0|Q[13]~53_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[13]~54\ : std_logic;
SIGNAL \PC0|reg0|Q[14]~55_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[14]~56\ : std_logic;
SIGNAL \PC0|reg0|Q[15]~57_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[15]~58\ : std_logic;
SIGNAL \PC0|reg0|Q[16]~59_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \PC0|reg0|Q[16]~60\ : std_logic;
SIGNAL \PC0|reg0|Q[17]~61_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[17]~62\ : std_logic;
SIGNAL \PC0|reg0|Q[18]~63_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[18]~64\ : std_logic;
SIGNAL \PC0|reg0|Q[19]~65_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[19]~66\ : std_logic;
SIGNAL \PC0|reg0|Q[20]~67_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[20]~68\ : std_logic;
SIGNAL \PC0|reg0|Q[21]~69_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[21]~70\ : std_logic;
SIGNAL \PC0|reg0|Q[22]~71_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[22]~72\ : std_logic;
SIGNAL \PC0|reg0|Q[23]~73_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[23]~74\ : std_logic;
SIGNAL \PC0|reg0|Q[24]~75_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[24]~76\ : std_logic;
SIGNAL \PC0|reg0|Q[25]~77_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[25]~78\ : std_logic;
SIGNAL \PC0|reg0|Q[26]~79_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[26]~80\ : std_logic;
SIGNAL \PC0|reg0|Q[27]~81_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[27]~82\ : std_logic;
SIGNAL \PC0|reg0|Q[28]~83_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[28]~84\ : std_logic;
SIGNAL \PC0|reg0|Q[29]~85_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[29]~86\ : std_logic;
SIGNAL \PC0|reg0|Q[30]~87_combout\ : std_logic;
SIGNAL \PC0|reg0|Q[30]~88\ : std_logic;
SIGNAL \PC0|reg0|Q[31]~89_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux15~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux14~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux13~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux13~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux12~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux11~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux10~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux9~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux8~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux7~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux6~7_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux5~3_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux5~4_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux4~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux3~9_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux2~8_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux1~6_combout\ : std_logic;
SIGNAL \DATA_MUX0|Mux0~5_combout\ : std_logic;
SIGNAL \PC0|reg0|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Reg_A|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Reg_B|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IR|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Data_Mem0|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_ClrPC~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr_A~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ClrIR~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_mClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Ld_IR~input_o\ : std_logic;
SIGNAL \ALT_INV_Inc_PC~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_mClk <= mClk;
ww_WEN <= WEN;
ww_EN <= EN;
ww_Clr_A <= Clr_A;
ww_Ld_A <= Ld_A;
ww_Clr_B <= Clr_B;
ww_Ld_B <= Ld_B;
ww_Clr_C <= Clr_C;
ww_Ld_C <= Ld_C;
ww_Clr_Z <= Clr_Z;
ww_Ld_Z <= Ld_Z;
ww_ClrPC <= ClrPC;
ww_Ld_PC <= Ld_PC;
ww_ClrIR <= ClrIR;
ww_Ld_IR <= Ld_IR;
Out_A <= ww_Out_A;
Out_B <= ww_Out_B;
Out_C <= ww_Out_C;
Out_Z <= ww_Out_Z;
Out_PC <= ww_Out_PC;
Out_IR <= ww_Out_IR;
ww_Inc_PC <= Inc_PC;
ADDR_OUT <= ww_ADDR_OUT;
ww_DATA_IN <= DATA_IN;
DATA_BUS <= ww_DATA_BUS;
MEM_OUT <= ww_MEM_OUT;
MEM_IN <= ww_MEM_IN;
MEM_ADDR <= ww_MEM_ADDR;
ww_DATA_MUX <= DATA_MUX;
ww_REG_MUX <= REG_MUX;
ww_A_MUX <= A_MUX;
ww_B_MUX <= B_MUX;
ww_IM_MUX1 <= IM_MUX1;
ww_IM_MUX2 <= IM_MUX2;
ww_ALU_Op <= ALU_Op;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \Reg_Mux0|f[31]~31_combout\ & \Reg_Mux0|f[30]~30_combout\ & \Reg_Mux0|f[29]~29_combout\ & \Reg_Mux0|f[28]~28_combout\ & \Reg_Mux0|f[27]~27_combout\ & 
\Reg_Mux0|f[26]~26_combout\ & \Reg_Mux0|f[25]~25_combout\ & \Reg_Mux0|f[24]~24_combout\ & \Reg_Mux0|f[23]~23_combout\ & \Reg_Mux0|f[22]~22_combout\ & \Reg_Mux0|f[21]~21_combout\ & \Reg_Mux0|f[20]~20_combout\ & \Reg_Mux0|f[19]~19_combout\ & 
\Reg_Mux0|f[18]~18_combout\ & \Reg_Mux0|f[17]~17_combout\ & \Reg_Mux0|f[16]~16_combout\ & \Reg_Mux0|f[15]~15_combout\ & \Reg_Mux0|f[14]~14_combout\ & \Reg_Mux0|f[13]~13_combout\ & \Reg_Mux0|f[12]~12_combout\ & \Reg_Mux0|f[11]~11_combout\ & 
\Reg_Mux0|f[10]~10_combout\ & \Reg_Mux0|f[9]~9_combout\ & \Reg_Mux0|f[8]~8_combout\ & \Reg_Mux0|f[7]~7_combout\ & \Reg_Mux0|f[6]~6_combout\ & \Reg_Mux0|f[5]~5_combout\ & \Reg_Mux0|f[4]~4_combout\ & \Reg_Mux0|f[3]~3_combout\ & \Reg_Mux0|f[2]~2_combout\ & 
\Reg_Mux0|f[1]~1_combout\ & \Reg_Mux0|f[0]~0_combout\);

\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\IR|Q\(7) & \IR|Q\(6) & \IR|Q\(5) & \IR|Q\(4) & \IR|Q\(3) & \IR|Q\(2) & \IR|Q\(1) & \IR|Q\(0));

\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\DATA_MUX0|Mux24~7_combout\ & \DATA_MUX0|Mux25~8_combout\ & \DATA_MUX0|Mux26~16_combout\ & \DATA_MUX0|Mux27~16_combout\ & \DATA_MUX0|Mux28~8_combout\ & \DATA_MUX0|Mux29~8_combout\ & 
\DATA_MUX0|Mux30~7_combout\ & \DATA_MUX0|Mux31~6_combout\);

\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a1\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a2\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a3\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a4\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a5\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a6\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a7\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a8\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a9\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a10\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a11\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a12\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a13\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a14\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a15\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a16\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a17\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a18\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a19\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a20\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a21\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a22\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a23\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a24\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a25\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a26\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a27\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a28\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a29\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a30\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a31\ <= \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\mClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mClk~input_o\);

\ClrIR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ClrIR~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

\Clr_A~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_A~input_o\);

\Clr_B~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_B~input_o\);

\ClrPC~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ClrPC~input_o\);
\ALT_INV_ClrPC~inputclkctrl_outclk\ <= NOT \ClrPC~inputclkctrl_outclk\;
\ALT_INV_Clr_B~inputclkctrl_outclk\ <= NOT \Clr_B~inputclkctrl_outclk\;
\ALT_INV_Clr_A~inputclkctrl_outclk\ <= NOT \Clr_A~inputclkctrl_outclk\;
\ALT_INV_ClrIR~inputclkctrl_outclk\ <= NOT \ClrIR~inputclkctrl_outclk\;
\ALT_INV_mClk~inputclkctrl_outclk\ <= NOT \mClk~inputclkctrl_outclk\;
\ALT_INV_Ld_IR~input_o\ <= NOT \Ld_IR~input_o\;
\ALT_INV_Inc_PC~input_o\ <= NOT \Inc_PC~input_o\;

-- Location: IOOBUF_X52_Y0_N16
\Out_A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(0),
	devoe => ww_devoe,
	o => \Out_A[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\Out_A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(1),
	devoe => ww_devoe,
	o => \Out_A[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\Out_A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(2),
	devoe => ww_devoe,
	o => \Out_A[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\Out_A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(3),
	devoe => ww_devoe,
	o => \Out_A[3]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\Out_A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(4),
	devoe => ww_devoe,
	o => \Out_A[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Out_A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(5),
	devoe => ww_devoe,
	o => \Out_A[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Out_A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(6),
	devoe => ww_devoe,
	o => \Out_A[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Out_A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(7),
	devoe => ww_devoe,
	o => \Out_A[7]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\Out_A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(8),
	devoe => ww_devoe,
	o => \Out_A[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\Out_A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(9),
	devoe => ww_devoe,
	o => \Out_A[9]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\Out_A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(10),
	devoe => ww_devoe,
	o => \Out_A[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Out_A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(11),
	devoe => ww_devoe,
	o => \Out_A[11]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Out_A[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(12),
	devoe => ww_devoe,
	o => \Out_A[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\Out_A[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(13),
	devoe => ww_devoe,
	o => \Out_A[13]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Out_A[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(14),
	devoe => ww_devoe,
	o => \Out_A[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Out_A[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(15),
	devoe => ww_devoe,
	o => \Out_A[15]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\Out_A[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(16),
	devoe => ww_devoe,
	o => \Out_A[16]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Out_A[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(17),
	devoe => ww_devoe,
	o => \Out_A[17]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Out_A[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(18),
	devoe => ww_devoe,
	o => \Out_A[18]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Out_A[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(19),
	devoe => ww_devoe,
	o => \Out_A[19]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Out_A[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(20),
	devoe => ww_devoe,
	o => \Out_A[20]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Out_A[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(21),
	devoe => ww_devoe,
	o => \Out_A[21]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\Out_A[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(22),
	devoe => ww_devoe,
	o => \Out_A[22]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\Out_A[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(23),
	devoe => ww_devoe,
	o => \Out_A[23]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Out_A[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(24),
	devoe => ww_devoe,
	o => \Out_A[24]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Out_A[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(25),
	devoe => ww_devoe,
	o => \Out_A[25]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Out_A[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(26),
	devoe => ww_devoe,
	o => \Out_A[26]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\Out_A[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(27),
	devoe => ww_devoe,
	o => \Out_A[27]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\Out_A[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(28),
	devoe => ww_devoe,
	o => \Out_A[28]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\Out_A[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(29),
	devoe => ww_devoe,
	o => \Out_A[29]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Out_A[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(30),
	devoe => ww_devoe,
	o => \Out_A[30]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\Out_A[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_A|Q\(31),
	devoe => ww_devoe,
	o => \Out_A[31]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\Out_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(0),
	devoe => ww_devoe,
	o => \Out_B[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Out_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(1),
	devoe => ww_devoe,
	o => \Out_B[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Out_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(2),
	devoe => ww_devoe,
	o => \Out_B[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\Out_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(3),
	devoe => ww_devoe,
	o => \Out_B[3]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\Out_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(4),
	devoe => ww_devoe,
	o => \Out_B[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Out_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(5),
	devoe => ww_devoe,
	o => \Out_B[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Out_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(6),
	devoe => ww_devoe,
	o => \Out_B[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Out_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(7),
	devoe => ww_devoe,
	o => \Out_B[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Out_B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(8),
	devoe => ww_devoe,
	o => \Out_B[8]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Out_B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(9),
	devoe => ww_devoe,
	o => \Out_B[9]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Out_B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(10),
	devoe => ww_devoe,
	o => \Out_B[10]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Out_B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(11),
	devoe => ww_devoe,
	o => \Out_B[11]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\Out_B[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(12),
	devoe => ww_devoe,
	o => \Out_B[12]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Out_B[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(13),
	devoe => ww_devoe,
	o => \Out_B[13]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\Out_B[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(14),
	devoe => ww_devoe,
	o => \Out_B[14]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Out_B[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(15),
	devoe => ww_devoe,
	o => \Out_B[15]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\Out_B[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(16),
	devoe => ww_devoe,
	o => \Out_B[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\Out_B[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(17),
	devoe => ww_devoe,
	o => \Out_B[17]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Out_B[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(18),
	devoe => ww_devoe,
	o => \Out_B[18]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\Out_B[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(19),
	devoe => ww_devoe,
	o => \Out_B[19]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Out_B[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(20),
	devoe => ww_devoe,
	o => \Out_B[20]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\Out_B[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(21),
	devoe => ww_devoe,
	o => \Out_B[21]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\Out_B[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(22),
	devoe => ww_devoe,
	o => \Out_B[22]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\Out_B[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(23),
	devoe => ww_devoe,
	o => \Out_B[23]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Out_B[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(24),
	devoe => ww_devoe,
	o => \Out_B[24]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Out_B[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(25),
	devoe => ww_devoe,
	o => \Out_B[25]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\Out_B[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(26),
	devoe => ww_devoe,
	o => \Out_B[26]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\Out_B[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(27),
	devoe => ww_devoe,
	o => \Out_B[27]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\Out_B[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(28),
	devoe => ww_devoe,
	o => \Out_B[28]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\Out_B[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(29),
	devoe => ww_devoe,
	o => \Out_B[29]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\Out_B[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(30),
	devoe => ww_devoe,
	o => \Out_B[30]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\Out_B[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_B|Q\(31),
	devoe => ww_devoe,
	o => \Out_B[31]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Out_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Out_C~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Out_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Out_Z~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\Out_PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(0),
	devoe => ww_devoe,
	o => \Out_PC[0]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\Out_PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(1),
	devoe => ww_devoe,
	o => \Out_PC[1]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\Out_PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(2),
	devoe => ww_devoe,
	o => \Out_PC[2]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\Out_PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(3),
	devoe => ww_devoe,
	o => \Out_PC[3]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\Out_PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(4),
	devoe => ww_devoe,
	o => \Out_PC[4]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Out_PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(5),
	devoe => ww_devoe,
	o => \Out_PC[5]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\Out_PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(6),
	devoe => ww_devoe,
	o => \Out_PC[6]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\Out_PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(7),
	devoe => ww_devoe,
	o => \Out_PC[7]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\Out_PC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(8),
	devoe => ww_devoe,
	o => \Out_PC[8]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\Out_PC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(9),
	devoe => ww_devoe,
	o => \Out_PC[9]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\Out_PC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(10),
	devoe => ww_devoe,
	o => \Out_PC[10]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\Out_PC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(11),
	devoe => ww_devoe,
	o => \Out_PC[11]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Out_PC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(12),
	devoe => ww_devoe,
	o => \Out_PC[12]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\Out_PC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(13),
	devoe => ww_devoe,
	o => \Out_PC[13]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\Out_PC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(14),
	devoe => ww_devoe,
	o => \Out_PC[14]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\Out_PC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(15),
	devoe => ww_devoe,
	o => \Out_PC[15]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\Out_PC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(16),
	devoe => ww_devoe,
	o => \Out_PC[16]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\Out_PC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(17),
	devoe => ww_devoe,
	o => \Out_PC[17]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\Out_PC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(18),
	devoe => ww_devoe,
	o => \Out_PC[18]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\Out_PC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(19),
	devoe => ww_devoe,
	o => \Out_PC[19]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\Out_PC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(20),
	devoe => ww_devoe,
	o => \Out_PC[20]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\Out_PC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(21),
	devoe => ww_devoe,
	o => \Out_PC[21]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\Out_PC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(22),
	devoe => ww_devoe,
	o => \Out_PC[22]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\Out_PC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(23),
	devoe => ww_devoe,
	o => \Out_PC[23]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\Out_PC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(24),
	devoe => ww_devoe,
	o => \Out_PC[24]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\Out_PC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(25),
	devoe => ww_devoe,
	o => \Out_PC[25]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\Out_PC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(26),
	devoe => ww_devoe,
	o => \Out_PC[26]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\Out_PC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(27),
	devoe => ww_devoe,
	o => \Out_PC[27]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\Out_PC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(28),
	devoe => ww_devoe,
	o => \Out_PC[28]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\Out_PC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(29),
	devoe => ww_devoe,
	o => \Out_PC[29]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\Out_PC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(30),
	devoe => ww_devoe,
	o => \Out_PC[30]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\Out_PC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(31),
	devoe => ww_devoe,
	o => \Out_PC[31]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Out_IR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(0),
	devoe => ww_devoe,
	o => \Out_IR[0]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\Out_IR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(1),
	devoe => ww_devoe,
	o => \Out_IR[1]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\Out_IR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(2),
	devoe => ww_devoe,
	o => \Out_IR[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Out_IR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(3),
	devoe => ww_devoe,
	o => \Out_IR[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\Out_IR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(4),
	devoe => ww_devoe,
	o => \Out_IR[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\Out_IR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(5),
	devoe => ww_devoe,
	o => \Out_IR[5]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\Out_IR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(6),
	devoe => ww_devoe,
	o => \Out_IR[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\Out_IR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(7),
	devoe => ww_devoe,
	o => \Out_IR[7]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\Out_IR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(8),
	devoe => ww_devoe,
	o => \Out_IR[8]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\Out_IR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(9),
	devoe => ww_devoe,
	o => \Out_IR[9]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\Out_IR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(10),
	devoe => ww_devoe,
	o => \Out_IR[10]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\Out_IR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(11),
	devoe => ww_devoe,
	o => \Out_IR[11]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\Out_IR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(12),
	devoe => ww_devoe,
	o => \Out_IR[12]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\Out_IR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(13),
	devoe => ww_devoe,
	o => \Out_IR[13]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\Out_IR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(14),
	devoe => ww_devoe,
	o => \Out_IR[14]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\Out_IR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(15),
	devoe => ww_devoe,
	o => \Out_IR[15]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\Out_IR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(16),
	devoe => ww_devoe,
	o => \Out_IR[16]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\Out_IR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(17),
	devoe => ww_devoe,
	o => \Out_IR[17]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Out_IR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(18),
	devoe => ww_devoe,
	o => \Out_IR[18]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Out_IR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(19),
	devoe => ww_devoe,
	o => \Out_IR[19]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\Out_IR[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(20),
	devoe => ww_devoe,
	o => \Out_IR[20]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\Out_IR[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(21),
	devoe => ww_devoe,
	o => \Out_IR[21]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\Out_IR[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(22),
	devoe => ww_devoe,
	o => \Out_IR[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Out_IR[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(23),
	devoe => ww_devoe,
	o => \Out_IR[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Out_IR[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(24),
	devoe => ww_devoe,
	o => \Out_IR[24]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\Out_IR[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(25),
	devoe => ww_devoe,
	o => \Out_IR[25]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\Out_IR[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(26),
	devoe => ww_devoe,
	o => \Out_IR[26]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Out_IR[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(27),
	devoe => ww_devoe,
	o => \Out_IR[27]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Out_IR[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(28),
	devoe => ww_devoe,
	o => \Out_IR[28]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\Out_IR[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(29),
	devoe => ww_devoe,
	o => \Out_IR[29]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\Out_IR[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(30),
	devoe => ww_devoe,
	o => \Out_IR[30]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\Out_IR[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(31),
	devoe => ww_devoe,
	o => \Out_IR[31]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\ADDR_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(0),
	devoe => ww_devoe,
	o => \ADDR_OUT[0]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\ADDR_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(1),
	devoe => ww_devoe,
	o => \ADDR_OUT[1]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\ADDR_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(2),
	devoe => ww_devoe,
	o => \ADDR_OUT[2]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\ADDR_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(3),
	devoe => ww_devoe,
	o => \ADDR_OUT[3]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\ADDR_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(4),
	devoe => ww_devoe,
	o => \ADDR_OUT[4]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\ADDR_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(5),
	devoe => ww_devoe,
	o => \ADDR_OUT[5]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\ADDR_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(6),
	devoe => ww_devoe,
	o => \ADDR_OUT[6]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\ADDR_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(7),
	devoe => ww_devoe,
	o => \ADDR_OUT[7]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\ADDR_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(8),
	devoe => ww_devoe,
	o => \ADDR_OUT[8]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\ADDR_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(9),
	devoe => ww_devoe,
	o => \ADDR_OUT[9]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\ADDR_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(10),
	devoe => ww_devoe,
	o => \ADDR_OUT[10]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\ADDR_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(11),
	devoe => ww_devoe,
	o => \ADDR_OUT[11]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\ADDR_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(12),
	devoe => ww_devoe,
	o => \ADDR_OUT[12]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\ADDR_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(13),
	devoe => ww_devoe,
	o => \ADDR_OUT[13]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\ADDR_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(14),
	devoe => ww_devoe,
	o => \ADDR_OUT[14]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\ADDR_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(15),
	devoe => ww_devoe,
	o => \ADDR_OUT[15]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\ADDR_OUT[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(16),
	devoe => ww_devoe,
	o => \ADDR_OUT[16]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\ADDR_OUT[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(17),
	devoe => ww_devoe,
	o => \ADDR_OUT[17]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\ADDR_OUT[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(18),
	devoe => ww_devoe,
	o => \ADDR_OUT[18]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\ADDR_OUT[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(19),
	devoe => ww_devoe,
	o => \ADDR_OUT[19]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\ADDR_OUT[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(20),
	devoe => ww_devoe,
	o => \ADDR_OUT[20]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\ADDR_OUT[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(21),
	devoe => ww_devoe,
	o => \ADDR_OUT[21]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\ADDR_OUT[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(22),
	devoe => ww_devoe,
	o => \ADDR_OUT[22]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\ADDR_OUT[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(23),
	devoe => ww_devoe,
	o => \ADDR_OUT[23]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\ADDR_OUT[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(24),
	devoe => ww_devoe,
	o => \ADDR_OUT[24]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\ADDR_OUT[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(25),
	devoe => ww_devoe,
	o => \ADDR_OUT[25]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\ADDR_OUT[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(26),
	devoe => ww_devoe,
	o => \ADDR_OUT[26]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\ADDR_OUT[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(27),
	devoe => ww_devoe,
	o => \ADDR_OUT[27]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\ADDR_OUT[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(28),
	devoe => ww_devoe,
	o => \ADDR_OUT[28]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\ADDR_OUT[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(29),
	devoe => ww_devoe,
	o => \ADDR_OUT[29]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\ADDR_OUT[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(30),
	devoe => ww_devoe,
	o => \ADDR_OUT[30]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\ADDR_OUT[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|reg0|Q\(31),
	devoe => ww_devoe,
	o => \ADDR_OUT[31]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\DATA_BUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux31~6_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\DATA_BUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux30~7_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[1]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\DATA_BUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux29~8_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[2]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\DATA_BUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux28~8_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[3]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\DATA_BUS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux27~16_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\DATA_BUS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux26~16_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\DATA_BUS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux25~8_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\DATA_BUS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux24~7_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[7]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\DATA_BUS[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux23~10_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[8]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\DATA_BUS[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux22~12_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[9]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\DATA_BUS[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux21~11_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[10]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\DATA_BUS[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux20~12_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\DATA_BUS[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux19~11_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\DATA_BUS[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux18~7_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[13]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\DATA_BUS[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux17~18_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[14]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\DATA_BUS[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux16~11_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[15]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\DATA_BUS[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux15~4_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[16]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\DATA_BUS[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux14~4_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[17]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\DATA_BUS[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux13~4_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[18]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\DATA_BUS[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux12~6_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[19]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\DATA_BUS[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux11~6_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[20]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\DATA_BUS[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux10~6_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[21]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\DATA_BUS[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[22]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\DATA_BUS[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux8~6_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\DATA_BUS[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux7~7_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[24]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\DATA_BUS[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux6~7_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[25]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\DATA_BUS[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[26]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\DATA_BUS[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux4~8_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[27]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\DATA_BUS[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux3~9_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[28]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\DATA_BUS[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux2~8_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[29]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\DATA_BUS[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux1~6_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[30]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\DATA_BUS[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_MUX0|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \DATA_BUS[31]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\MEM_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(0),
	devoe => ww_devoe,
	o => \MEM_OUT[0]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\MEM_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(1),
	devoe => ww_devoe,
	o => \MEM_OUT[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\MEM_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(2),
	devoe => ww_devoe,
	o => \MEM_OUT[2]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\MEM_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(3),
	devoe => ww_devoe,
	o => \MEM_OUT[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\MEM_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(4),
	devoe => ww_devoe,
	o => \MEM_OUT[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\MEM_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(5),
	devoe => ww_devoe,
	o => \MEM_OUT[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\MEM_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(6),
	devoe => ww_devoe,
	o => \MEM_OUT[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\MEM_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(7),
	devoe => ww_devoe,
	o => \MEM_OUT[7]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\MEM_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(8),
	devoe => ww_devoe,
	o => \MEM_OUT[8]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\MEM_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(9),
	devoe => ww_devoe,
	o => \MEM_OUT[9]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\MEM_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(10),
	devoe => ww_devoe,
	o => \MEM_OUT[10]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\MEM_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(11),
	devoe => ww_devoe,
	o => \MEM_OUT[11]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\MEM_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(12),
	devoe => ww_devoe,
	o => \MEM_OUT[12]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\MEM_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(13),
	devoe => ww_devoe,
	o => \MEM_OUT[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\MEM_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(14),
	devoe => ww_devoe,
	o => \MEM_OUT[14]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\MEM_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(15),
	devoe => ww_devoe,
	o => \MEM_OUT[15]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\MEM_OUT[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(16),
	devoe => ww_devoe,
	o => \MEM_OUT[16]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\MEM_OUT[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(17),
	devoe => ww_devoe,
	o => \MEM_OUT[17]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\MEM_OUT[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(18),
	devoe => ww_devoe,
	o => \MEM_OUT[18]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\MEM_OUT[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(19),
	devoe => ww_devoe,
	o => \MEM_OUT[19]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\MEM_OUT[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(20),
	devoe => ww_devoe,
	o => \MEM_OUT[20]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\MEM_OUT[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(21),
	devoe => ww_devoe,
	o => \MEM_OUT[21]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\MEM_OUT[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(22),
	devoe => ww_devoe,
	o => \MEM_OUT[22]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\MEM_OUT[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(23),
	devoe => ww_devoe,
	o => \MEM_OUT[23]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\MEM_OUT[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(24),
	devoe => ww_devoe,
	o => \MEM_OUT[24]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\MEM_OUT[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(25),
	devoe => ww_devoe,
	o => \MEM_OUT[25]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\MEM_OUT[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(26),
	devoe => ww_devoe,
	o => \MEM_OUT[26]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\MEM_OUT[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(27),
	devoe => ww_devoe,
	o => \MEM_OUT[27]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\MEM_OUT[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(28),
	devoe => ww_devoe,
	o => \MEM_OUT[28]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\MEM_OUT[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(29),
	devoe => ww_devoe,
	o => \MEM_OUT[29]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\MEM_OUT[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(30),
	devoe => ww_devoe,
	o => \MEM_OUT[30]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\MEM_OUT[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Mem0|data_out\(31),
	devoe => ww_devoe,
	o => \MEM_OUT[31]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\MEM_IN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[0]~0_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\MEM_IN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\MEM_IN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[2]~2_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\MEM_IN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[3]~3_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[3]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\MEM_IN[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[4]~4_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\MEM_IN[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[5]~5_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\MEM_IN[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[6]~6_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\MEM_IN[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[7]~7_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[7]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\MEM_IN[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[8]~8_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[8]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\MEM_IN[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[9]~9_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[9]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\MEM_IN[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[10]~10_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[10]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\MEM_IN[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[11]~11_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\MEM_IN[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[12]~12_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[12]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\MEM_IN[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[13]~13_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[13]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\MEM_IN[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[14]~14_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[14]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\MEM_IN[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[15]~15_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[15]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\MEM_IN[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[16]~16_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[16]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\MEM_IN[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[17]~17_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[17]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\MEM_IN[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[18]~18_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\MEM_IN[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[19]~19_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[19]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\MEM_IN[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[20]~20_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[20]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\MEM_IN[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[21]~21_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[21]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\MEM_IN[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[22]~22_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[22]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\MEM_IN[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[23]~23_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[23]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\MEM_IN[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[24]~24_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[24]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\MEM_IN[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[25]~25_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[25]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\MEM_IN[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[26]~26_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[26]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\MEM_IN[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[27]~27_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[27]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\MEM_IN[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[28]~28_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[28]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\MEM_IN[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[29]~29_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[29]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\MEM_IN[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[30]~30_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[30]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\MEM_IN[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Mux0|f[31]~31_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[31]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\MEM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(0),
	devoe => ww_devoe,
	o => \MEM_ADDR[0]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\MEM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(1),
	devoe => ww_devoe,
	o => \MEM_ADDR[1]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\MEM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(2),
	devoe => ww_devoe,
	o => \MEM_ADDR[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\MEM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(3),
	devoe => ww_devoe,
	o => \MEM_ADDR[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\MEM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(4),
	devoe => ww_devoe,
	o => \MEM_ADDR[4]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\MEM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(5),
	devoe => ww_devoe,
	o => \MEM_ADDR[5]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\MEM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(6),
	devoe => ww_devoe,
	o => \MEM_ADDR[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\MEM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|Q\(7),
	devoe => ww_devoe,
	o => \MEM_ADDR[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N22
\A_MUX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_MUX,
	o => \A_MUX~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\DATA_MUX[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_MUX(1),
	o => \DATA_MUX[1]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\DATA_MUX[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_MUX(0),
	o => \DATA_MUX[0]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\DATA_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: LCCOMB_X40_Y28_N30
\DATA_MUX0|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux31~5_combout\ = (!\DATA_MUX[1]~input_o\ & ((\DATA_MUX[0]~input_o\) # (\DATA_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_IN[0]~input_o\,
	combout => \DATA_MUX0|Mux31~5_combout\);

-- Location: IOIBUF_X0_Y29_N15
\IM_MUX1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IM_MUX1,
	o => \IM_MUX1~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\ALU_Op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Op(2),
	o => \ALU_Op[2]~input_o\);

-- Location: LCCOMB_X36_Y27_N18
\DATA_MUX0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux7~0_combout\ = (\DATA_MUX[1]~input_o\ & ((\ALU_Op[2]~input_o\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_MUX[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \ALU_Op[2]~input_o\,
	combout => \DATA_MUX0|Mux7~0_combout\);

-- Location: IOIBUF_X74_Y0_N1
\DATA_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\ALU_Op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Op(0),
	o => \ALU_Op[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\ALU_Op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Op(1),
	o => \ALU_Op[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\IM_MUX2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IM_MUX2(0),
	o => \IM_MUX2[0]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\IM_MUX2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IM_MUX2(1),
	o => \IM_MUX2[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B_MUX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_MUX,
	o => \B_MUX~input_o\);

-- Location: LCCOMB_X41_Y27_N22
\B_Mux0|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[1]~3_combout\ = (\B_MUX~input_o\ & (\IR|Q\(1))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux30~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \IR|Q\(1),
	datad => \DATA_MUX0|Mux30~7_combout\,
	combout => \B_Mux0|f[1]~3_combout\);

-- Location: IOIBUF_X58_Y0_N22
\Clr_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_B,
	o => \Clr_B~input_o\);

-- Location: CLKCTRL_G18
\Clr_B~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_B~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_B~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y31_N15
\Ld_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_B,
	o => \Ld_B~input_o\);

-- Location: FF_X41_Y27_N23
\Reg_B|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[1]~3_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(1));

-- Location: LCCOMB_X41_Y27_N8
\IM_MUX2a|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux30~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(1)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \Reg_B|Q\(1),
	datad => \IR|Q\(1),
	combout => \IM_MUX2a|Mux30~0_combout\);

-- Location: IOIBUF_X0_Y36_N22
\ClrIR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ClrIR,
	o => \ClrIR~input_o\);

-- Location: CLKCTRL_G3
\ClrIR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ClrIR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ClrIR~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y30_N1
\Ld_IR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_IR,
	o => \Ld_IR~input_o\);

-- Location: FF_X38_Y27_N11
\IR|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux31~6_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(0));

-- Location: LCCOMB_X41_Y27_N12
\B_Mux0|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[0]~2_combout\ = (\B_MUX~input_o\ & (\IR|Q\(0))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(0),
	datac => \DATA_MUX0|Mux31~6_combout\,
	datad => \B_MUX~input_o\,
	combout => \B_Mux0|f[0]~2_combout\);

-- Location: FF_X41_Y27_N13
\Reg_B|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[0]~2_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(0));

-- Location: LCCOMB_X41_Y27_N6
\IM_MUX2a|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux31~0_combout\ = (\IM_MUX2[1]~input_o\ & (((!\IM_MUX2[0]~input_o\)))) # (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(0)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_B|Q\(0),
	datab => \IM_MUX2[1]~input_o\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \IR|Q\(0),
	combout => \IM_MUX2a|Mux31~0_combout\);

-- Location: LCCOMB_X41_Y27_N2
\ALU0|add0|stage0|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage0|stage0|Cout~0_combout\ = (\ALU_Op[2]~input_o\ & ((\IM_MUX2a|Mux31~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(0))))) # (!\ALU_Op[2]~input_o\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(0) & \IM_MUX2a|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(0),
	datac => \ALU_Op[2]~input_o\,
	datad => \IM_MUX2a|Mux31~0_combout\,
	combout => \ALU0|add0|stage0|stage0|stage0|Cout~0_combout\);

-- Location: LCCOMB_X42_Y27_N0
\DATA_MUX0|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux30~8_combout\ = (\ALU_Op[1]~input_o\ & (\ALU0|add0|stage0|stage0|stage0|Cout~0_combout\ $ (((!\IM_MUX1~input_o\ & \Reg_A|Q\(1)))))) # (!\ALU_Op[1]~input_o\ & (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1~input_o\,
	datac => \ALU0|add0|stage0|stage0|stage0|Cout~0_combout\,
	datad => \Reg_A|Q\(1),
	combout => \DATA_MUX0|Mux30~8_combout\);

-- Location: LCCOMB_X42_Y28_N14
\DATA_MUX0|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux30~2_combout\ = (\IM_MUX2a|Mux30~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux30~8_combout\)))) # (!\IM_MUX2a|Mux30~0_combout\ & (\DATA_MUX0|Mux30~8_combout\ & (\ALU_Op[0]~input_o\ $ (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX2a|Mux30~0_combout\,
	datad => \DATA_MUX0|Mux30~8_combout\,
	combout => \DATA_MUX0|Mux30~2_combout\);

-- Location: LCCOMB_X43_Y28_N22
\DATA_MUX0|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux30~3_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX[1]~input_o\)) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux30~2_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_IN[1]~input_o\,
	datad => \DATA_MUX0|Mux30~2_combout\,
	combout => \DATA_MUX0|Mux30~3_combout\);

-- Location: LCCOMB_X42_Y27_N20
\ALU0|sub0|stage0|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage0|stage0|Cout~0_combout\ = (\ALU_Op[2]~input_o\ & (((!\IM_MUX1~input_o\ & \Reg_A|Q\(0))) # (!\IM_MUX2a|Mux31~0_combout\))) # (!\ALU_Op[2]~input_o\ & (!\IM_MUX1~input_o\ & (!\IM_MUX2a|Mux31~0_combout\ & \Reg_A|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux31~0_combout\,
	datad => \Reg_A|Q\(0),
	combout => \ALU0|sub0|stage0|stage0|stage0|Cout~0_combout\);

-- Location: LCCOMB_X41_Y27_N10
\ALU0|sub0|stage0|stage0|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage0|stage1|s~combout\ = \ALU0|sub0|stage0|stage0|stage0|Cout~0_combout\ $ (\IM_MUX2a|Mux30~0_combout\ $ (((\Reg_A|Q\(1) & !\IM_MUX1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage0|stage0|Cout~0_combout\,
	datab => \Reg_A|Q\(1),
	datac => \IM_MUX2a|Mux30~0_combout\,
	datad => \IM_MUX1~input_o\,
	combout => \ALU0|sub0|stage0|stage0|stage1|s~combout\);

-- Location: LCCOMB_X41_Y27_N0
\B_Mux0|f[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[2]~4_combout\ = (\B_MUX~input_o\ & (\IR|Q\(2))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux29~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datac => \IR|Q\(2),
	datad => \DATA_MUX0|Mux29~8_combout\,
	combout => \B_Mux0|f[2]~4_combout\);

-- Location: FF_X41_Y27_N1
\Reg_B|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[2]~4_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(2));

-- Location: LCCOMB_X41_Y27_N4
\IM_MUX2a|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux29~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\IR|Q\(2))) # (!\IM_MUX2[0]~input_o\ & ((\Reg_B|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \IR|Q\(2),
	datad => \Reg_B|Q\(2),
	combout => \IM_MUX2a|Mux29~0_combout\);

-- Location: LCCOMB_X39_Y26_N14
\DATA_MUX0|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux29~9_combout\ = (\IM_MUX2a|Mux29~0_combout\ & (\ALU_Op[1]~input_o\ $ (((\Reg_A|Q\(2) & !\IM_MUX1~input_o\))))) # (!\IM_MUX2a|Mux29~0_combout\ & (\Reg_A|Q\(2) & (\ALU_Op[1]~input_o\ & !\IM_MUX1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(2),
	datab => \IM_MUX2a|Mux29~0_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1~input_o\,
	combout => \DATA_MUX0|Mux29~9_combout\);

-- Location: LCCOMB_X41_Y27_N18
\ALU0|add0|stage0|stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage0|stage1|Cout~0_combout\ = (\IM_MUX2a|Mux30~0_combout\ & ((\ALU0|add0|stage0|stage0|stage0|Cout~0_combout\) # ((\Reg_A|Q\(1) & !\IM_MUX1~input_o\)))) # (!\IM_MUX2a|Mux30~0_combout\ & (\Reg_A|Q\(1) & (!\IM_MUX1~input_o\ & 
-- \ALU0|add0|stage0|stage0|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(1),
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux30~0_combout\,
	datad => \ALU0|add0|stage0|stage0|stage0|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage0|stage1|Cout~0_combout\);

-- Location: LCCOMB_X40_Y26_N10
\DATA_MUX0|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux29~2_combout\ = (\ALU_Op[0]~input_o\ & (((\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (\DATA_MUX0|Mux29~9_combout\ $ (((\ALU_Op[1]~input_o\ & \ALU0|add0|stage0|stage0|stage1|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux29~9_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU0|add0|stage0|stage0|stage1|Cout~0_combout\,
	combout => \DATA_MUX0|Mux29~2_combout\);

-- Location: LCCOMB_X39_Y26_N18
\DATA_MUX0|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux29~3_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux29~0_combout\) # ((\IM_MUX1a|f[2]~2_combout\ & !\DATA_MUX0|Mux29~2_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\DATA_MUX0|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[2]~2_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \DATA_MUX0|Mux29~2_combout\,
	datad => \IM_MUX2a|Mux29~0_combout\,
	combout => \DATA_MUX0|Mux29~3_combout\);

-- Location: IOIBUF_X18_Y0_N15
\DATA_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: LCCOMB_X36_Y27_N22
\DATA_MUX0|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux29~4_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\) # ((\DATA_MUX0|Mux29~3_combout\)))) # (!\DATA_MUX[1]~input_o\ & (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux29~3_combout\,
	datad => \DATA_IN[2]~input_o\,
	combout => \DATA_MUX0|Mux29~4_combout\);

-- Location: LCCOMB_X42_Y27_N2
\ALU0|sub0|stage0|stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage0|stage1|Cout~0_combout\ = (\IM_MUX2a|Mux30~0_combout\ & (\Reg_A|Q\(1) & (!\IM_MUX1~input_o\ & \ALU0|sub0|stage0|stage0|stage0|Cout~0_combout\))) # (!\IM_MUX2a|Mux30~0_combout\ & ((\ALU0|sub0|stage0|stage0|stage0|Cout~0_combout\) # 
-- ((\Reg_A|Q\(1) & !\IM_MUX1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux30~0_combout\,
	datab => \Reg_A|Q\(1),
	datac => \IM_MUX1~input_o\,
	datad => \ALU0|sub0|stage0|stage0|stage0|Cout~0_combout\,
	combout => \ALU0|sub0|stage0|stage0|stage1|Cout~0_combout\);

-- Location: LCCOMB_X42_Y27_N26
\ALU0|sub0|stage0|stage0|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage0|stage2|s~combout\ = \ALU0|sub0|stage0|stage0|stage1|Cout~0_combout\ $ (\IM_MUX2a|Mux29~0_combout\ $ (((\Reg_A|Q\(2) & !\IM_MUX1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage0|stage1|Cout~0_combout\,
	datab => \IM_MUX2a|Mux29~0_combout\,
	datac => \Reg_A|Q\(2),
	datad => \IM_MUX1~input_o\,
	combout => \ALU0|sub0|stage0|stage0|stage2|s~combout\);

-- Location: LCCOMB_X38_Y27_N24
\A_Mux0|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[1]~1_combout\ = (!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX[1]~input_o\,
	combout => \A_Mux0|f[1]~1_combout\);

-- Location: LCCOMB_X40_Y27_N30
\B_Mux0|f[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[3]~5_combout\ = (\B_MUX~input_o\ & (((\IR|Q\(3))))) # (!\B_MUX~input_o\ & (\DATA_MUX0|Mux28~7_combout\ & ((\A_Mux0|f[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux28~7_combout\,
	datab => \IR|Q\(3),
	datac => \B_MUX~input_o\,
	datad => \A_Mux0|f[1]~1_combout\,
	combout => \B_Mux0|f[3]~5_combout\);

-- Location: FF_X40_Y27_N31
\Reg_B|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[3]~5_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(3));

-- Location: LCCOMB_X40_Y27_N6
\IM_MUX2a|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux28~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(3)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \Reg_B|Q\(3),
	datad => \IR|Q\(3),
	combout => \IM_MUX2a|Mux28~0_combout\);

-- Location: LCCOMB_X42_Y27_N18
\ALU0|sub0|stage0|stage0|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\ = (\IM_MUX2a|Mux29~0_combout\ & (\Reg_A|Q\(2) & (!\IM_MUX1~input_o\ & \ALU0|sub0|stage0|stage0|stage1|Cout~0_combout\))) # (!\IM_MUX2a|Mux29~0_combout\ & ((\ALU0|sub0|stage0|stage0|stage1|Cout~0_combout\) # 
-- ((\Reg_A|Q\(2) & !\IM_MUX1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(2),
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux29~0_combout\,
	datad => \ALU0|sub0|stage0|stage0|stage1|Cout~0_combout\,
	combout => \ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\);

-- Location: LCCOMB_X41_Y28_N30
\DATA_MUX0|Mux27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~10_combout\ = (\ALU_Op[0]~input_o\) # ((\IM_MUX2a|Mux28~0_combout\ & ((!\IM_MUX1a|f[3]~3_combout\) # (!\ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\))) # (!\IM_MUX2a|Mux28~0_combout\ & (!\ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\ & 
-- !\IM_MUX1a|f[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux28~0_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\,
	datad => \IM_MUX1a|f[3]~3_combout\,
	combout => \DATA_MUX0|Mux27~10_combout\);

-- Location: LCCOMB_X40_Y30_N6
\DATA_MUX0|Mux27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~11_combout\ = ((\ALU_Op[0]~input_o\) # ((!\DATA_MUX0|Mux27~10_combout\ & \DATA_MUX0|Mux7~0_combout\))) # (!\ALU_Op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux27~10_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux27~11_combout\);

-- Location: FF_X38_Y27_N19
\IR|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux27~16_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(4));

-- Location: LCCOMB_X40_Y27_N8
\B_Mux0|f[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[4]~6_combout\ = (\B_MUX~input_o\ & ((\IR|Q\(4)))) # (!\B_MUX~input_o\ & (\DATA_MUX0|Mux27~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_MUX~input_o\,
	datac => \DATA_MUX0|Mux27~16_combout\,
	datad => \IR|Q\(4),
	combout => \B_Mux0|f[4]~6_combout\);

-- Location: FF_X40_Y27_N9
\Reg_B|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[4]~6_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(4));

-- Location: LCCOMB_X40_Y27_N10
\IM_MUX2a|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux27~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(4)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \Reg_B|Q\(4),
	datad => \IR|Q\(4),
	combout => \IM_MUX2a|Mux27~0_combout\);

-- Location: LCCOMB_X40_Y30_N22
\DATA_MUX0|Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~8_combout\ = (\ALU_Op[0]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\ & (\IM_MUX1a|f[4]~4_combout\)) # (!\DATA_MUX0|Mux7~0_combout\ & ((\IM_MUX2a|Mux27~0_combout\))))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[4]~4_combout\ $ 
-- ((!\IM_MUX2a|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[4]~4_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX2a|Mux27~0_combout\,
	datad => \DATA_MUX0|Mux7~0_combout\,
	combout => \DATA_MUX0|Mux27~8_combout\);

-- Location: LCCOMB_X40_Y30_N20
\DATA_MUX0|Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~9_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux27~8_combout\ $ (!\ALU_Op[0]~input_o\)))) # (!\ALU_Op[1]~input_o\ & ((\IM_MUX1a|f[4]~4_combout\ & ((\DATA_MUX0|Mux27~8_combout\) # (\ALU_Op[0]~input_o\))) # (!\IM_MUX1a|f[4]~4_combout\ & 
-- (\DATA_MUX0|Mux27~8_combout\ & \ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[4]~4_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_MUX0|Mux27~8_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux27~9_combout\);

-- Location: LCCOMB_X41_Y27_N16
\ALU0|add0|stage0|stage0|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage0|stage2|Cout~0_combout\ = (\IM_MUX2a|Mux29~0_combout\ & ((\ALU0|add0|stage0|stage0|stage1|Cout~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(2))))) # (!\IM_MUX2a|Mux29~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(2) & 
-- \ALU0|add0|stage0|stage0|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(2),
	datac => \IM_MUX2a|Mux29~0_combout\,
	datad => \ALU0|add0|stage0|stage0|stage1|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage0|stage2|Cout~0_combout\);

-- Location: LCCOMB_X40_Y27_N0
\ALU0|add0|stage0|stage0|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage0|stage3|Cout~0_combout\ = (\IM_MUX2a|Mux28~0_combout\ & ((\ALU0|add0|stage0|stage0|stage2|Cout~0_combout\) # ((\Reg_A|Q\(3) & !\IM_MUX1~input_o\)))) # (!\IM_MUX2a|Mux28~0_combout\ & (\Reg_A|Q\(3) & (!\IM_MUX1~input_o\ & 
-- \ALU0|add0|stage0|stage0|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux28~0_combout\,
	datab => \Reg_A|Q\(3),
	datac => \IM_MUX1~input_o\,
	datad => \ALU0|add0|stage0|stage0|stage2|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage0|stage3|Cout~0_combout\);

-- Location: LCCOMB_X40_Y30_N28
\DATA_MUX0|Mux27~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~12_combout\ = \DATA_MUX0|Mux27~9_combout\ $ (((!\DATA_MUX0|Mux27~11_combout\ & ((\ALU0|add0|stage0|stage0|stage3|Cout~0_combout\) # (\DATA_MUX0|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux27~11_combout\,
	datab => \DATA_MUX0|Mux27~9_combout\,
	datac => \ALU0|add0|stage0|stage0|stage3|Cout~0_combout\,
	datad => \DATA_MUX0|Mux7~0_combout\,
	combout => \DATA_MUX0|Mux27~12_combout\);

-- Location: IOIBUF_X40_Y73_N1
\DATA_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(4),
	o => \DATA_IN[4]~input_o\);

-- Location: LCCOMB_X40_Y30_N18
\DATA_MUX0|Mux27~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~13_combout\ = (\DATA_MUX[1]~input_o\ & ((\ALU_Op[1]~input_o\) # ((!\DATA_MUX0|Mux7~0_combout\)))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_IN[4]~input_o\) # (\DATA_MUX0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_IN[4]~input_o\,
	datad => \DATA_MUX0|Mux7~0_combout\,
	combout => \DATA_MUX0|Mux27~13_combout\);

-- Location: LCCOMB_X40_Y27_N24
\ALU0|add0|stage0|stage1|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage1|stage0|Cout~0_combout\ = (\IM_MUX2a|Mux27~0_combout\ & ((\ALU0|add0|stage0|stage0|stage3|Cout~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(4))))) # (!\IM_MUX2a|Mux27~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(4) & 
-- \ALU0|add0|stage0|stage0|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux27~0_combout\,
	datab => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(4),
	datad => \ALU0|add0|stage0|stage0|stage3|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage1|stage0|Cout~0_combout\);

-- Location: LCCOMB_X42_Y27_N8
\DATA_MUX0|Mux26~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux26~17_combout\ = (\Reg_A|Q\(5) & (\IM_MUX1~input_o\ $ (((!\ALU_Op[1]~input_o\) # (!\ALU0|add0|stage0|stage1|stage0|Cout~0_combout\))))) # (!\Reg_A|Q\(5) & (\ALU0|add0|stage0|stage1|stage0|Cout~0_combout\ & (\ALU_Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(5),
	datab => \ALU0|add0|stage0|stage1|stage0|Cout~0_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1~input_o\,
	combout => \DATA_MUX0|Mux26~17_combout\);

-- Location: LCCOMB_X40_Y27_N18
\B_Mux0|f[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[5]~7_combout\ = (\B_MUX~input_o\ & (\IR|Q\(5))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux26~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(5),
	datac => \B_MUX~input_o\,
	datad => \DATA_MUX0|Mux26~16_combout\,
	combout => \B_Mux0|f[5]~7_combout\);

-- Location: FF_X40_Y27_N19
\Reg_B|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[5]~7_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(5));

-- Location: LCCOMB_X40_Y27_N20
\IM_MUX2a|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux26~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\IR|Q\(5))) # (!\IM_MUX2[0]~input_o\ & ((\Reg_B|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \IR|Q\(5),
	datad => \Reg_B|Q\(5),
	combout => \IM_MUX2a|Mux26~0_combout\);

-- Location: LCCOMB_X42_Y27_N22
\DATA_MUX0|Mux26~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux26~13_combout\ = (\IM_MUX2a|Mux26~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux26~17_combout\)))) # (!\IM_MUX2a|Mux26~0_combout\ & (\DATA_MUX0|Mux26~17_combout\ & (\ALU_Op[1]~input_o\ $ (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux26~17_combout\,
	datac => \IM_MUX2a|Mux26~0_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux26~13_combout\);

-- Location: IOIBUF_X52_Y73_N1
\DATA_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(6),
	o => \DATA_IN[6]~input_o\);

-- Location: LCCOMB_X41_Y29_N4
\IM_MUX1a|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[6]~6_combout\ = (\Reg_A|Q\(6) & !\IM_MUX1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_A|Q\(6),
	datad => \IM_MUX1~input_o\,
	combout => \IM_MUX1a|f[6]~6_combout\);

-- Location: FF_X38_Y27_N3
\IR|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux25~8_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(6));

-- Location: LCCOMB_X40_Y27_N28
\B_Mux0|f[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[6]~8_combout\ = (\B_MUX~input_o\ & (((\IR|Q\(6))))) # (!\B_MUX~input_o\ & (\A_Mux0|f[1]~1_combout\ & (\DATA_MUX0|Mux25~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux0|f[1]~1_combout\,
	datab => \B_MUX~input_o\,
	datac => \DATA_MUX0|Mux25~7_combout\,
	datad => \IR|Q\(6),
	combout => \B_Mux0|f[6]~8_combout\);

-- Location: FF_X40_Y27_N29
\Reg_B|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[6]~8_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(6));

-- Location: LCCOMB_X40_Y27_N2
\IM_MUX2a|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux25~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(6)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \Reg_B|Q\(6),
	datac => \IM_MUX2[0]~input_o\,
	datad => \IR|Q\(6),
	combout => \IM_MUX2a|Mux25~0_combout\);

-- Location: LCCOMB_X41_Y26_N6
\DATA_MUX0|Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux25~9_combout\ = (\ALU_Op[1]~input_o\ & (\IM_MUX2a|Mux25~0_combout\ $ (((!\IM_MUX1~input_o\ & \Reg_A|Q\(6)))))) # (!\ALU_Op[1]~input_o\ & (!\IM_MUX1~input_o\ & (\IM_MUX2a|Mux25~0_combout\ & \Reg_A|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux25~0_combout\,
	datad => \Reg_A|Q\(6),
	combout => \DATA_MUX0|Mux25~9_combout\);

-- Location: LCCOMB_X40_Y27_N12
\ALU0|add0|stage0|stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage1|stage1|Cout~0_combout\ = (\IM_MUX2a|Mux26~0_combout\ & ((\ALU0|add0|stage0|stage1|stage0|Cout~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(5))))) # (!\IM_MUX2a|Mux26~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(5) & 
-- \ALU0|add0|stage0|stage1|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \IM_MUX2a|Mux26~0_combout\,
	datac => \Reg_A|Q\(5),
	datad => \ALU0|add0|stage0|stage1|stage0|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X41_Y26_N26
\DATA_MUX0|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux25~2_combout\ = (\ALU_Op[0]~input_o\ & (((\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (\DATA_MUX0|Mux25~9_combout\ $ (((\ALU0|add0|stage0|stage1|stage1|Cout~0_combout\ & \ALU_Op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux25~9_combout\,
	datab => \ALU0|add0|stage0|stage1|stage1|Cout~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux25~2_combout\);

-- Location: LCCOMB_X41_Y26_N16
\DATA_MUX0|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux25~3_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux25~0_combout\) # ((\IM_MUX1a|f[6]~6_combout\ & !\DATA_MUX0|Mux25~2_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\DATA_MUX0|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX1a|f[6]~6_combout\,
	datac => \IM_MUX2a|Mux25~0_combout\,
	datad => \DATA_MUX0|Mux25~2_combout\,
	combout => \DATA_MUX0|Mux25~3_combout\);

-- Location: LCCOMB_X41_Y26_N2
\DATA_MUX0|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux25~4_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\)))) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux25~3_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_IN[6]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux25~3_combout\,
	combout => \DATA_MUX0|Mux25~4_combout\);

-- Location: LCCOMB_X42_Y27_N24
\IM_MUX1a|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[5]~5_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(5),
	combout => \IM_MUX1a|f[5]~5_combout\);

-- Location: IOIBUF_X0_Y27_N15
\DATA_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(7),
	o => \DATA_IN[7]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\mClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mClk,
	o => \mClk~input_o\);

-- Location: CLKCTRL_G4
\mClk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mClk~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y27_N26
\Data_Mem0|DATAMEM~41feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~41feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Data_Mem0|DATAMEM~41feeder_combout\);

-- Location: FF_X38_Y27_N27
\Data_Mem0|DATAMEM~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~41feeder_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~41_q\);

-- Location: IOIBUF_X0_Y62_N15
\WEN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WEN,
	o => \WEN~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X40_Y30_N24
\Data_Mem0|data_out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out[2]~0_combout\ = (\WEN~input_o\) # (!\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WEN~input_o\,
	datad => \EN~input_o\,
	combout => \Data_Mem0|data_out[2]~0_combout\);

-- Location: LCCOMB_X40_Y30_N14
\Data_Mem0|DATAMEM~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~74_combout\ = (\WEN~input_o\ & \EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WEN~input_o\,
	datad => \EN~input_o\,
	combout => \Data_Mem0|DATAMEM~74_combout\);

-- Location: IOIBUF_X33_Y0_N8
\REG_MUX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_MUX,
	o => \REG_MUX~input_o\);

-- Location: LCCOMB_X39_Y28_N6
\Reg_Mux0|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[0]~0_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(0)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_A|Q\(0),
	datac => \REG_MUX~input_o\,
	datad => \Reg_B|Q\(0),
	combout => \Reg_Mux0|f[0]~0_combout\);

-- Location: FF_X38_Y27_N29
\IR|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux24~7_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(7));

-- Location: LCCOMB_X39_Y28_N12
\Reg_Mux0|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[1]~1_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(1))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(1),
	datad => \Reg_A|Q\(1),
	combout => \Reg_Mux0|f[1]~1_combout\);

-- Location: LCCOMB_X41_Y27_N24
\Reg_Mux0|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[2]~2_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(2)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_MUX~input_o\,
	datab => \Reg_A|Q\(2),
	datad => \Reg_B|Q\(2),
	combout => \Reg_Mux0|f[2]~2_combout\);

-- Location: LCCOMB_X36_Y27_N0
\Reg_Mux0|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[3]~3_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(3))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(3),
	datad => \Reg_A|Q\(3),
	combout => \Reg_Mux0|f[3]~3_combout\);

-- Location: LCCOMB_X38_Y28_N24
\Reg_Mux0|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[4]~4_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(4)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_A|Q\(4),
	datad => \Reg_B|Q\(4),
	combout => \Reg_Mux0|f[4]~4_combout\);

-- Location: LCCOMB_X36_Y27_N30
\Reg_Mux0|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[5]~5_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(5))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(5),
	datad => \Reg_A|Q\(5),
	combout => \Reg_Mux0|f[5]~5_combout\);

-- Location: LCCOMB_X41_Y26_N8
\Reg_Mux0|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[6]~6_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(6))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(6),
	datad => \Reg_A|Q\(6),
	combout => \Reg_Mux0|f[6]~6_combout\);

-- Location: LCCOMB_X39_Y27_N4
\B_Mux0|f[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[7]~9_combout\ = (\B_MUX~input_o\ & (\IR|Q\(7))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux24~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(7),
	datac => \B_MUX~input_o\,
	datad => \DATA_MUX0|Mux24~7_combout\,
	combout => \B_Mux0|f[7]~9_combout\);

-- Location: FF_X39_Y27_N5
\Reg_B|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[7]~9_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(7));

-- Location: LCCOMB_X39_Y28_N2
\Reg_Mux0|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[7]~7_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(7)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_A|Q\(7),
	datac => \REG_MUX~input_o\,
	datad => \Reg_B|Q\(7),
	combout => \Reg_Mux0|f[7]~7_combout\);

-- Location: LCCOMB_X42_Y29_N0
\A_Mux0|f[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[8]~9_combout\ = (\A_MUX~input_o\ & (\IR|Q\(8))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux23~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(8),
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux23~10_combout\,
	combout => \A_Mux0|f[8]~9_combout\);

-- Location: IOIBUF_X58_Y0_N15
\Clr_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_A,
	o => \Clr_A~input_o\);

-- Location: CLKCTRL_G19
\Clr_A~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_A~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_A~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y0_N1
\Ld_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_A,
	o => \Ld_A~input_o\);

-- Location: FF_X42_Y29_N1
\Reg_A|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[8]~9_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(8));

-- Location: LCCOMB_X42_Y29_N28
\IM_MUX1a|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[8]~8_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(8),
	combout => \IM_MUX1a|f[8]~8_combout\);

-- Location: IOIBUF_X54_Y0_N1
\DATA_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(9),
	o => \DATA_IN[9]~input_o\);

-- Location: LCCOMB_X42_Y28_N16
\DATA_MUX0|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~5_combout\ = (\DATA_MUX[1]~input_o\ & (\ALU_Op[0]~input_o\)) # (!\DATA_MUX[1]~input_o\ & ((\DATA_IN[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datad => \DATA_IN[9]~input_o\,
	combout => \DATA_MUX0|Mux22~5_combout\);

-- Location: LCCOMB_X42_Y28_N28
\IM_MUX2a|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux23~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(8)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \Reg_B|Q\(8),
	datac => \IM_MUX2[0]~input_o\,
	datad => \IR|Q\(8),
	combout => \IM_MUX2a|Mux23~0_combout\);

-- Location: LCCOMB_X39_Y27_N22
\IM_MUX2a|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux24~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(7)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \Reg_B|Q\(7),
	datad => \IR|Q\(7),
	combout => \IM_MUX2a|Mux24~0_combout\);

-- Location: LCCOMB_X41_Y29_N8
\ALU0|sub0|stage0|stage1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage1|stage3|Cout~0_combout\ = (!\IM_MUX1~input_o\ & (!\IM_MUX2a|Mux24~0_combout\ & \Reg_A|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux24~0_combout\,
	datad => \Reg_A|Q\(7),
	combout => \ALU0|sub0|stage0|stage1|stage3|Cout~0_combout\);

-- Location: LCCOMB_X41_Y29_N26
\ALU0|sub0|stage0|stage1|stage3|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage1|stage3|Cout~1_combout\ = ((!\IM_MUX1~input_o\ & \Reg_A|Q\(7))) # (!\IM_MUX2a|Mux24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux24~0_combout\,
	datad => \Reg_A|Q\(7),
	combout => \ALU0|sub0|stage0|stage1|stage3|Cout~1_combout\);

-- Location: LCCOMB_X41_Y27_N26
\ALU0|sub0|stage0|stage1|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage1|stage0|Cout~0_combout\ = (!\IM_MUX1~input_o\ & (\Reg_A|Q\(4) & !\IM_MUX2a|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(4),
	datad => \IM_MUX2a|Mux27~0_combout\,
	combout => \ALU0|sub0|stage0|stage1|stage0|Cout~0_combout\);

-- Location: LCCOMB_X40_Y27_N14
\ALU0|sub0|stage0|stage1|stage0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage1|stage0|Cout~1_combout\ = ((!\IM_MUX1~input_o\ & \Reg_A|Q\(4))) # (!\IM_MUX2a|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(4),
	datad => \IM_MUX2a|Mux27~0_combout\,
	combout => \ALU0|sub0|stage0|stage1|stage0|Cout~1_combout\);

-- Location: LCCOMB_X42_Y27_N10
\ALU0|sub0|stage0|stage1|stage0|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage1|stage0|Cout~2_combout\ = (\ALU0|sub0|stage0|stage1|stage0|Cout~1_combout\ & ((\IM_MUX2a|Mux28~0_combout\ & (\IM_MUX1a|f[3]~3_combout\ & \ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\)) # (!\IM_MUX2a|Mux28~0_combout\ & 
-- ((\IM_MUX1a|f[3]~3_combout\) # (\ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux28~0_combout\,
	datab => \IM_MUX1a|f[3]~3_combout\,
	datac => \ALU0|sub0|stage0|stage1|stage0|Cout~1_combout\,
	datad => \ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\,
	combout => \ALU0|sub0|stage0|stage1|stage0|Cout~2_combout\);

-- Location: LCCOMB_X42_Y27_N30
\ALU0|sub0|stage0|stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\ = (\IM_MUX1a|f[5]~5_combout\ & ((\ALU0|sub0|stage0|stage1|stage0|Cout~0_combout\) # ((\ALU0|sub0|stage0|stage1|stage0|Cout~2_combout\) # (!\IM_MUX2a|Mux26~0_combout\)))) # (!\IM_MUX1a|f[5]~5_combout\ & 
-- (!\IM_MUX2a|Mux26~0_combout\ & ((\ALU0|sub0|stage0|stage1|stage0|Cout~0_combout\) # (\ALU0|sub0|stage0|stage1|stage0|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage1|stage0|Cout~0_combout\,
	datab => \IM_MUX1a|f[5]~5_combout\,
	datac => \IM_MUX2a|Mux26~0_combout\,
	datad => \ALU0|sub0|stage0|stage1|stage0|Cout~2_combout\,
	combout => \ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X41_Y29_N0
\ALU0|sub0|stage0|stage1|stage3|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage1|stage3|Cout~2_combout\ = (\ALU0|sub0|stage0|stage1|stage3|Cout~1_combout\ & ((\IM_MUX2a|Mux25~0_combout\ & (\IM_MUX1a|f[6]~6_combout\ & \ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\)) # (!\IM_MUX2a|Mux25~0_combout\ & 
-- ((\IM_MUX1a|f[6]~6_combout\) # (\ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux25~0_combout\,
	datab => \IM_MUX1a|f[6]~6_combout\,
	datac => \ALU0|sub0|stage0|stage1|stage3|Cout~1_combout\,
	datad => \ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\,
	combout => \ALU0|sub0|stage0|stage1|stage3|Cout~2_combout\);

-- Location: LCCOMB_X41_Y29_N24
\ALU0|sub0|stage0|stage2|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage2|stage0|Cout~0_combout\ = (\IM_MUX2a|Mux23~0_combout\ & (\IM_MUX1a|f[8]~8_combout\ & ((\ALU0|sub0|stage0|stage1|stage3|Cout~0_combout\) # (\ALU0|sub0|stage0|stage1|stage3|Cout~2_combout\)))) # (!\IM_MUX2a|Mux23~0_combout\ & 
-- ((\IM_MUX1a|f[8]~8_combout\) # ((\ALU0|sub0|stage0|stage1|stage3|Cout~0_combout\) # (\ALU0|sub0|stage0|stage1|stage3|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux23~0_combout\,
	datab => \IM_MUX1a|f[8]~8_combout\,
	datac => \ALU0|sub0|stage0|stage1|stage3|Cout~0_combout\,
	datad => \ALU0|sub0|stage0|stage1|stage3|Cout~2_combout\,
	combout => \ALU0|sub0|stage0|stage2|stage0|Cout~0_combout\);

-- Location: LCCOMB_X41_Y29_N20
\B_Mux0|f[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[9]~11_combout\ = (\B_MUX~input_o\ & (\IR|Q\(9))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux22~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(9),
	datac => \B_MUX~input_o\,
	datad => \DATA_MUX0|Mux22~12_combout\,
	combout => \B_Mux0|f[9]~11_combout\);

-- Location: FF_X41_Y29_N21
\Reg_B|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[9]~11_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(9));

-- Location: LCCOMB_X41_Y29_N22
\IM_MUX2a|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux22~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\IR|Q\(9))) # (!\IM_MUX2[0]~input_o\ & ((\Reg_B|Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \IR|Q\(9),
	datad => \Reg_B|Q\(9),
	combout => \IM_MUX2a|Mux22~0_combout\);

-- Location: LCCOMB_X42_Y29_N24
\DATA_MUX0|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~4_combout\ = (\IM_MUX1a|f[9]~9_combout\ & ((\IM_MUX2a|Mux22~0_combout\) # ((\ALU_Op[0]~input_o\ & !\ALU_Op[1]~input_o\)))) # (!\IM_MUX1a|f[9]~9_combout\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux22~0_combout\))) # (!\ALU_Op[0]~input_o\ & 
-- (\ALU_Op[1]~input_o\ & !\IM_MUX2a|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[9]~9_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX2a|Mux22~0_combout\,
	combout => \DATA_MUX0|Mux22~4_combout\);

-- Location: LCCOMB_X42_Y29_N8
\DATA_MUX0|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~7_combout\ = (\ALU_Op[1]~input_o\ & (\ALU0|sub0|stage0|stage2|stage0|Cout~0_combout\ $ (((\DATA_MUX0|Mux22~4_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\IM_MUX1a|f[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage2|stage0|Cout~0_combout\,
	datab => \IM_MUX1a|f[8]~8_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \DATA_MUX0|Mux22~4_combout\,
	combout => \DATA_MUX0|Mux22~7_combout\);

-- Location: IOIBUF_X0_Y53_N8
\DATA_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(10),
	o => \DATA_IN[10]~input_o\);

-- Location: LCCOMB_X39_Y30_N16
\B_Mux0|f[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[10]~12_combout\ = (\B_MUX~input_o\ & (\IR|Q\(10))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux21~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(10),
	datac => \B_MUX~input_o\,
	datad => \DATA_MUX0|Mux21~11_combout\,
	combout => \B_Mux0|f[10]~12_combout\);

-- Location: FF_X39_Y30_N17
\Reg_B|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[10]~12_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(10));

-- Location: LCCOMB_X39_Y30_N8
\IM_MUX2a|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux21~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(10)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \Reg_B|Q\(10),
	datac => \IM_MUX2[0]~input_o\,
	datad => \IR|Q\(10),
	combout => \IM_MUX2a|Mux21~0_combout\);

-- Location: LCCOMB_X39_Y30_N12
\DATA_MUX0|Mux21~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux21~12_combout\ = (\IM_MUX1~input_o\ & (\IM_MUX2a|Mux21~0_combout\ & ((!\ALU_Op[0]~input_o\)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(10) $ (((\IM_MUX2a|Mux21~0_combout\ & !\ALU_Op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \IM_MUX2a|Mux21~0_combout\,
	datac => \Reg_A|Q\(10),
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux21~12_combout\);

-- Location: LCCOMB_X40_Y27_N22
\ALU0|add0|stage0|stage1|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage1|stage2|Cout~0_combout\ = (\IM_MUX2a|Mux25~0_combout\ & ((\ALU0|add0|stage0|stage1|stage1|Cout~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(6))))) # (!\IM_MUX2a|Mux25~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(6) & 
-- \ALU0|add0|stage0|stage1|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \IM_MUX2a|Mux25~0_combout\,
	datac => \Reg_A|Q\(6),
	datad => \ALU0|add0|stage0|stage1|stage1|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage1|stage2|Cout~0_combout\);

-- Location: LCCOMB_X39_Y27_N28
\ALU0|add0|stage0|stage1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage1|stage3|Cout~0_combout\ = (\IM_MUX2a|Mux24~0_combout\ & ((\ALU0|add0|stage0|stage1|stage2|Cout~0_combout\) # ((\Reg_A|Q\(7) & !\IM_MUX1~input_o\)))) # (!\IM_MUX2a|Mux24~0_combout\ & (\Reg_A|Q\(7) & (!\IM_MUX1~input_o\ & 
-- \ALU0|add0|stage0|stage1|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(7),
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux24~0_combout\,
	datad => \ALU0|add0|stage0|stage1|stage2|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage1|stage3|Cout~0_combout\);

-- Location: LCCOMB_X39_Y27_N2
\ALU0|add0|stage0|stage2|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage2|stage0|Cout~0_combout\ = (\IM_MUX2a|Mux23~0_combout\ & ((\ALU0|add0|stage0|stage1|stage3|Cout~0_combout\) # ((\Reg_A|Q\(8) & !\IM_MUX1~input_o\)))) # (!\IM_MUX2a|Mux23~0_combout\ & (\Reg_A|Q\(8) & (!\IM_MUX1~input_o\ & 
-- \ALU0|add0|stage0|stage1|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(8),
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux23~0_combout\,
	datad => \ALU0|add0|stage0|stage1|stage3|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage2|stage0|Cout~0_combout\);

-- Location: LCCOMB_X39_Y27_N12
\ALU0|add0|stage0|stage2|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage2|stage1|Cout~0_combout\ = (\IM_MUX2a|Mux22~0_combout\ & ((\ALU0|add0|stage0|stage2|stage0|Cout~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(9))))) # (!\IM_MUX2a|Mux22~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(9) & 
-- \ALU0|add0|stage0|stage2|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux22~0_combout\,
	datab => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(9),
	datad => \ALU0|add0|stage0|stage2|stage0|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage2|stage1|Cout~0_combout\);

-- Location: LCCOMB_X39_Y30_N22
\DATA_MUX0|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux21~6_combout\ = (\ALU_Op[0]~input_o\) # (\DATA_MUX0|Mux21~12_combout\ $ (((\ALU0|add0|stage0|stage2|stage1|Cout~0_combout\) # (!\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux21~12_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU0|add0|stage0|stage2|stage1|Cout~0_combout\,
	combout => \DATA_MUX0|Mux21~6_combout\);

-- Location: LCCOMB_X39_Y30_N18
\IM_MUX1a|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[10]~10_combout\ = (\Reg_A|Q\(10) & !\IM_MUX1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_A|Q\(10),
	datad => \IM_MUX1~input_o\,
	combout => \IM_MUX1a|f[10]~10_combout\);

-- Location: LCCOMB_X39_Y29_N24
\B_Mux0|f[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[11]~13_combout\ = (\B_MUX~input_o\ & (\IR|Q\(11))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux20~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(11),
	datac => \DATA_MUX0|Mux20~12_combout\,
	datad => \B_MUX~input_o\,
	combout => \B_Mux0|f[11]~13_combout\);

-- Location: FF_X39_Y29_N25
\Reg_B|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[11]~13_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(11));

-- Location: LCCOMB_X39_Y29_N2
\IM_MUX2a|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux20~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\IR|Q\(11))) # (!\IM_MUX2[0]~input_o\ & ((\Reg_B|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \IR|Q\(11),
	datad => \Reg_B|Q\(11),
	combout => \IM_MUX2a|Mux20~0_combout\);

-- Location: LCCOMB_X39_Y30_N4
\DATA_MUX0|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~4_combout\ = (\IM_MUX1a|f[11]~11_combout\ & ((\IM_MUX2a|Mux20~0_combout\) # ((\ALU_Op[0]~input_o\ & !\ALU_Op[1]~input_o\)))) # (!\IM_MUX1a|f[11]~11_combout\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux20~0_combout\))) # (!\ALU_Op[0]~input_o\ 
-- & (\ALU_Op[1]~input_o\ & !\IM_MUX2a|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[11]~11_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX2a|Mux20~0_combout\,
	combout => \DATA_MUX0|Mux20~4_combout\);

-- Location: LCCOMB_X41_Y29_N10
\ALU0|sub0|stage0|stage2|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage2|stage1|Cout~0_combout\ = (\IM_MUX2a|Mux22~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(9) & \ALU0|sub0|stage0|stage2|stage0|Cout~0_combout\))) # (!\IM_MUX2a|Mux22~0_combout\ & ((\ALU0|sub0|stage0|stage2|stage0|Cout~0_combout\) # 
-- ((!\IM_MUX1~input_o\ & \Reg_A|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(9),
	datac => \IM_MUX2a|Mux22~0_combout\,
	datad => \ALU0|sub0|stage0|stage2|stage0|Cout~0_combout\,
	combout => \ALU0|sub0|stage0|stage2|stage1|Cout~0_combout\);

-- Location: LCCOMB_X41_Y29_N16
\ALU0|sub0|stage0|stage2|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage2|stage2|Cout~0_combout\ = (\IM_MUX2a|Mux21~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(10) & \ALU0|sub0|stage0|stage2|stage1|Cout~0_combout\))) # (!\IM_MUX2a|Mux21~0_combout\ & ((\ALU0|sub0|stage0|stage2|stage1|Cout~0_combout\) # 
-- ((!\IM_MUX1~input_o\ & \Reg_A|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \IM_MUX2a|Mux21~0_combout\,
	datac => \Reg_A|Q\(10),
	datad => \ALU0|sub0|stage0|stage2|stage1|Cout~0_combout\,
	combout => \ALU0|sub0|stage0|stage2|stage2|Cout~0_combout\);

-- Location: LCCOMB_X40_Y30_N4
\DATA_MUX0|Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~7_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux20~4_combout\ $ (\ALU0|sub0|stage0|stage2|stage2|Cout~0_combout\)))) # (!\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[10]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[10]~10_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_MUX0|Mux20~4_combout\,
	datad => \ALU0|sub0|stage0|stage2|stage2|Cout~0_combout\,
	combout => \DATA_MUX0|Mux20~7_combout\);

-- Location: IOIBUF_X69_Y0_N1
\DATA_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(11),
	o => \DATA_IN[11]~input_o\);

-- Location: LCCOMB_X40_Y30_N10
\DATA_MUX0|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~5_combout\ = (\DATA_MUX[1]~input_o\ & (\ALU_Op[0]~input_o\)) # (!\DATA_MUX[1]~input_o\ & ((\DATA_IN[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datad => \DATA_IN[11]~input_o\,
	combout => \DATA_MUX0|Mux20~5_combout\);

-- Location: IOIBUF_X74_Y0_N8
\DATA_IN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(12),
	o => \DATA_IN[12]~input_o\);

-- Location: LCCOMB_X38_Y30_N8
\B_Mux0|f[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[12]~14_combout\ = (\B_MUX~input_o\ & (\IR|Q\(12))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux19~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(12),
	datac => \B_MUX~input_o\,
	datad => \DATA_MUX0|Mux19~11_combout\,
	combout => \B_Mux0|f[12]~14_combout\);

-- Location: FF_X38_Y30_N9
\Reg_B|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[12]~14_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(12));

-- Location: LCCOMB_X38_Y30_N14
\IM_MUX2a|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux19~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(12)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \Reg_B|Q\(12),
	datad => \IR|Q\(12),
	combout => \IM_MUX2a|Mux19~0_combout\);

-- Location: LCCOMB_X38_Y30_N28
\IM_MUX1a|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[12]~12_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(12),
	combout => \IM_MUX1a|f[12]~12_combout\);

-- Location: LCCOMB_X38_Y30_N26
\DATA_MUX0|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux19~7_combout\ = (\IM_MUX2a|Mux19~0_combout\) # ((\ALU_Op[1]~input_o\ & (!\ALU_Op[0]~input_o\)) # (!\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\ & \IM_MUX1a|f[12]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX2a|Mux19~0_combout\,
	datad => \IM_MUX1a|f[12]~12_combout\,
	combout => \DATA_MUX0|Mux19~7_combout\);

-- Location: LCCOMB_X38_Y30_N0
\DATA_MUX0|Mux19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux19~12_combout\ = (\IM_MUX1~input_o\ & (!\ALU_Op[0]~input_o\ & (\IM_MUX2a|Mux19~0_combout\))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(12) $ (((!\ALU_Op[0]~input_o\ & \IM_MUX2a|Mux19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX2a|Mux19~0_combout\,
	datad => \Reg_A|Q\(12),
	combout => \DATA_MUX0|Mux19~12_combout\);

-- Location: LCCOMB_X39_Y27_N26
\ALU0|add0|stage0|stage2|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage2|stage2|Cout~0_combout\ = (\IM_MUX2a|Mux21~0_combout\ & ((\ALU0|add0|stage0|stage2|stage1|Cout~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(10))))) # (!\IM_MUX2a|Mux21~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(10) & 
-- \ALU0|add0|stage0|stage2|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux21~0_combout\,
	datab => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(10),
	datad => \ALU0|add0|stage0|stage2|stage1|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage2|stage2|Cout~0_combout\);

-- Location: LCCOMB_X39_Y27_N16
\ALU0|add0|stage0|stage2|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage2|stage3|Cout~0_combout\ = (\ALU0|add0|stage0|stage2|stage2|Cout~0_combout\ & ((\IM_MUX2a|Mux20~0_combout\) # ((\Reg_A|Q\(11) & !\IM_MUX1~input_o\)))) # (!\ALU0|add0|stage0|stage2|stage2|Cout~0_combout\ & (\Reg_A|Q\(11) & 
-- (!\IM_MUX1~input_o\ & \IM_MUX2a|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(11),
	datab => \IM_MUX1~input_o\,
	datac => \ALU0|add0|stage0|stage2|stage2|Cout~0_combout\,
	datad => \IM_MUX2a|Mux20~0_combout\,
	combout => \ALU0|add0|stage0|stage2|stage3|Cout~0_combout\);

-- Location: LCCOMB_X38_Y30_N4
\DATA_MUX0|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux19~6_combout\ = (\ALU_Op[0]~input_o\) # (\DATA_MUX0|Mux19~12_combout\ $ (((\ALU0|add0|stage0|stage2|stage3|Cout~0_combout\) # (!\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux19~12_combout\,
	datac => \ALU0|add0|stage0|stage2|stage3|Cout~0_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux19~6_combout\);

-- Location: LCCOMB_X40_Y26_N24
\DATA_MUX0|Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux18~9_combout\ = (\ALU_Op[0]~input_o\ & (!\ALU_Op[1]~input_o\ & \IM_MUX1a|f[13]~13_combout\)) # (!\ALU_Op[0]~input_o\ & (\ALU_Op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[13]~13_combout\,
	combout => \DATA_MUX0|Mux18~9_combout\);

-- Location: LCCOMB_X42_Y28_N26
\B_Mux0|f[13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[13]~15_combout\ = (\B_MUX~input_o\ & (\IR|Q\(13))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux18~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(13),
	datac => \DATA_MUX0|Mux18~7_combout\,
	datad => \B_MUX~input_o\,
	combout => \B_Mux0|f[13]~15_combout\);

-- Location: FF_X42_Y28_N27
\Reg_B|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[13]~15_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(13));

-- Location: LCCOMB_X42_Y28_N22
\IM_MUX2a|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux18~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(13)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \Reg_B|Q\(13),
	datad => \IR|Q\(13),
	combout => \IM_MUX2a|Mux18~0_combout\);

-- Location: LCCOMB_X39_Y27_N10
\ALU0|add0|stage0|stage3|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage3|stage0|Cout~0_combout\ = (\IM_MUX2a|Mux19~0_combout\ & ((\ALU0|add0|stage0|stage2|stage3|Cout~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(12))))) # (!\IM_MUX2a|Mux19~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(12) & 
-- \ALU0|add0|stage0|stage2|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux19~0_combout\,
	datab => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(12),
	datad => \ALU0|add0|stage0|stage2|stage3|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage3|stage0|Cout~0_combout\);

-- Location: LCCOMB_X40_Y28_N22
\DATA_MUX0|Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux18~8_combout\ = (\Reg_A|Q\(13) & (\IM_MUX1~input_o\ $ (((!\ALU0|add0|stage0|stage3|stage0|Cout~0_combout\) # (!\ALU_Op[1]~input_o\))))) # (!\Reg_A|Q\(13) & (\ALU_Op[1]~input_o\ & ((\ALU0|add0|stage0|stage3|stage0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(13),
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1~input_o\,
	datad => \ALU0|add0|stage0|stage3|stage0|Cout~0_combout\,
	combout => \DATA_MUX0|Mux18~8_combout\);

-- Location: LCCOMB_X41_Y28_N2
\DATA_MUX0|Mux18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux18~10_combout\ = (\DATA_MUX0|Mux18~9_combout\ & ((\ALU_Op[0]~input_o\) # (\IM_MUX2a|Mux18~0_combout\ $ (\DATA_MUX0|Mux18~8_combout\)))) # (!\DATA_MUX0|Mux18~9_combout\ & (\IM_MUX2a|Mux18~0_combout\ & ((\ALU_Op[0]~input_o\) # 
-- (\DATA_MUX0|Mux18~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux18~9_combout\,
	datab => \IM_MUX2a|Mux18~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \DATA_MUX0|Mux18~8_combout\,
	combout => \DATA_MUX0|Mux18~10_combout\);

-- Location: IOIBUF_X0_Y59_N15
\DATA_IN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(13),
	o => \DATA_IN[13]~input_o\);

-- Location: LCCOMB_X38_Y28_N18
\Reg_Mux0|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[9]~9_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(9))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(9),
	datad => \Reg_A|Q\(9),
	combout => \Reg_Mux0|f[9]~9_combout\);

-- Location: LCCOMB_X38_Y28_N28
\Reg_Mux0|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[10]~10_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(10))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(10),
	datad => \Reg_A|Q\(10),
	combout => \Reg_Mux0|f[10]~10_combout\);

-- Location: LCCOMB_X38_Y28_N30
\Reg_Mux0|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[11]~11_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(11)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_A|Q\(11),
	datad => \Reg_B|Q\(11),
	combout => \Reg_Mux0|f[11]~11_combout\);

-- Location: LCCOMB_X38_Y28_N20
\Reg_Mux0|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[12]~12_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(12))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(12),
	datad => \Reg_A|Q\(12),
	combout => \Reg_Mux0|f[12]~12_combout\);

-- Location: LCCOMB_X38_Y28_N10
\Reg_Mux0|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[13]~13_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(13))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(13),
	datad => \Reg_A|Q\(13),
	combout => \Reg_Mux0|f[13]~13_combout\);

-- Location: IOIBUF_X0_Y9_N15
\DATA_IN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(14),
	o => \DATA_IN[14]~input_o\);

-- Location: LCCOMB_X38_Y26_N0
\B_Mux0|f[14]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[14]~16_combout\ = (\B_MUX~input_o\ & (\IR|Q\(14))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux17~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datac => \IR|Q\(14),
	datad => \DATA_MUX0|Mux17~18_combout\,
	combout => \B_Mux0|f[14]~16_combout\);

-- Location: FF_X38_Y26_N1
\Reg_B|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[14]~16_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(14));

-- Location: LCCOMB_X38_Y26_N4
\IM_MUX2a|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux17~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\IR|Q\(14))) # (!\IM_MUX2[0]~input_o\ & ((\Reg_B|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \IR|Q\(14),
	datad => \Reg_B|Q\(14),
	combout => \IM_MUX2a|Mux17~0_combout\);

-- Location: LCCOMB_X36_Y29_N16
\IM_MUX1a|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[14]~14_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(14),
	combout => \IM_MUX1a|f[14]~14_combout\);

-- Location: LCCOMB_X40_Y29_N28
\DATA_MUX0|Mux17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~13_combout\ = (\IM_MUX2a|Mux17~0_combout\) # ((\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[14]~14_combout\ & !\ALU_Op[1]~input_o\)) # (!\ALU_Op[0]~input_o\ & ((\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux17~0_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX1a|f[14]~14_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux17~13_combout\);

-- Location: LCCOMB_X36_Y29_N18
\DATA_MUX0|Mux17~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~19_combout\ = (\IM_MUX2a|Mux17~0_combout\ & (\ALU_Op[0]~input_o\ $ (((\IM_MUX1~input_o\) # (!\Reg_A|Q\(14)))))) # (!\IM_MUX2a|Mux17~0_combout\ & (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux17~0_combout\,
	datab => \IM_MUX1~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \Reg_A|Q\(14),
	combout => \DATA_MUX0|Mux17~19_combout\);

-- Location: LCCOMB_X39_Y27_N20
\ALU0|add0|stage0|stage3|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage3|stage1|Cout~0_combout\ = (\IM_MUX2a|Mux18~0_combout\ & ((\ALU0|add0|stage0|stage3|stage0|Cout~0_combout\) # ((\Reg_A|Q\(13) & !\IM_MUX1~input_o\)))) # (!\IM_MUX2a|Mux18~0_combout\ & (\Reg_A|Q\(13) & (!\IM_MUX1~input_o\ & 
-- \ALU0|add0|stage0|stage3|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(13),
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux18~0_combout\,
	datad => \ALU0|add0|stage0|stage3|stage0|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage3|stage1|Cout~0_combout\);

-- Location: LCCOMB_X40_Y29_N22
\DATA_MUX0|Mux17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~12_combout\ = (\ALU_Op[0]~input_o\) # (\DATA_MUX0|Mux17~19_combout\ $ (((\ALU0|add0|stage0|stage3|stage1|Cout~0_combout\) # (!\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux17~19_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU0|add0|stage0|stage3|stage1|Cout~0_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux17~12_combout\);

-- Location: IOIBUF_X0_Y53_N1
\DATA_IN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(15),
	o => \DATA_IN[15]~input_o\);

-- Location: LCCOMB_X36_Y30_N22
\B_Mux0|f[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[15]~17_combout\ = (\B_MUX~input_o\ & (\IR|Q\(15))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux16~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(15),
	datac => \B_MUX~input_o\,
	datad => \DATA_MUX0|Mux16~11_combout\,
	combout => \B_Mux0|f[15]~17_combout\);

-- Location: FF_X36_Y30_N23
\Reg_B|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[15]~17_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(15));

-- Location: LCCOMB_X36_Y30_N14
\IM_MUX2a|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux16~0_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\IR|Q\(15)))) # (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \Reg_B|Q\(15),
	datad => \IR|Q\(15),
	combout => \IM_MUX2a|Mux16~0_combout\);

-- Location: LCCOMB_X36_Y30_N28
\IM_MUX1a|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[15]~15_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(15),
	combout => \IM_MUX1a|f[15]~15_combout\);

-- Location: LCCOMB_X36_Y30_N6
\DATA_MUX0|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux16~7_combout\ = (\IM_MUX2a|Mux16~0_combout\) # ((\ALU_Op[1]~input_o\ & (!\ALU_Op[0]~input_o\)) # (!\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\ & \IM_MUX1a|f[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX2a|Mux16~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \IM_MUX1a|f[15]~15_combout\,
	combout => \DATA_MUX0|Mux16~7_combout\);

-- Location: LCCOMB_X39_Y29_N30
\B_Mux0|f[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[17]~20_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux14~3_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \B_MUX~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux14~3_combout\,
	combout => \B_Mux0|f[17]~20_combout\);

-- Location: FF_X39_Y29_N31
\Reg_B|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[17]~20_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(17));

-- Location: LCCOMB_X38_Y29_N0
\IM_MUX2a|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux14~0_combout\ = (!\IM_MUX2[1]~input_o\ & (\Reg_B|Q\(17) & !\IM_MUX2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2[1]~input_o\,
	datac => \Reg_B|Q\(17),
	datad => \IM_MUX2[0]~input_o\,
	combout => \IM_MUX2a|Mux14~0_combout\);

-- Location: LCCOMB_X38_Y29_N20
\DATA_MUX0|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux14~5_combout\ = (\IM_MUX2a|Mux14~0_combout\ & ((\ALU_Op[0]~input_o\) # (\IM_MUX1a|f[17]~17_combout\ $ (\ALU_Op[1]~input_o\)))) # (!\IM_MUX2a|Mux14~0_combout\ & (\IM_MUX1a|f[17]~17_combout\ & (\ALU_Op[0]~input_o\ $ (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX2a|Mux14~0_combout\,
	datac => \IM_MUX1a|f[17]~17_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux14~5_combout\);

-- Location: IOIBUF_X74_Y0_N22
\DATA_IN[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(16),
	o => \DATA_IN[16]~input_o\);

-- Location: LCCOMB_X42_Y28_N2
\IM_MUX2a|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux15~0_combout\ = (!\IM_MUX2[1]~input_o\ & (\Reg_B|Q\(16) & !\IM_MUX2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \Reg_B|Q\(16),
	datad => \IM_MUX2[0]~input_o\,
	combout => \IM_MUX2a|Mux15~0_combout\);

-- Location: LCCOMB_X39_Y27_N6
\ALU0|add0|stage0|stage3|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage3|stage2|Cout~0_combout\ = (\IM_MUX2a|Mux17~0_combout\ & ((\ALU0|add0|stage0|stage3|stage1|Cout~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(14))))) # (!\IM_MUX2a|Mux17~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(14) & 
-- \ALU0|add0|stage0|stage3|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux17~0_combout\,
	datab => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(14),
	datad => \ALU0|add0|stage0|stage3|stage1|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage3|stage2|Cout~0_combout\);

-- Location: LCCOMB_X39_Y27_N0
\ALU0|add0|stage0|stage3|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage0|stage3|stage3|Cout~0_combout\ = (\IM_MUX2a|Mux16~0_combout\ & ((\ALU0|add0|stage0|stage3|stage2|Cout~0_combout\) # ((!\IM_MUX1~input_o\ & \Reg_A|Q\(15))))) # (!\IM_MUX2a|Mux16~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(15) & 
-- \ALU0|add0|stage0|stage3|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux16~0_combout\,
	datab => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(15),
	datad => \ALU0|add0|stage0|stage3|stage2|Cout~0_combout\,
	combout => \ALU0|add0|stage0|stage3|stage3|Cout~0_combout\);

-- Location: LCCOMB_X43_Y28_N20
\DATA_MUX0|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux15~0_combout\ = \IM_MUX1a|f[16]~16_combout\ $ (((\ALU_Op[1]~input_o\ & \ALU0|add0|stage0|stage3|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[16]~16_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU0|add0|stage0|stage3|stage3|Cout~0_combout\,
	combout => \DATA_MUX0|Mux15~0_combout\);

-- Location: LCCOMB_X43_Y28_N28
\DATA_MUX0|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux15~5_combout\ = (\IM_MUX2a|Mux15~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux15~0_combout\)))) # (!\IM_MUX2a|Mux15~0_combout\ & (\DATA_MUX0|Mux15~0_combout\ & (\ALU_Op[1]~input_o\ $ (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux15~0_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \DATA_MUX0|Mux15~0_combout\,
	combout => \DATA_MUX0|Mux15~5_combout\);

-- Location: LCCOMB_X43_Y28_N26
\DATA_MUX0|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux15~6_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\)))) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux15~5_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_IN[16]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux15~5_combout\,
	combout => \DATA_MUX0|Mux15~6_combout\);

-- Location: LCCOMB_X38_Y28_N26
\Reg_Mux0|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[15]~15_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(15)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_A|Q\(15),
	datad => \Reg_B|Q\(15),
	combout => \Reg_Mux0|f[15]~15_combout\);

-- Location: LCCOMB_X36_Y28_N8
\Reg_Mux0|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[16]~16_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(16))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(16),
	datad => \Reg_A|Q\(16),
	combout => \Reg_Mux0|f[16]~16_combout\);

-- Location: LCCOMB_X36_Y28_N14
\Reg_Mux0|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[17]~17_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(17))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(17),
	datad => \Reg_A|Q\(17),
	combout => \Reg_Mux0|f[17]~17_combout\);

-- Location: IOIBUF_X0_Y45_N22
\DATA_IN[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(20),
	o => \DATA_IN[20]~input_o\);

-- Location: LCCOMB_X38_Y26_N10
\B_Mux0|f[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[19]~22_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux12~5_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux12~5_combout\,
	combout => \B_Mux0|f[19]~22_combout\);

-- Location: FF_X38_Y26_N11
\Reg_B|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[19]~22_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(19));

-- Location: LCCOMB_X35_Y26_N4
\Reg_Mux0|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[19]~19_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(19)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_A|Q\(19),
	datac => \REG_MUX~input_o\,
	datad => \Reg_B|Q\(19),
	combout => \Reg_Mux0|f[19]~19_combout\);

-- Location: LCCOMB_X33_Y29_N24
\Reg_Mux0|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[20]~20_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(20))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(20),
	datad => \Reg_A|Q\(20),
	combout => \Reg_Mux0|f[20]~20_combout\);

-- Location: IOIBUF_X20_Y0_N15
\DATA_IN[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(21),
	o => \DATA_IN[21]~input_o\);

-- Location: LCCOMB_X38_Y29_N24
\IM_MUX2a|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux10~0_combout\ = (!\IM_MUX2[1]~input_o\ & (\Reg_B|Q\(21) & !\IM_MUX2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2[1]~input_o\,
	datac => \Reg_B|Q\(21),
	datad => \IM_MUX2[0]~input_o\,
	combout => \IM_MUX2a|Mux10~0_combout\);

-- Location: LCCOMB_X38_Y26_N28
\ALU0|result_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|result_s~7_combout\ = (!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & (\IM_MUX1a|f[19]~19_combout\ & \Reg_B|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \IM_MUX1a|f[19]~19_combout\,
	datad => \Reg_B|Q\(19),
	combout => \ALU0|result_s~7_combout\);

-- Location: LCCOMB_X38_Y26_N22
\ALU0|add0|stage1|stage0|stage3|Cout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage0|stage3|Cout~4_combout\ = (\IM_MUX1a|f[19]~19_combout\) # ((!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & \Reg_B|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \IM_MUX1a|f[19]~19_combout\,
	datad => \Reg_B|Q\(19),
	combout => \ALU0|add0|stage1|stage0|stage3|Cout~4_combout\);

-- Location: LCCOMB_X40_Y28_N24
\B_Mux0|f[18]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[18]~21_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux13~5_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux13~5_combout\,
	combout => \B_Mux0|f[18]~21_combout\);

-- Location: FF_X40_Y28_N25
\Reg_B|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[18]~21_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(18));

-- Location: LCCOMB_X36_Y28_N26
\IM_MUX2a|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux13~0_combout\ = (!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & \Reg_B|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \Reg_B|Q\(18),
	combout => \IM_MUX2a|Mux13~0_combout\);

-- Location: LCCOMB_X36_Y28_N10
\IM_MUX2a|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux15~1_combout\ = (\IM_MUX2[1]~input_o\) # (\IM_MUX2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2[1]~input_o\,
	datad => \IM_MUX2[0]~input_o\,
	combout => \IM_MUX2a|Mux15~1_combout\);

-- Location: LCCOMB_X39_Y27_N30
\ALU0|add0|stage1|stage0|stage3|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage0|stage3|Cout~2_combout\ = (\IM_MUX1a|f[17]~17_combout\ & ((\ALU0|add0|stage1|stage0|stage0|Cout~0_combout\) # ((\Reg_B|Q\(17) & !\IM_MUX2a|Mux15~1_combout\)))) # (!\IM_MUX1a|f[17]~17_combout\ & (\Reg_B|Q\(17) & 
-- (!\IM_MUX2a|Mux15~1_combout\ & \ALU0|add0|stage1|stage0|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[17]~17_combout\,
	datab => \Reg_B|Q\(17),
	datac => \IM_MUX2a|Mux15~1_combout\,
	datad => \ALU0|add0|stage1|stage0|stage0|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage0|stage3|Cout~2_combout\);

-- Location: LCCOMB_X40_Y30_N2
\IM_MUX1a|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[18]~18_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(2))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \IR|Q\(2),
	datad => \Reg_A|Q\(18),
	combout => \IM_MUX1a|f[18]~18_combout\);

-- Location: LCCOMB_X39_Y27_N24
\ALU0|add0|stage1|stage0|stage3|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage0|stage3|Cout~3_combout\ = (\ALU0|add0|stage1|stage0|stage3|Cout~4_combout\ & ((\IM_MUX2a|Mux13~0_combout\ & ((\ALU0|add0|stage1|stage0|stage3|Cout~2_combout\) # (\IM_MUX1a|f[18]~18_combout\))) # (!\IM_MUX2a|Mux13~0_combout\ & 
-- (\ALU0|add0|stage1|stage0|stage3|Cout~2_combout\ & \IM_MUX1a|f[18]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|add0|stage1|stage0|stage3|Cout~4_combout\,
	datab => \IM_MUX2a|Mux13~0_combout\,
	datac => \ALU0|add0|stage1|stage0|stage3|Cout~2_combout\,
	datad => \IM_MUX1a|f[18]~18_combout\,
	combout => \ALU0|add0|stage1|stage0|stage3|Cout~3_combout\);

-- Location: LCCOMB_X39_Y27_N14
\ALU0|add0|stage1|stage1|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage1|stage0|Cout~0_combout\ = (\IM_MUX1a|f[20]~20_combout\ & ((\IM_MUX2a|Mux11~0_combout\) # ((\ALU0|result_s~7_combout\) # (\ALU0|add0|stage1|stage0|stage3|Cout~3_combout\)))) # (!\IM_MUX1a|f[20]~20_combout\ & 
-- (\IM_MUX2a|Mux11~0_combout\ & ((\ALU0|result_s~7_combout\) # (\ALU0|add0|stage1|stage0|stage3|Cout~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[20]~20_combout\,
	datab => \IM_MUX2a|Mux11~0_combout\,
	datac => \ALU0|result_s~7_combout\,
	datad => \ALU0|add0|stage1|stage0|stage3|Cout~3_combout\,
	combout => \ALU0|add0|stage1|stage1|stage0|Cout~0_combout\);

-- Location: LCCOMB_X40_Y28_N2
\DATA_MUX0|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux10~0_combout\ = \IM_MUX1a|f[21]~21_combout\ $ (((\ALU_Op[1]~input_o\ & \ALU0|add0|stage1|stage1|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1a|f[21]~21_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU0|add0|stage1|stage1|stage0|Cout~0_combout\,
	combout => \DATA_MUX0|Mux10~0_combout\);

-- Location: LCCOMB_X40_Y28_N20
\DATA_MUX0|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux10~1_combout\ = (\IM_MUX2a|Mux10~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux10~0_combout\)))) # (!\IM_MUX2a|Mux10~0_combout\ & (\DATA_MUX0|Mux10~0_combout\ & (\ALU_Op[1]~input_o\ $ (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX2a|Mux10~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \DATA_MUX0|Mux10~0_combout\,
	combout => \DATA_MUX0|Mux10~1_combout\);

-- Location: IOIBUF_X0_Y18_N22
\DATA_IN[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(22),
	o => \DATA_IN[22]~input_o\);

-- Location: LCCOMB_X36_Y28_N12
\IM_MUX2a|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux9~0_combout\ = (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(22) & !\IM_MUX2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \Reg_B|Q\(22),
	datac => \IM_MUX2[1]~input_o\,
	combout => \IM_MUX2a|Mux9~0_combout\);

-- Location: LCCOMB_X34_Y27_N6
\ALU0|add0|stage1|stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage1|stage1|Cout~0_combout\ = (\ALU0|add0|stage1|stage1|stage0|Cout~0_combout\ & ((\IM_MUX1a|f[21]~21_combout\) # ((!\IM_MUX2a|Mux15~1_combout\ & \Reg_B|Q\(21))))) # (!\ALU0|add0|stage1|stage1|stage0|Cout~0_combout\ & 
-- (!\IM_MUX2a|Mux15~1_combout\ & (\Reg_B|Q\(21) & \IM_MUX1a|f[21]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux15~1_combout\,
	datab => \Reg_B|Q\(21),
	datac => \ALU0|add0|stage1|stage1|stage0|Cout~0_combout\,
	datad => \IM_MUX1a|f[21]~21_combout\,
	combout => \ALU0|add0|stage1|stage1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X35_Y26_N10
\DATA_MUX0|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux9~0_combout\ = \IM_MUX1a|f[22]~22_combout\ $ (((\ALU_Op[1]~input_o\ & \ALU0|add0|stage1|stage1|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[22]~22_combout\,
	datad => \ALU0|add0|stage1|stage1|stage1|Cout~0_combout\,
	combout => \DATA_MUX0|Mux9~0_combout\);

-- Location: LCCOMB_X35_Y26_N16
\DATA_MUX0|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux9~5_combout\ = (\IM_MUX2a|Mux9~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux9~0_combout\)))) # (!\IM_MUX2a|Mux9~0_combout\ & (\DATA_MUX0|Mux9~0_combout\ & (\ALU_Op[1]~input_o\ $ (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX2a|Mux9~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \DATA_MUX0|Mux9~0_combout\,
	combout => \DATA_MUX0|Mux9~5_combout\);

-- Location: LCCOMB_X35_Y26_N30
\DATA_MUX0|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux9~6_combout\ = (\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux7~0_combout\) # (\DATA_MUX0|Mux9~5_combout\)))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[22]~input_o\ & (!\DATA_MUX0|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_IN[22]~input_o\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \DATA_MUX0|Mux9~5_combout\,
	combout => \DATA_MUX0|Mux9~6_combout\);

-- Location: LCCOMB_X38_Y27_N10
\Data_Mem0|DATAMEM~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~76_combout\ = (!\IR|Q\(5) & (!\IR|Q\(0) & !\IR|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(5),
	datac => \IR|Q\(0),
	datad => \IR|Q\(4),
	combout => \Data_Mem0|DATAMEM~76_combout\);

-- Location: LCCOMB_X38_Y27_N16
\Data_Mem0|DATAMEM~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~75_combout\ = (\Data_Mem0|DATAMEM~74_combout\ & (!\IR|Q\(6) & (!\IR|Q\(1) & !\IR|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~74_combout\,
	datab => \IR|Q\(6),
	datac => \IR|Q\(1),
	datad => \IR|Q\(7),
	combout => \Data_Mem0|DATAMEM~75_combout\);

-- Location: LCCOMB_X38_Y27_N14
\Data_Mem0|DATAMEM~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~77_combout\ = (\Data_Mem0|DATAMEM~76_combout\ & (!\IR|Q\(3) & (!\IR|Q\(2) & \Data_Mem0|DATAMEM~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~76_combout\,
	datab => \IR|Q\(3),
	datac => \IR|Q\(2),
	datad => \Data_Mem0|DATAMEM~75_combout\,
	combout => \Data_Mem0|DATAMEM~77_combout\);

-- Location: FF_X36_Y28_N5
\Data_Mem0|DATAMEM~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[22]~22_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~64_q\);

-- Location: LCCOMB_X39_Y26_N22
\IM_MUX1a|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[23]~23_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(7))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \IR|Q\(7),
	datad => \Reg_A|Q\(23),
	combout => \IM_MUX1a|f[23]~23_combout\);

-- Location: LCCOMB_X36_Y26_N22
\B_Mux0|f[23]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[23]~27_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux8~5_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \B_MUX~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux8~5_combout\,
	combout => \B_Mux0|f[23]~27_combout\);

-- Location: FF_X36_Y26_N23
\Reg_B|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[23]~27_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(23));

-- Location: LCCOMB_X36_Y26_N8
\IM_MUX2a|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux8~0_combout\ = (\Reg_B|Q\(23) & (!\IM_MUX2[1]~input_o\ & !\IM_MUX2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_B|Q\(23),
	datac => \IM_MUX2[1]~input_o\,
	datad => \IM_MUX2[0]~input_o\,
	combout => \IM_MUX2a|Mux8~0_combout\);

-- Location: LCCOMB_X36_Y26_N14
\ALU0|result_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|result_s~8_combout\ = (!\IM_MUX2[0]~input_o\ & (\IM_MUX1a|f[23]~23_combout\ & (\Reg_B|Q\(23) & !\IM_MUX2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX1a|f[23]~23_combout\,
	datac => \Reg_B|Q\(23),
	datad => \IM_MUX2[1]~input_o\,
	combout => \ALU0|result_s~8_combout\);

-- Location: LCCOMB_X36_Y26_N6
\ALU0|sub0|stage1|stage1|stage3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage3|s~0_combout\ = \IM_MUX1a|f[23]~23_combout\ $ (((\Reg_B|Q\(23) & (!\IM_MUX2[1]~input_o\ & !\IM_MUX2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_B|Q\(23),
	datab => \IM_MUX1a|f[23]~23_combout\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \IM_MUX2[0]~input_o\,
	combout => \ALU0|sub0|stage1|stage1|stage3|s~0_combout\);

-- Location: LCCOMB_X35_Y26_N8
\ALU0|add0|stage1|stage1|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage1|stage3|s~combout\ = \ALU0|sub0|stage1|stage1|stage3|s~0_combout\ $ (((\IM_MUX2a|Mux9~0_combout\ & ((\IM_MUX1a|f[22]~22_combout\) # (\ALU0|add0|stage1|stage1|stage1|Cout~0_combout\))) # (!\IM_MUX2a|Mux9~0_combout\ & 
-- (\IM_MUX1a|f[22]~22_combout\ & \ALU0|add0|stage1|stage1|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage1|stage1|stage3|s~0_combout\,
	datab => \IM_MUX2a|Mux9~0_combout\,
	datac => \IM_MUX1a|f[22]~22_combout\,
	datad => \ALU0|add0|stage1|stage1|stage1|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage1|stage3|s~combout\);

-- Location: LCCOMB_X36_Y26_N12
\DATA_MUX0|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux8~0_combout\ = (\ALU_Op[0]~input_o\ & (\ALU_Op[1]~input_o\)) # (!\ALU_Op[0]~input_o\ & ((\ALU_Op[1]~input_o\ & ((\ALU0|add0|stage1|stage1|stage3|s~combout\))) # (!\ALU_Op[1]~input_o\ & (\ALU0|result_s~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU0|result_s~8_combout\,
	datad => \ALU0|add0|stage1|stage1|stage3|s~combout\,
	combout => \DATA_MUX0|Mux8~0_combout\);

-- Location: LCCOMB_X36_Y26_N10
\DATA_MUX0|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux8~1_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux8~0_combout\) # ((\IM_MUX1a|f[23]~23_combout\ & !\DATA_MUX0|Mux8~0_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\DATA_MUX0|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX1a|f[23]~23_combout\,
	datac => \IM_MUX2a|Mux8~0_combout\,
	datad => \DATA_MUX0|Mux8~0_combout\,
	combout => \DATA_MUX0|Mux8~1_combout\);

-- Location: IOIBUF_X0_Y33_N22
\DATA_IN[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(28),
	o => \DATA_IN[28]~input_o\);

-- Location: LCCOMB_X32_Y29_N20
\B_Mux0|f[28]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[28]~33_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux3~10_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux3~10_combout\,
	combout => \B_Mux0|f[28]~33_combout\);

-- Location: FF_X32_Y29_N21
\Reg_B|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[28]~33_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(28));

-- Location: LCCOMB_X33_Y29_N28
\IM_MUX2a|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux3~0_combout\ = (!\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & \Reg_B|Q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \Reg_B|Q\(28),
	combout => \IM_MUX2a|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y28_N24
\B_Mux0|f[27]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[27]~32_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux4~7_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux4~7_combout\,
	combout => \B_Mux0|f[27]~32_combout\);

-- Location: FF_X32_Y28_N25
\Reg_B|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[27]~32_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(27));

-- Location: LCCOMB_X34_Y28_N4
\IM_MUX2a|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux4~0_combout\ = (!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & \Reg_B|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \Reg_B|Q\(27),
	combout => \IM_MUX2a|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y28_N22
\B_Mux0|f[26]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[26]~31_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux5~5_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux5~5_combout\,
	combout => \B_Mux0|f[26]~31_combout\);

-- Location: FF_X32_Y28_N23
\Reg_B|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[26]~31_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(26));

-- Location: LCCOMB_X33_Y27_N8
\B_Mux0|f[25]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[25]~30_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux6~6_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \B_MUX~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux6~6_combout\,
	combout => \B_Mux0|f[25]~30_combout\);

-- Location: FF_X33_Y27_N9
\Reg_B|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[25]~30_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(25));

-- Location: IOIBUF_X0_Y48_N1
\DATA_IN[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(24),
	o => \DATA_IN[24]~input_o\);

-- Location: LCCOMB_X36_Y26_N0
\ALU0|add0|stage1|stage1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage1|stage3|Cout~0_combout\ = (\IM_MUX1a|f[23]~23_combout\) # ((!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(23) & !\IM_MUX2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX1a|f[23]~23_combout\,
	datac => \Reg_B|Q\(23),
	datad => \IM_MUX2[1]~input_o\,
	combout => \ALU0|add0|stage1|stage1|stage3|Cout~0_combout\);

-- Location: LCCOMB_X34_Y27_N28
\ALU0|add0|stage1|stage1|stage3|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage1|stage3|Cout~1_combout\ = (\ALU0|add0|stage1|stage1|stage3|Cout~0_combout\ & ((\IM_MUX1a|f[22]~22_combout\ & ((\IM_MUX2a|Mux9~0_combout\) # (\ALU0|add0|stage1|stage1|stage1|Cout~0_combout\))) # (!\IM_MUX1a|f[22]~22_combout\ & 
-- (\IM_MUX2a|Mux9~0_combout\ & \ALU0|add0|stage1|stage1|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[22]~22_combout\,
	datab => \ALU0|add0|stage1|stage1|stage3|Cout~0_combout\,
	datac => \IM_MUX2a|Mux9~0_combout\,
	datad => \ALU0|add0|stage1|stage1|stage1|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage1|stage3|Cout~1_combout\);

-- Location: LCCOMB_X35_Y28_N10
\DATA_MUX0|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux7~1_combout\ = \IM_MUX1a|f[24]~24_combout\ $ (((\ALU_Op[1]~input_o\ & ((\ALU0|add0|stage1|stage1|stage3|Cout~1_combout\) # (\ALU0|result_s~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[24]~24_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU0|add0|stage1|stage1|stage3|Cout~1_combout\,
	datad => \ALU0|result_s~8_combout\,
	combout => \DATA_MUX0|Mux7~1_combout\);

-- Location: LCCOMB_X35_Y28_N20
\DATA_MUX0|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux7~2_combout\ = (\IM_MUX2a|Mux7~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux7~1_combout\)))) # (!\IM_MUX2a|Mux7~0_combout\ & (\DATA_MUX0|Mux7~1_combout\ & (\ALU_Op[0]~input_o\ $ (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX2a|Mux7~0_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \DATA_MUX0|Mux7~1_combout\,
	combout => \DATA_MUX0|Mux7~2_combout\);

-- Location: LCCOMB_X35_Y28_N26
\DATA_MUX0|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux7~3_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\)))) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~2_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[24]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux7~2_combout\,
	combout => \DATA_MUX0|Mux7~3_combout\);

-- Location: LCCOMB_X36_Y28_N2
\Reg_Mux0|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[24]~24_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(24)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_MUX~input_o\,
	datab => \Reg_A|Q\(24),
	datad => \Reg_B|Q\(24),
	combout => \Reg_Mux0|f[24]~24_combout\);

-- Location: LCCOMB_X33_Y27_N16
\Reg_Mux0|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[25]~25_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(25))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_B|Q\(25),
	datac => \REG_MUX~input_o\,
	datad => \Reg_A|Q\(25),
	combout => \Reg_Mux0|f[25]~25_combout\);

-- Location: LCCOMB_X33_Y29_N30
\Reg_Mux0|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[26]~26_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(26))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_B|Q\(26),
	datac => \REG_MUX~input_o\,
	datad => \Reg_A|Q\(26),
	combout => \Reg_Mux0|f[26]~26_combout\);

-- Location: LCCOMB_X34_Y28_N8
\Reg_Mux0|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[27]~27_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(27)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_A|Q\(27),
	datad => \Reg_B|Q\(27),
	combout => \Reg_Mux0|f[27]~27_combout\);

-- Location: LCCOMB_X33_Y29_N8
\Reg_Mux0|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[28]~28_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(28))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_B|Q\(28),
	datac => \REG_MUX~input_o\,
	datad => \Reg_A|Q\(28),
	combout => \Reg_Mux0|f[28]~28_combout\);

-- Location: LCCOMB_X36_Y29_N26
\A_Mux0|f[29]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[29]~32_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux2~7_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux2~7_combout\,
	combout => \A_Mux0|f[29]~32_combout\);

-- Location: FF_X36_Y29_N27
\Reg_A|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[29]~32_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(29));

-- Location: LCCOMB_X36_Y29_N6
\IM_MUX1a|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[29]~29_combout\ = (\IM_MUX1~input_o\ & ((\IR|Q\(13)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(29),
	datab => \IM_MUX1~input_o\,
	datad => \IR|Q\(13),
	combout => \IM_MUX1a|f[29]~29_combout\);

-- Location: LCCOMB_X36_Y29_N4
\DATA_MUX0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux0~1_combout\ = (\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\ & \IM_MUX1a|f[31]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX1a|f[31]~33_combout\,
	combout => \DATA_MUX0|Mux0~1_combout\);

-- Location: LCCOMB_X36_Y27_N16
\DATA_MUX0|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux31~0_combout\ = (\DATA_MUX[1]~input_o\ & !\DATA_MUX[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX[0]~input_o\,
	combout => \DATA_MUX0|Mux31~0_combout\);

-- Location: IOIBUF_X35_Y73_N22
\DATA_IN[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(31),
	o => \DATA_IN[31]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\DATA_IN[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(30),
	o => \DATA_IN[30]~input_o\);

-- Location: LCCOMB_X33_Y27_N26
\IM_MUX2a|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux1~0_combout\ = (\Reg_B|Q\(30) & (!\IM_MUX2[1]~input_o\ & !\IM_MUX2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_B|Q\(30),
	datab => \IM_MUX2[1]~input_o\,
	datac => \IM_MUX2[0]~input_o\,
	combout => \IM_MUX2a|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y27_N8
\IM_MUX1a|f[30]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[30]~32_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(30),
	combout => \IM_MUX1a|f[30]~32_combout\);

-- Location: LCCOMB_X36_Y29_N12
\IM_MUX1a|f[30]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[30]~31_combout\ = (\IM_MUX1~input_o\ & \IR|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX1~input_o\,
	datad => \IR|Q\(14),
	combout => \IM_MUX1a|f[30]~31_combout\);

-- Location: LCCOMB_X35_Y27_N4
\ALU0|result_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|result_s~5_combout\ = (\Reg_B|Q\(30) & (!\IM_MUX2a|Mux15~1_combout\ & ((\IM_MUX1a|f[30]~32_combout\) # (\IM_MUX1a|f[30]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[30]~32_combout\,
	datab => \Reg_B|Q\(30),
	datac => \IM_MUX2a|Mux15~1_combout\,
	datad => \IM_MUX1a|f[30]~31_combout\,
	combout => \ALU0|result_s~5_combout\);

-- Location: LCCOMB_X33_Y29_N22
\IM_MUX2a|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux2~0_combout\ = (!\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & \Reg_B|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datad => \Reg_B|Q\(29),
	combout => \IM_MUX2a|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y27_N10
\ALU0|sub0|stage1|stage3|stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage3|stage2|s~0_combout\ = (\IM_MUX1a|f[30]~32_combout\ & (((\IM_MUX2a|Mux15~1_combout\)) # (!\Reg_B|Q\(30)))) # (!\IM_MUX1a|f[30]~32_combout\ & (\IM_MUX1a|f[30]~31_combout\ $ (((\Reg_B|Q\(30) & !\IM_MUX2a|Mux15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[30]~32_combout\,
	datab => \Reg_B|Q\(30),
	datac => \IM_MUX2a|Mux15~1_combout\,
	datad => \IM_MUX1a|f[30]~31_combout\,
	combout => \ALU0|sub0|stage1|stage3|stage2|s~0_combout\);

-- Location: LCCOMB_X34_Y27_N16
\ALU0|add0|stage1|stage2|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage2|stage3|Cout~0_combout\ = (\IM_MUX1a|f[27]~27_combout\ & ((\ALU0|add0|stage1|stage2|stage2|Cout~0_combout\) # ((!\IM_MUX2a|Mux15~1_combout\ & \Reg_B|Q\(27))))) # (!\IM_MUX1a|f[27]~27_combout\ & (!\IM_MUX2a|Mux15~1_combout\ & 
-- (\Reg_B|Q\(27) & \ALU0|add0|stage1|stage2|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux15~1_combout\,
	datab => \IM_MUX1a|f[27]~27_combout\,
	datac => \Reg_B|Q\(27),
	datad => \ALU0|add0|stage1|stage2|stage2|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage2|stage3|Cout~0_combout\);

-- Location: LCCOMB_X34_Y27_N18
\ALU0|add0|stage1|stage3|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage3|stage0|Cout~0_combout\ = (\IM_MUX1a|f[28]~28_combout\ & ((\ALU0|add0|stage1|stage2|stage3|Cout~0_combout\) # ((!\IM_MUX2a|Mux15~1_combout\ & \Reg_B|Q\(28))))) # (!\IM_MUX1a|f[28]~28_combout\ & (!\IM_MUX2a|Mux15~1_combout\ & 
-- (\Reg_B|Q\(28) & \ALU0|add0|stage1|stage2|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux15~1_combout\,
	datab => \Reg_B|Q\(28),
	datac => \IM_MUX1a|f[28]~28_combout\,
	datad => \ALU0|add0|stage1|stage2|stage3|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage3|stage0|Cout~0_combout\);

-- Location: LCCOMB_X34_Y27_N20
\ALU0|add0|stage1|stage3|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage3|stage2|s~combout\ = \ALU0|sub0|stage1|stage3|stage2|s~0_combout\ $ (((\IM_MUX2a|Mux2~0_combout\ & ((\IM_MUX1a|f[29]~29_combout\) # (\ALU0|add0|stage1|stage3|stage0|Cout~0_combout\))) # (!\IM_MUX2a|Mux2~0_combout\ & 
-- (\IM_MUX1a|f[29]~29_combout\ & \ALU0|add0|stage1|stage3|stage0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux2~0_combout\,
	datab => \IM_MUX1a|f[29]~29_combout\,
	datac => \ALU0|sub0|stage1|stage3|stage2|s~0_combout\,
	datad => \ALU0|add0|stage1|stage3|stage0|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage3|stage2|s~combout\);

-- Location: LCCOMB_X35_Y27_N2
\DATA_MUX0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux1~0_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\) # (\ALU0|add0|stage1|stage3|stage2|s~combout\)))) # (!\ALU_Op[1]~input_o\ & (\ALU0|result_s~5_combout\ & (!\ALU_Op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU0|result_s~5_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU0|add0|stage1|stage3|stage2|s~combout\,
	combout => \DATA_MUX0|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y27_N16
\DATA_MUX0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux1~1_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux1~0_combout\) # ((\IM_MUX1a|f[30]~30_combout\ & !\DATA_MUX0|Mux1~0_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\DATA_MUX0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux1~0_combout\,
	datab => \IM_MUX1a|f[30]~30_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \DATA_MUX0|Mux1~0_combout\,
	combout => \DATA_MUX0|Mux1~1_combout\);

-- Location: LCCOMB_X35_Y27_N22
\DATA_MUX0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux1~2_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\) # ((\DATA_MUX0|Mux1~1_combout\)))) # (!\DATA_MUX[1]~input_o\ & (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_IN[30]~input_o\,
	datad => \DATA_MUX0|Mux1~1_combout\,
	combout => \DATA_MUX0|Mux1~2_combout\);

-- Location: FF_X35_Y27_N9
\Data_Mem0|DATAMEM~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Reg_Mux0|f[30]~30_combout\,
	sload => VCC,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~72_q\);

-- Location: LCCOMB_X36_Y30_N8
\Reg_Mux0|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[31]~31_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(31))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(31),
	datad => \Reg_A|Q\(31),
	combout => \Reg_Mux0|f[31]~31_combout\);

-- Location: M9K_X37_Y28_N0
\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "data_mem:Data_Mem0|altsyncram:DATAMEM_rtl_0|altsyncram_hie1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Data_Mem0|DATAMEM~74_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_Ld_IR~input_o\,
	clk0 => \ALT_INV_mClk~inputclkctrl_outclk\,
	clk1 => \Clk~inputclkctrl_outclk\,
	ena0 => \Data_Mem0|DATAMEM~74_combout\,
	portadatain => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X35_Y27_N18
\Data_Mem0|data_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~31_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a30\))) # (!\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM~72_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM~72_q\,
	datad => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a30\,
	combout => \Data_Mem0|data_out~31_combout\);

-- Location: FF_X35_Y27_N19
\Data_Mem0|data_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(30));

-- Location: LCCOMB_X35_Y27_N28
\DATA_MUX0|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux1~5_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux1~2_combout\ & (\DATA_MUX0|Mux1~4_combout\)) # (!\DATA_MUX0|Mux1~2_combout\ & ((\Data_Mem0|data_out\(30)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux1~4_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux1~2_combout\,
	datad => \Data_Mem0|data_out\(30),
	combout => \DATA_MUX0|Mux1~5_combout\);

-- Location: LCCOMB_X33_Y27_N6
\B_Mux0|f[30]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[30]~35_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux1~5_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \B_MUX~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux1~5_combout\,
	combout => \B_Mux0|f[30]~35_combout\);

-- Location: FF_X33_Y27_N7
\Reg_B|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[30]~35_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(30));

-- Location: LCCOMB_X33_Y27_N10
\Reg_Mux0|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[30]~30_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(30)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_MUX~input_o\,
	datac => \Reg_A|Q\(30),
	datad => \Reg_B|Q\(30),
	combout => \Reg_Mux0|f[30]~30_combout\);

-- Location: LCCOMB_X36_Y27_N10
\Data_Mem0|DATAMEM~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~73feeder_combout\ = \Reg_Mux0|f[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg_Mux0|f[31]~31_combout\,
	combout => \Data_Mem0|DATAMEM~73feeder_combout\);

-- Location: FF_X36_Y27_N11
\Data_Mem0|DATAMEM~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~73feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~73_q\);

-- Location: LCCOMB_X36_Y27_N2
\Data_Mem0|data_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~32_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a31\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~73_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a31\,
	datad => \Data_Mem0|DATAMEM~73_q\,
	combout => \Data_Mem0|data_out~32_combout\);

-- Location: FF_X36_Y27_N3
\Data_Mem0|data_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(31));

-- Location: LCCOMB_X36_Y27_N8
\DATA_MUX0|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux0~3_combout\ = (!\DATA_MUX[1]~input_o\ & ((\DATA_MUX[0]~input_o\ & ((\Data_Mem0|data_out\(31)))) # (!\DATA_MUX[0]~input_o\ & (\DATA_IN[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \DATA_IN[31]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \Data_Mem0|data_out\(31),
	combout => \DATA_MUX0|Mux0~3_combout\);

-- Location: LCCOMB_X36_Y30_N30
\ALU0|result_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|result_s~6_combout\ = (\IM_MUX2a|Mux0~0_combout\ & ((\IM_MUX1~input_o\ & (\IR|Q\(15))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \IR|Q\(15),
	datac => \IM_MUX2a|Mux0~0_combout\,
	datad => \Reg_A|Q\(31),
	combout => \ALU0|result_s~6_combout\);

-- Location: LCCOMB_X34_Y27_N14
\ALU0|add0|stage1|stage3|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage3|stage1|Cout~0_combout\ = (\IM_MUX1a|f[29]~29_combout\ & ((\ALU0|add0|stage1|stage3|stage0|Cout~0_combout\) # ((!\IM_MUX2a|Mux15~1_combout\ & \Reg_B|Q\(29))))) # (!\IM_MUX1a|f[29]~29_combout\ & (!\IM_MUX2a|Mux15~1_combout\ & 
-- (\Reg_B|Q\(29) & \ALU0|add0|stage1|stage3|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux15~1_combout\,
	datab => \IM_MUX1a|f[29]~29_combout\,
	datac => \Reg_B|Q\(29),
	datad => \ALU0|add0|stage1|stage3|stage0|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage3|stage1|Cout~0_combout\);

-- Location: LCCOMB_X35_Y27_N6
\ALU0|add0|stage1|stage3|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage3|stage3|s~combout\ = \ALU0|sub0|stage1|stage3|stage3|s~0_combout\ $ (((\IM_MUX1a|f[30]~30_combout\ & ((\IM_MUX2a|Mux1~0_combout\) # (\ALU0|add0|stage1|stage3|stage1|Cout~0_combout\))) # (!\IM_MUX1a|f[30]~30_combout\ & 
-- (\IM_MUX2a|Mux1~0_combout\ & \ALU0|add0|stage1|stage3|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage1|stage3|stage3|s~0_combout\,
	datab => \IM_MUX1a|f[30]~30_combout\,
	datac => \IM_MUX2a|Mux1~0_combout\,
	datad => \ALU0|add0|stage1|stage3|stage1|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage3|stage3|s~combout\);

-- Location: LCCOMB_X35_Y27_N0
\ALU0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~0_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\) # (\ALU0|add0|stage1|stage3|stage3|s~combout\)))) # (!\ALU_Op[1]~input_o\ & (\ALU0|result_s~6_combout\ & (!\ALU_Op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU0|result_s~6_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU0|add0|stage1|stage3|stage3|s~combout\,
	combout => \ALU0|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y27_N14
\ALU0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~1_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux0~0_combout\) # ((\IM_MUX1a|f[31]~33_combout\ & !\ALU0|Mux0~0_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\ALU0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[31]~33_combout\,
	datab => \IM_MUX2a|Mux0~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU0|Mux0~0_combout\,
	combout => \ALU0|Mux0~1_combout\);

-- Location: LCCOMB_X35_Y27_N30
\B_Mux0|f[31]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[31]~37_combout\ = (\DATA_MUX[1]~input_o\ & (!\DATA_MUX[0]~input_o\ & (\ALU0|Mux0~1_combout\ & !\ALU_Op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \ALU0|Mux0~1_combout\,
	datad => \ALU_Op[2]~input_o\,
	combout => \B_Mux0|f[31]~37_combout\);

-- Location: LCCOMB_X33_Y27_N4
\B_Mux0|f[31]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[31]~36_combout\ = (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux0~3_combout\) # ((\B_Mux0|f[31]~37_combout\) # (\DATA_MUX0|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux0~3_combout\,
	datab => \B_MUX~input_o\,
	datac => \B_Mux0|f[31]~37_combout\,
	datad => \DATA_MUX0|Mux0~2_combout\,
	combout => \B_Mux0|f[31]~36_combout\);

-- Location: FF_X33_Y27_N5
\Reg_B|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[31]~36_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(31));

-- Location: LCCOMB_X36_Y30_N10
\IM_MUX2a|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux0~0_combout\ = (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(31) & !\IM_MUX2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2[0]~input_o\,
	datac => \Reg_B|Q\(31),
	datad => \IM_MUX2[1]~input_o\,
	combout => \IM_MUX2a|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y30_N4
\ALU0|sub0|stage1|stage3|stage3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage3|stage3|s~0_combout\ = \IM_MUX2a|Mux0~0_combout\ $ (((\IM_MUX1~input_o\ & (\IR|Q\(15))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \IR|Q\(15),
	datac => \IM_MUX2a|Mux0~0_combout\,
	datad => \Reg_A|Q\(31),
	combout => \ALU0|sub0|stage1|stage3|stage3|s~0_combout\);

-- Location: LCCOMB_X34_Y28_N10
\ALU0|sub0|stage1|stage2|stage3|Cout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage2|stage3|Cout~5_combout\ = (\IM_MUX1a|f[27]~27_combout\ & ((\IM_MUX2[0]~input_o\) # ((\IM_MUX2[1]~input_o\) # (!\Reg_B|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \Reg_B|Q\(27),
	datac => \IM_MUX2[1]~input_o\,
	datad => \IM_MUX1a|f[27]~27_combout\,
	combout => \ALU0|sub0|stage1|stage2|stage3|Cout~5_combout\);

-- Location: LCCOMB_X34_Y28_N0
\ALU0|sub0|stage1|stage2|stage3|Cout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage2|stage3|Cout~6_combout\ = (\IM_MUX2[0]~input_o\) # (((\IM_MUX2[1]~input_o\) # (\IM_MUX1a|f[27]~27_combout\)) # (!\Reg_B|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \Reg_B|Q\(27),
	datac => \IM_MUX2[1]~input_o\,
	datad => \IM_MUX1a|f[27]~27_combout\,
	combout => \ALU0|sub0|stage1|stage2|stage3|Cout~6_combout\);

-- Location: LCCOMB_X36_Y26_N24
\ALU0|sub0|stage1|stage1|stage3|Cout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage3|Cout~5_combout\ = (\IM_MUX1a|f[23]~23_combout\ & ((\IM_MUX2[0]~input_o\) # ((\IM_MUX2[1]~input_o\) # (!\Reg_B|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX1a|f[23]~23_combout\,
	datac => \Reg_B|Q\(23),
	datad => \IM_MUX2[1]~input_o\,
	combout => \ALU0|sub0|stage1|stage1|stage3|Cout~5_combout\);

-- Location: LCCOMB_X36_Y26_N30
\ALU0|sub0|stage1|stage1|stage3|Cout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage3|Cout~6_combout\ = (\IM_MUX2[0]~input_o\) # ((\IM_MUX1a|f[23]~23_combout\) # ((\IM_MUX2[1]~input_o\) # (!\Reg_B|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX1a|f[23]~23_combout\,
	datac => \Reg_B|Q\(23),
	datad => \IM_MUX2[1]~input_o\,
	combout => \ALU0|sub0|stage1|stage1|stage3|Cout~6_combout\);

-- Location: LCCOMB_X38_Y26_N14
\IM_MUX2a|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux12~0_combout\ = (!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & \Reg_B|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datad => \Reg_B|Q\(19),
	combout => \IM_MUX2a|Mux12~0_combout\);

-- Location: LCCOMB_X40_Y30_N12
\ALU0|sub0|stage1|stage0|stage2|Cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage2|Cout~9_combout\ = (!\IM_MUX2a|Mux13~0_combout\ & ((\IM_MUX1~input_o\ & (\IR|Q\(2))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \IM_MUX2a|Mux13~0_combout\,
	datac => \IR|Q\(2),
	datad => \Reg_A|Q\(18),
	combout => \ALU0|sub0|stage1|stage0|stage2|Cout~9_combout\);

-- Location: LCCOMB_X40_Y30_N30
\ALU0|sub0|stage1|stage0|stage2|Cout~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage2|Cout~10_combout\ = ((\IM_MUX1~input_o\ & ((\IR|Q\(2)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(18)))) # (!\IM_MUX2a|Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(18),
	datab => \IM_MUX1~input_o\,
	datac => \IR|Q\(2),
	datad => \IM_MUX2a|Mux13~0_combout\,
	combout => \ALU0|sub0|stage1|stage0|stage2|Cout~10_combout\);

-- Location: LCCOMB_X40_Y29_N6
\ALU0|sub0|stage0|stage3|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage3|stage1|Cout~0_combout\ = (!\IM_MUX1~input_o\ & (!\IM_MUX2a|Mux18~0_combout\ & \Reg_A|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux18~0_combout\,
	datad => \Reg_A|Q\(13),
	combout => \ALU0|sub0|stage0|stage3|stage1|Cout~0_combout\);

-- Location: LCCOMB_X41_Y29_N12
\ALU0|sub0|stage0|stage3|stage1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage3|stage1|Cout~1_combout\ = ((!\IM_MUX1~input_o\ & \Reg_A|Q\(13))) # (!\IM_MUX2a|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux18~0_combout\,
	datad => \Reg_A|Q\(13),
	combout => \ALU0|sub0|stage0|stage3|stage1|Cout~1_combout\);

-- Location: LCCOMB_X41_Y29_N18
\ALU0|sub0|stage0|stage2|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\ = (\IM_MUX2a|Mux20~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(11) & \ALU0|sub0|stage0|stage2|stage2|Cout~0_combout\))) # (!\IM_MUX2a|Mux20~0_combout\ & ((\ALU0|sub0|stage0|stage2|stage2|Cout~0_combout\) # 
-- ((!\IM_MUX1~input_o\ & \Reg_A|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(11),
	datac => \IM_MUX2a|Mux20~0_combout\,
	datad => \ALU0|sub0|stage0|stage2|stage2|Cout~0_combout\,
	combout => \ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\);

-- Location: LCCOMB_X41_Y29_N2
\ALU0|sub0|stage0|stage3|stage1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage3|stage1|Cout~2_combout\ = (\ALU0|sub0|stage0|stage3|stage1|Cout~1_combout\ & ((\IM_MUX1a|f[12]~12_combout\ & ((\ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\) # (!\IM_MUX2a|Mux19~0_combout\))) # (!\IM_MUX1a|f[12]~12_combout\ & 
-- (!\IM_MUX2a|Mux19~0_combout\ & \ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage3|stage1|Cout~1_combout\,
	datab => \IM_MUX1a|f[12]~12_combout\,
	datac => \IM_MUX2a|Mux19~0_combout\,
	datad => \ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\,
	combout => \ALU0|sub0|stage0|stage3|stage1|Cout~2_combout\);

-- Location: LCCOMB_X40_Y29_N20
\ALU0|sub0|stage0|stage3|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage3|stage2|Cout~0_combout\ = (\IM_MUX1a|f[14]~14_combout\ & ((\ALU0|sub0|stage0|stage3|stage1|Cout~0_combout\) # ((\ALU0|sub0|stage0|stage3|stage1|Cout~2_combout\) # (!\IM_MUX2a|Mux17~0_combout\)))) # (!\IM_MUX1a|f[14]~14_combout\ & 
-- (!\IM_MUX2a|Mux17~0_combout\ & ((\ALU0|sub0|stage0|stage3|stage1|Cout~0_combout\) # (\ALU0|sub0|stage0|stage3|stage1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage3|stage1|Cout~0_combout\,
	datab => \IM_MUX1a|f[14]~14_combout\,
	datac => \IM_MUX2a|Mux17~0_combout\,
	datad => \ALU0|sub0|stage0|stage3|stage1|Cout~2_combout\,
	combout => \ALU0|sub0|stage0|stage3|stage2|Cout~0_combout\);

-- Location: LCCOMB_X40_Y29_N12
\ALU0|sub0|stage0|stage3|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage3|stage3|Cout~0_combout\ = (\IM_MUX2a|Mux16~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(15) & \ALU0|sub0|stage0|stage3|stage2|Cout~0_combout\))) # (!\IM_MUX2a|Mux16~0_combout\ & ((\ALU0|sub0|stage0|stage3|stage2|Cout~0_combout\) # 
-- ((!\IM_MUX1~input_o\ & \Reg_A|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux16~0_combout\,
	datab => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(15),
	datad => \ALU0|sub0|stage0|stage3|stage2|Cout~0_combout\,
	combout => \ALU0|sub0|stage0|stage3|stage3|Cout~0_combout\);

-- Location: LCCOMB_X40_Y29_N16
\ALU0|sub0|stage1|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\ = (\IM_MUX1a|f[16]~16_combout\ & (((\IM_MUX2a|Mux15~1_combout\) # (\ALU0|sub0|stage0|stage3|stage3|Cout~0_combout\)) # (!\Reg_B|Q\(16)))) # (!\IM_MUX1a|f[16]~16_combout\ & 
-- (\ALU0|sub0|stage0|stage3|stage3|Cout~0_combout\ & ((\IM_MUX2a|Mux15~1_combout\) # (!\Reg_B|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_B|Q\(16),
	datab => \IM_MUX1a|f[16]~16_combout\,
	datac => \IM_MUX2a|Mux15~1_combout\,
	datad => \ALU0|sub0|stage0|stage3|stage3|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\);

-- Location: LCCOMB_X39_Y29_N28
\ALU0|sub0|stage1|stage0|stage2|Cout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage2|Cout~8_combout\ = (\ALU0|sub0|stage1|stage0|stage2|Cout~10_combout\ & ((\IM_MUX2a|Mux14~0_combout\ & (\IM_MUX1a|f[17]~17_combout\ & \ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\)) # (!\IM_MUX2a|Mux14~0_combout\ & 
-- ((\IM_MUX1a|f[17]~17_combout\) # (\ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux14~0_combout\,
	datab => \ALU0|sub0|stage1|stage0|stage2|Cout~10_combout\,
	datac => \IM_MUX1a|f[17]~17_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage0|stage2|Cout~8_combout\);

-- Location: LCCOMB_X39_Y29_N6
\ALU0|sub0|stage1|stage0|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage3|Cout~0_combout\ = (\IM_MUX2a|Mux12~0_combout\ & (\IM_MUX1a|f[19]~19_combout\ & ((\ALU0|sub0|stage1|stage0|stage2|Cout~9_combout\) # (\ALU0|sub0|stage1|stage0|stage2|Cout~8_combout\)))) # (!\IM_MUX2a|Mux12~0_combout\ & 
-- ((\IM_MUX1a|f[19]~19_combout\) # ((\ALU0|sub0|stage1|stage0|stage2|Cout~9_combout\) # (\ALU0|sub0|stage1|stage0|stage2|Cout~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux12~0_combout\,
	datab => \IM_MUX1a|f[19]~19_combout\,
	datac => \ALU0|sub0|stage1|stage0|stage2|Cout~9_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage2|Cout~8_combout\,
	combout => \ALU0|sub0|stage1|stage0|stage3|Cout~0_combout\);

-- Location: LCCOMB_X39_Y29_N20
\ALU0|sub0|stage1|stage1|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage0|Cout~0_combout\ = (\IM_MUX2a|Mux11~0_combout\ & (\IM_MUX1a|f[20]~20_combout\ & \ALU0|sub0|stage1|stage0|stage3|Cout~0_combout\)) # (!\IM_MUX2a|Mux11~0_combout\ & ((\IM_MUX1a|f[20]~20_combout\) # 
-- (\ALU0|sub0|stage1|stage0|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2a|Mux11~0_combout\,
	datac => \IM_MUX1a|f[20]~20_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage3|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage1|stage0|Cout~0_combout\);

-- Location: LCCOMB_X39_Y29_N26
\ALU0|sub0|stage1|stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\ = (\IM_MUX1a|f[21]~21_combout\ & (((\IM_MUX2a|Mux15~1_combout\) # (\ALU0|sub0|stage1|stage1|stage0|Cout~0_combout\)) # (!\Reg_B|Q\(21)))) # (!\IM_MUX1a|f[21]~21_combout\ & 
-- (\ALU0|sub0|stage1|stage1|stage0|Cout~0_combout\ & ((\IM_MUX2a|Mux15~1_combout\) # (!\Reg_B|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_B|Q\(21),
	datab => \IM_MUX2a|Mux15~1_combout\,
	datac => \IM_MUX1a|f[21]~21_combout\,
	datad => \ALU0|sub0|stage1|stage1|stage0|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X34_Y29_N22
\ALU0|sub0|stage1|stage1|stage3|Cout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage3|Cout~4_combout\ = (\ALU0|sub0|stage1|stage1|stage3|Cout~6_combout\ & ((\IM_MUX1a|f[22]~22_combout\ & ((\ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\) # (!\IM_MUX2a|Mux9~0_combout\))) # (!\IM_MUX1a|f[22]~22_combout\ & 
-- (\ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\ & !\IM_MUX2a|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage1|stage1|stage3|Cout~6_combout\,
	datab => \IM_MUX1a|f[22]~22_combout\,
	datac => \ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\,
	datad => \IM_MUX2a|Mux9~0_combout\,
	combout => \ALU0|sub0|stage1|stage1|stage3|Cout~4_combout\);

-- Location: LCCOMB_X34_Y29_N16
\ALU0|sub0|stage1|stage2|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage2|stage0|Cout~0_combout\ = (\IM_MUX1a|f[24]~24_combout\ & ((\ALU0|sub0|stage1|stage1|stage3|Cout~5_combout\) # ((\ALU0|sub0|stage1|stage1|stage3|Cout~4_combout\) # (!\IM_MUX2a|Mux7~0_combout\)))) # (!\IM_MUX1a|f[24]~24_combout\ & 
-- (!\IM_MUX2a|Mux7~0_combout\ & ((\ALU0|sub0|stage1|stage1|stage3|Cout~5_combout\) # (\ALU0|sub0|stage1|stage1|stage3|Cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage1|stage1|stage3|Cout~5_combout\,
	datab => \IM_MUX1a|f[24]~24_combout\,
	datac => \ALU0|sub0|stage1|stage1|stage3|Cout~4_combout\,
	datad => \IM_MUX2a|Mux7~0_combout\,
	combout => \ALU0|sub0|stage1|stage2|stage0|Cout~0_combout\);

-- Location: LCCOMB_X34_Y29_N30
\ALU0|sub0|stage1|stage2|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\ = (\IM_MUX1a|f[25]~25_combout\ & (((\IM_MUX2a|Mux15~1_combout\) # (\ALU0|sub0|stage1|stage2|stage0|Cout~0_combout\)) # (!\Reg_B|Q\(25)))) # (!\IM_MUX1a|f[25]~25_combout\ & 
-- (\ALU0|sub0|stage1|stage2|stage0|Cout~0_combout\ & ((\IM_MUX2a|Mux15~1_combout\) # (!\Reg_B|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[25]~25_combout\,
	datab => \Reg_B|Q\(25),
	datac => \IM_MUX2a|Mux15~1_combout\,
	datad => \ALU0|sub0|stage1|stage2|stage0|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\);

-- Location: LCCOMB_X33_Y29_N20
\IM_MUX2a|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux5~0_combout\ = (!\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & \Reg_B|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \Reg_B|Q\(26),
	combout => \IM_MUX2a|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y29_N0
\ALU0|sub0|stage1|stage2|stage3|Cout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage2|stage3|Cout~4_combout\ = (\ALU0|sub0|stage1|stage2|stage3|Cout~6_combout\ & ((\IM_MUX1a|f[26]~26_combout\ & ((\ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\) # (!\IM_MUX2a|Mux5~0_combout\))) # (!\IM_MUX1a|f[26]~26_combout\ & 
-- (\ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\ & !\IM_MUX2a|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[26]~26_combout\,
	datab => \ALU0|sub0|stage1|stage2|stage3|Cout~6_combout\,
	datac => \ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\,
	datad => \IM_MUX2a|Mux5~0_combout\,
	combout => \ALU0|sub0|stage1|stage2|stage3|Cout~4_combout\);

-- Location: LCCOMB_X34_Y29_N14
\ALU0|sub0|stage1|stage3|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\ = (\IM_MUX1a|f[28]~28_combout\ & ((\ALU0|sub0|stage1|stage2|stage3|Cout~5_combout\) # ((\ALU0|sub0|stage1|stage2|stage3|Cout~4_combout\) # (!\IM_MUX2a|Mux3~0_combout\)))) # (!\IM_MUX1a|f[28]~28_combout\ & 
-- (!\IM_MUX2a|Mux3~0_combout\ & ((\ALU0|sub0|stage1|stage2|stage3|Cout~5_combout\) # (\ALU0|sub0|stage1|stage2|stage3|Cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[28]~28_combout\,
	datab => \ALU0|sub0|stage1|stage2|stage3|Cout~5_combout\,
	datac => \IM_MUX2a|Mux3~0_combout\,
	datad => \ALU0|sub0|stage1|stage2|stage3|Cout~4_combout\,
	combout => \ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\);

-- Location: LCCOMB_X35_Y29_N24
\ALU0|sub0|stage1|stage3|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage3|stage1|Cout~0_combout\ = (\IM_MUX1a|f[29]~29_combout\ & ((\ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\) # (!\IM_MUX2a|Mux2~0_combout\))) # (!\IM_MUX1a|f[29]~29_combout\ & (!\IM_MUX2a|Mux2~0_combout\ & 
-- \ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[29]~29_combout\,
	datab => \IM_MUX2a|Mux2~0_combout\,
	datad => \ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage3|stage1|Cout~0_combout\);

-- Location: LCCOMB_X35_Y29_N6
\ALU0|sub0|stage1|stage3|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage3|stage3|s~combout\ = \ALU0|sub0|stage1|stage3|stage3|s~0_combout\ $ (((\IM_MUX1a|f[30]~30_combout\ & ((\ALU0|sub0|stage1|stage3|stage1|Cout~0_combout\) # (!\IM_MUX2a|Mux1~0_combout\))) # (!\IM_MUX1a|f[30]~30_combout\ & 
-- (!\IM_MUX2a|Mux1~0_combout\ & \ALU0|sub0|stage1|stage3|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage1|stage3|stage3|s~0_combout\,
	datab => \IM_MUX1a|f[30]~30_combout\,
	datac => \IM_MUX2a|Mux1~0_combout\,
	datad => \ALU0|sub0|stage1|stage3|stage1|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage3|stage3|s~combout\);

-- Location: LCCOMB_X35_Y29_N20
\DATA_MUX0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux0~0_combout\ = (!\ALU_Op[0]~input_o\ & ((\ALU_Op[1]~input_o\ & ((!\ALU0|sub0|stage1|stage3|stage3|s~combout\))) # (!\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[30]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1a|f[30]~30_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU0|sub0|stage1|stage3|stage3|s~combout\,
	combout => \DATA_MUX0|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y29_N30
\DATA_MUX0|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux0~2_combout\ = (\ALU_Op[2]~input_o\ & (\DATA_MUX0|Mux31~0_combout\ & ((\DATA_MUX0|Mux0~1_combout\) # (\DATA_MUX0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux0~1_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \DATA_MUX0|Mux31~0_combout\,
	datad => \DATA_MUX0|Mux0~0_combout\,
	combout => \DATA_MUX0|Mux0~2_combout\);

-- Location: LCCOMB_X36_Y27_N26
\DATA_MUX0|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux0~4_combout\ = (\DATA_MUX0|Mux0~3_combout\) # ((\DATA_MUX0|Mux31~0_combout\ & (!\ALU_Op[2]~input_o\ & \ALU0|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux31~0_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \DATA_MUX0|Mux0~3_combout\,
	datad => \ALU0|Mux0~1_combout\,
	combout => \DATA_MUX0|Mux0~4_combout\);

-- Location: LCCOMB_X36_Y29_N0
\A_Mux0|f[31]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[31]~35_combout\ = (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux0~2_combout\) # (\DATA_MUX0|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \DATA_MUX0|Mux0~2_combout\,
	datad => \DATA_MUX0|Mux0~4_combout\,
	combout => \A_Mux0|f[31]~35_combout\);

-- Location: FF_X36_Y29_N1
\Reg_A|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[31]~35_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(31));

-- Location: LCCOMB_X36_Y29_N30
\IM_MUX1a|f[31]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[31]~33_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(15))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(15),
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(31),
	combout => \IM_MUX1a|f[31]~33_combout\);

-- Location: LCCOMB_X35_Y28_N30
\DATA_MUX0|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux1~3_combout\ = (\ALU_Op[0]~input_o\ & ((\ALU_Op[1]~input_o\) # ((\IM_MUX1a|f[31]~33_combout\)))) # (!\ALU_Op[0]~input_o\ & (!\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[29]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[29]~29_combout\,
	datad => \IM_MUX1a|f[31]~33_combout\,
	combout => \DATA_MUX0|Mux1~3_combout\);

-- Location: LCCOMB_X35_Y27_N20
\ALU0|sub0|stage1|stage3|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage3|stage2|s~combout\ = \ALU0|sub0|stage1|stage3|stage2|s~0_combout\ $ (((\IM_MUX2a|Mux2~0_combout\ & (\IM_MUX1a|f[29]~29_combout\ & \ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\)) # (!\IM_MUX2a|Mux2~0_combout\ & 
-- ((\IM_MUX1a|f[29]~29_combout\) # (\ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage1|stage3|stage2|s~0_combout\,
	datab => \IM_MUX2a|Mux2~0_combout\,
	datac => \IM_MUX1a|f[29]~29_combout\,
	datad => \ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage3|stage2|s~combout\);

-- Location: LCCOMB_X35_Y27_N26
\DATA_MUX0|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux1~4_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux1~3_combout\ & (\IM_MUX1a|f[30]~30_combout\)) # (!\DATA_MUX0|Mux1~3_combout\ & ((!\ALU0|sub0|stage1|stage3|stage2|s~combout\))))) # (!\ALU_Op[1]~input_o\ & 
-- (((\DATA_MUX0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1a|f[30]~30_combout\,
	datac => \DATA_MUX0|Mux1~3_combout\,
	datad => \ALU0|sub0|stage1|stage3|stage2|s~combout\,
	combout => \DATA_MUX0|Mux1~4_combout\);

-- Location: LCCOMB_X35_Y27_N12
\A_Mux0|f[30]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[30]~33_combout\ = (\DATA_MUX0|Mux1~2_combout\ & ((\DATA_MUX0|Mux1~4_combout\) # ((!\DATA_MUX0|Mux7~0_combout\)))) # (!\DATA_MUX0|Mux1~2_combout\ & (((\Data_Mem0|data_out\(30) & \DATA_MUX0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux1~4_combout\,
	datab => \Data_Mem0|data_out\(30),
	datac => \DATA_MUX0|Mux1~2_combout\,
	datad => \DATA_MUX0|Mux7~0_combout\,
	combout => \A_Mux0|f[30]~33_combout\);

-- Location: LCCOMB_X33_Y27_N22
\A_Mux0|f[30]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[30]~34_combout\ = (!\A_MUX~input_o\ & (\A_Mux0|f[30]~33_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \A_MUX~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \A_Mux0|f[30]~33_combout\,
	combout => \A_Mux0|f[30]~34_combout\);

-- Location: FF_X33_Y27_N23
\Reg_A|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[30]~34_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(30));

-- Location: LCCOMB_X35_Y27_N24
\IM_MUX1a|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[30]~30_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(14))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(14),
	datab => \Reg_A|Q\(30),
	datad => \IM_MUX1~input_o\,
	combout => \IM_MUX1a|f[30]~30_combout\);

-- Location: LCCOMB_X35_Y29_N14
\DATA_MUX0|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux2~5_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[30]~30_combout\) # ((\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (((!\ALU_Op[1]~input_o\ & \IM_MUX1a|f[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX1a|f[30]~30_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1a|f[28]~28_combout\,
	combout => \DATA_MUX0|Mux2~5_combout\);

-- Location: LCCOMB_X35_Y29_N12
\ALU0|sub0|stage1|stage3|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage3|stage1|s~combout\ = \IM_MUX1a|f[29]~29_combout\ $ (\IM_MUX2a|Mux2~0_combout\ $ (\ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[29]~29_combout\,
	datab => \IM_MUX2a|Mux2~0_combout\,
	datad => \ALU0|sub0|stage1|stage3|stage0|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage3|stage1|s~combout\);

-- Location: LCCOMB_X35_Y29_N8
\DATA_MUX0|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux2~6_combout\ = (\DATA_MUX0|Mux2~5_combout\ & ((\IM_MUX1a|f[29]~29_combout\) # ((!\ALU_Op[1]~input_o\)))) # (!\DATA_MUX0|Mux2~5_combout\ & (((\ALU_Op[1]~input_o\ & !\ALU0|sub0|stage1|stage3|stage1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[29]~29_combout\,
	datab => \DATA_MUX0|Mux2~5_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU0|sub0|stage1|stage3|stage1|s~combout\,
	combout => \DATA_MUX0|Mux2~6_combout\);

-- Location: LCCOMB_X36_Y29_N10
\DATA_MUX0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux2~0_combout\ = (\IM_MUX1~input_o\ & ((\IR|Q\(13)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(29),
	datac => \IM_MUX1~input_o\,
	datad => \IR|Q\(13),
	combout => \DATA_MUX0|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y29_N10
\DATA_MUX0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux2~1_combout\ = (\IM_MUX1a|f[28]~28_combout\ & ((\IM_MUX2a|Mux3~0_combout\) # (\ALU0|add0|stage1|stage2|stage3|Cout~0_combout\))) # (!\IM_MUX1a|f[28]~28_combout\ & (\IM_MUX2a|Mux3~0_combout\ & \ALU0|add0|stage1|stage2|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[28]~28_combout\,
	datab => \IM_MUX2a|Mux3~0_combout\,
	datad => \ALU0|add0|stage1|stage2|stage3|Cout~0_combout\,
	combout => \DATA_MUX0|Mux2~1_combout\);

-- Location: LCCOMB_X35_Y29_N28
\DATA_MUX0|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux2~2_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux2~0_combout\ $ (\DATA_MUX0|Mux2~1_combout\)))) # (!\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[29]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[29]~29_combout\,
	datab => \DATA_MUX0|Mux2~0_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \DATA_MUX0|Mux2~1_combout\,
	combout => \DATA_MUX0|Mux2~2_combout\);

-- Location: LCCOMB_X35_Y29_N22
\DATA_MUX0|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux2~3_combout\ = (\IM_MUX2a|Mux2~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux2~2_combout\)))) # (!\IM_MUX2a|Mux2~0_combout\ & (\DATA_MUX0|Mux2~2_combout\ & (\ALU_Op[1]~input_o\ $ (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX2a|Mux2~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \DATA_MUX0|Mux2~2_combout\,
	combout => \DATA_MUX0|Mux2~3_combout\);

-- Location: IOIBUF_X0_Y57_N15
\DATA_IN[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(29),
	o => \DATA_IN[29]~input_o\);

-- Location: LCCOMB_X33_Y29_N18
\Data_Mem0|DATAMEM~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~71feeder_combout\ = \Reg_Mux0|f[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_Mux0|f[29]~29_combout\,
	combout => \Data_Mem0|DATAMEM~71feeder_combout\);

-- Location: FF_X33_Y29_N19
\Data_Mem0|DATAMEM~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~71feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~71_q\);

-- Location: LCCOMB_X35_Y29_N0
\Data_Mem0|data_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~30_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a29\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~71_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a29\,
	datad => \Data_Mem0|DATAMEM~71_q\,
	combout => \Data_Mem0|data_out~30_combout\);

-- Location: FF_X35_Y29_N1
\Data_Mem0|data_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(29));

-- Location: LCCOMB_X35_Y29_N2
\DATA_MUX0|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux2~4_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\) # (\Data_Mem0|data_out\(29))))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[29]~input_o\ & (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[29]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \Data_Mem0|data_out\(29),
	combout => \DATA_MUX0|Mux2~4_combout\);

-- Location: LCCOMB_X35_Y29_N18
\DATA_MUX0|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux2~7_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux2~4_combout\ & (\DATA_MUX0|Mux2~6_combout\)) # (!\DATA_MUX0|Mux2~4_combout\ & ((\DATA_MUX0|Mux2~3_combout\))))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux2~6_combout\,
	datac => \DATA_MUX0|Mux2~3_combout\,
	datad => \DATA_MUX0|Mux2~4_combout\,
	combout => \DATA_MUX0|Mux2~7_combout\);

-- Location: LCCOMB_X32_Y29_N14
\B_Mux0|f[29]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[29]~34_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux2~7_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux2~7_combout\,
	combout => \B_Mux0|f[29]~34_combout\);

-- Location: FF_X32_Y29_N15
\Reg_B|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[29]~34_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(29));

-- Location: LCCOMB_X33_Y29_N26
\Reg_Mux0|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[29]~29_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(29))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_B|Q\(29),
	datac => \REG_MUX~input_o\,
	datad => \Reg_A|Q\(29),
	combout => \Reg_Mux0|f[29]~29_combout\);

-- Location: LCCOMB_X36_Y28_N6
\Data_Mem0|DATAMEM~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~66feeder_combout\ = \Reg_Mux0|f[24]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg_Mux0|f[24]~24_combout\,
	combout => \Data_Mem0|DATAMEM~66feeder_combout\);

-- Location: FF_X36_Y28_N7
\Data_Mem0|DATAMEM~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~66feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~66_q\);

-- Location: LCCOMB_X35_Y28_N2
\Data_Mem0|data_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~25_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a24\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~66_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|data_out[2]~0_combout\,
	datab => \Data_Mem0|DATAMEM~41_q\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a24\,
	datad => \Data_Mem0|DATAMEM~66_q\,
	combout => \Data_Mem0|data_out~25_combout\);

-- Location: FF_X35_Y28_N3
\Data_Mem0|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(24));

-- Location: LCCOMB_X35_Y28_N0
\B_Mux0|f[24]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[24]~28_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux7~3_combout\ & (\DATA_MUX0|Mux7~5_combout\)) # (!\DATA_MUX0|Mux7~3_combout\ & ((\Data_Mem0|data_out\(24)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~5_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux7~3_combout\,
	datad => \Data_Mem0|data_out\(24),
	combout => \B_Mux0|f[24]~28_combout\);

-- Location: LCCOMB_X35_Y28_N18
\B_Mux0|f[24]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[24]~29_combout\ = (!\B_MUX~input_o\ & (\B_Mux0|f[24]~28_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \B_MUX~input_o\,
	datad => \B_Mux0|f[24]~28_combout\,
	combout => \B_Mux0|f[24]~29_combout\);

-- Location: FF_X35_Y28_N19
\Reg_B|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[24]~29_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(24));

-- Location: LCCOMB_X35_Y28_N28
\IM_MUX2a|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux7~0_combout\ = (!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(24) & !\IM_MUX2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \Reg_B|Q\(24),
	datad => \IM_MUX2[1]~input_o\,
	combout => \IM_MUX2a|Mux7~0_combout\);

-- Location: LCCOMB_X34_Y27_N2
\ALU0|add0|stage1|stage2|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage2|stage0|Cout~0_combout\ = (\IM_MUX2a|Mux7~0_combout\ & ((\ALU0|result_s~8_combout\) # ((\IM_MUX1a|f[24]~24_combout\) # (\ALU0|add0|stage1|stage1|stage3|Cout~1_combout\)))) # (!\IM_MUX2a|Mux7~0_combout\ & 
-- (\IM_MUX1a|f[24]~24_combout\ & ((\ALU0|result_s~8_combout\) # (\ALU0|add0|stage1|stage1|stage3|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|result_s~8_combout\,
	datab => \IM_MUX2a|Mux7~0_combout\,
	datac => \IM_MUX1a|f[24]~24_combout\,
	datad => \ALU0|add0|stage1|stage1|stage3|Cout~1_combout\,
	combout => \ALU0|add0|stage1|stage2|stage0|Cout~0_combout\);

-- Location: LCCOMB_X34_Y27_N0
\ALU0|add0|stage1|stage2|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage2|stage1|Cout~0_combout\ = (\IM_MUX1a|f[25]~25_combout\ & ((\ALU0|add0|stage1|stage2|stage0|Cout~0_combout\) # ((!\IM_MUX2a|Mux15~1_combout\ & \Reg_B|Q\(25))))) # (!\IM_MUX1a|f[25]~25_combout\ & (!\IM_MUX2a|Mux15~1_combout\ & 
-- (\Reg_B|Q\(25) & \ALU0|add0|stage1|stage2|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux15~1_combout\,
	datab => \IM_MUX1a|f[25]~25_combout\,
	datac => \Reg_B|Q\(25),
	datad => \ALU0|add0|stage1|stage2|stage0|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage2|stage1|Cout~0_combout\);

-- Location: LCCOMB_X34_Y27_N10
\ALU0|add0|stage1|stage2|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage2|stage2|Cout~0_combout\ = (\IM_MUX1a|f[26]~26_combout\ & ((\ALU0|add0|stage1|stage2|stage1|Cout~0_combout\) # ((!\IM_MUX2a|Mux15~1_combout\ & \Reg_B|Q\(26))))) # (!\IM_MUX1a|f[26]~26_combout\ & (!\IM_MUX2a|Mux15~1_combout\ & 
-- (\Reg_B|Q\(26) & \ALU0|add0|stage1|stage2|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux15~1_combout\,
	datab => \Reg_B|Q\(26),
	datac => \IM_MUX1a|f[26]~26_combout\,
	datad => \ALU0|add0|stage1|stage2|stage1|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage2|stage2|Cout~0_combout\);

-- Location: LCCOMB_X34_Y29_N12
\DATA_MUX0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~2_combout\ = (\IM_MUX1a|f[27]~27_combout\ & ((\IM_MUX2a|Mux4~0_combout\) # (\ALU0|add0|stage1|stage2|stage2|Cout~0_combout\))) # (!\IM_MUX1a|f[27]~27_combout\ & (\IM_MUX2a|Mux4~0_combout\ & \ALU0|add0|stage1|stage2|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[27]~27_combout\,
	datab => \IM_MUX2a|Mux4~0_combout\,
	datad => \ALU0|add0|stage1|stage2|stage2|Cout~0_combout\,
	combout => \DATA_MUX0|Mux3~2_combout\);

-- Location: LCCOMB_X34_Y29_N10
\DATA_MUX0|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~11_combout\ = \DATA_MUX0|Mux3~2_combout\ $ (((!\IM_MUX2[0]~input_o\ & (\Reg_B|Q\(28) & !\IM_MUX2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \Reg_B|Q\(28),
	datac => \IM_MUX2[1]~input_o\,
	datad => \DATA_MUX0|Mux3~2_combout\,
	combout => \DATA_MUX0|Mux3~11_combout\);

-- Location: LCCOMB_X34_Y29_N2
\DATA_MUX0|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~3_combout\ = \IM_MUX1a|f[28]~28_combout\ $ (((\ALU_Op[1]~input_o\ & \DATA_MUX0|Mux3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[28]~28_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \DATA_MUX0|Mux3~11_combout\,
	combout => \DATA_MUX0|Mux3~3_combout\);

-- Location: LCCOMB_X34_Y29_N24
\DATA_MUX0|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~4_combout\ = (\IM_MUX2a|Mux3~0_combout\ & (((\ALU_Op[0]~input_o\) # (\DATA_MUX0|Mux3~3_combout\)))) # (!\IM_MUX2a|Mux3~0_combout\ & (\DATA_MUX0|Mux3~3_combout\ & (\ALU_Op[1]~input_o\ $ (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX2a|Mux3~0_combout\,
	datad => \DATA_MUX0|Mux3~3_combout\,
	combout => \DATA_MUX0|Mux3~4_combout\);

-- Location: LCCOMB_X34_Y29_N18
\DATA_MUX0|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~5_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX[1]~input_o\)) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux3~4_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_IN[28]~input_o\,
	datad => \DATA_MUX0|Mux3~4_combout\,
	combout => \DATA_MUX0|Mux3~5_combout\);

-- Location: LCCOMB_X35_Y29_N16
\DATA_MUX0|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~6_combout\ = (\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\)) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[29]~29_combout\))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX1a|f[27]~27_combout\,
	datad => \IM_MUX1a|f[29]~29_combout\,
	combout => \DATA_MUX0|Mux3~6_combout\);

-- Location: LCCOMB_X34_Y29_N26
\ALU0|sub0|stage1|stage3|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage3|stage0|s~combout\ = \IM_MUX1a|f[28]~28_combout\ $ (\IM_MUX2a|Mux3~0_combout\ $ (((\ALU0|sub0|stage1|stage2|stage3|Cout~5_combout\) # (\ALU0|sub0|stage1|stage2|stage3|Cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[28]~28_combout\,
	datab => \ALU0|sub0|stage1|stage2|stage3|Cout~5_combout\,
	datac => \IM_MUX2a|Mux3~0_combout\,
	datad => \ALU0|sub0|stage1|stage2|stage3|Cout~4_combout\,
	combout => \ALU0|sub0|stage1|stage3|stage0|s~combout\);

-- Location: LCCOMB_X34_Y29_N8
\DATA_MUX0|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~7_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux3~6_combout\ & ((\IM_MUX1a|f[28]~28_combout\))) # (!\DATA_MUX0|Mux3~6_combout\ & (!\ALU0|sub0|stage1|stage3|stage0|s~combout\)))) # (!\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux3~6_combout\,
	datac => \ALU0|sub0|stage1|stage3|stage0|s~combout\,
	datad => \IM_MUX1a|f[28]~28_combout\,
	combout => \DATA_MUX0|Mux3~7_combout\);

-- Location: LCCOMB_X33_Y29_N16
\Data_Mem0|DATAMEM~70feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~70feeder_combout\ = \Reg_Mux0|f[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg_Mux0|f[28]~28_combout\,
	combout => \Data_Mem0|DATAMEM~70feeder_combout\);

-- Location: FF_X33_Y29_N17
\Data_Mem0|DATAMEM~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~70feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~70_q\);

-- Location: LCCOMB_X34_Y29_N6
\Data_Mem0|data_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~29_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a28\))) # (!\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM~70_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|data_out[2]~0_combout\,
	datab => \Data_Mem0|DATAMEM~41_q\,
	datac => \Data_Mem0|DATAMEM~70_q\,
	datad => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a28\,
	combout => \Data_Mem0|data_out~29_combout\);

-- Location: FF_X34_Y29_N7
\Data_Mem0|data_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(28));

-- Location: LCCOMB_X34_Y29_N4
\DATA_MUX0|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~10_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux3~5_combout\ & (\DATA_MUX0|Mux3~7_combout\)) # (!\DATA_MUX0|Mux3~5_combout\ & ((\Data_Mem0|data_out\(28)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux3~5_combout\,
	datac => \DATA_MUX0|Mux3~7_combout\,
	datad => \Data_Mem0|data_out\(28),
	combout => \DATA_MUX0|Mux3~10_combout\);

-- Location: LCCOMB_X33_Y29_N12
\A_Mux0|f[28]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[28]~31_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux3~10_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux3~10_combout\,
	combout => \A_Mux0|f[28]~31_combout\);

-- Location: FF_X33_Y29_N13
\Reg_A|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[28]~31_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(28));

-- Location: LCCOMB_X33_Y29_N6
\IM_MUX1a|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[28]~28_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(12))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(12),
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(28),
	combout => \IM_MUX1a|f[28]~28_combout\);

-- Location: LCCOMB_X34_Y28_N20
\DATA_MUX0|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux4~5_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\)))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[28]~28_combout\))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[26]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[26]~26_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \IM_MUX1a|f[28]~28_combout\,
	combout => \DATA_MUX0|Mux4~5_combout\);

-- Location: LCCOMB_X34_Y28_N16
\ALU0|sub0|stage1|stage2|stage3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage2|stage3|s~0_combout\ = \IM_MUX2a|Mux4~0_combout\ $ (((\IM_MUX1~input_o\ & ((\IR|Q\(11)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(27),
	datab => \IM_MUX2a|Mux4~0_combout\,
	datac => \IR|Q\(11),
	datad => \IM_MUX1~input_o\,
	combout => \ALU0|sub0|stage1|stage2|stage3|s~0_combout\);

-- Location: LCCOMB_X34_Y28_N6
\ALU0|sub0|stage1|stage2|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage2|stage3|s~combout\ = \ALU0|sub0|stage1|stage2|stage3|s~0_combout\ $ (((\IM_MUX1a|f[26]~26_combout\ & ((\ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\) # (!\IM_MUX2a|Mux5~0_combout\))) # (!\IM_MUX1a|f[26]~26_combout\ & 
-- (\ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\ & !\IM_MUX2a|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[26]~26_combout\,
	datab => \ALU0|sub0|stage1|stage2|stage3|s~0_combout\,
	datac => \ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\,
	datad => \IM_MUX2a|Mux5~0_combout\,
	combout => \ALU0|sub0|stage1|stage2|stage3|s~combout\);

-- Location: LCCOMB_X34_Y28_N14
\DATA_MUX0|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux4~6_combout\ = (\DATA_MUX0|Mux4~5_combout\ & ((\IM_MUX1a|f[27]~27_combout\) # ((!\ALU_Op[1]~input_o\)))) # (!\DATA_MUX0|Mux4~5_combout\ & (((\ALU_Op[1]~input_o\ & !\ALU0|sub0|stage1|stage2|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[27]~27_combout\,
	datab => \DATA_MUX0|Mux4~5_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU0|sub0|stage1|stage2|stage3|s~combout\,
	combout => \DATA_MUX0|Mux4~6_combout\);

-- Location: LCCOMB_X34_Y28_N26
\DATA_MUX0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux4~0_combout\ = (\IM_MUX1~input_o\ & ((\IR|Q\(11)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(27),
	datab => \IM_MUX1~input_o\,
	datac => \IR|Q\(11),
	combout => \DATA_MUX0|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y28_N6
\DATA_MUX0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux4~1_combout\ = (\IM_MUX1a|f[26]~26_combout\ & ((\IM_MUX2a|Mux5~0_combout\) # (\ALU0|add0|stage1|stage2|stage1|Cout~0_combout\))) # (!\IM_MUX1a|f[26]~26_combout\ & (\IM_MUX2a|Mux5~0_combout\ & \ALU0|add0|stage1|stage2|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[26]~26_combout\,
	datac => \IM_MUX2a|Mux5~0_combout\,
	datad => \ALU0|add0|stage1|stage2|stage1|Cout~0_combout\,
	combout => \DATA_MUX0|Mux4~1_combout\);

-- Location: LCCOMB_X33_Y28_N12
\DATA_MUX0|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux4~2_combout\ = (\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux4~0_combout\ $ (((\DATA_MUX0|Mux4~1_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\IM_MUX1a|f[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux4~0_combout\,
	datac => \IM_MUX1a|f[27]~27_combout\,
	datad => \DATA_MUX0|Mux4~1_combout\,
	combout => \DATA_MUX0|Mux4~2_combout\);

-- Location: LCCOMB_X33_Y28_N22
\DATA_MUX0|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux4~3_combout\ = (\IM_MUX2a|Mux4~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux4~2_combout\)))) # (!\IM_MUX2a|Mux4~0_combout\ & (\DATA_MUX0|Mux4~2_combout\ & (\ALU_Op[1]~input_o\ $ (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX2a|Mux4~0_combout\,
	datad => \DATA_MUX0|Mux4~2_combout\,
	combout => \DATA_MUX0|Mux4~3_combout\);

-- Location: IOIBUF_X0_Y44_N22
\DATA_IN[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(27),
	o => \DATA_IN[27]~input_o\);

-- Location: LCCOMB_X34_Y28_N28
\Data_Mem0|DATAMEM~69feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~69feeder_combout\ = \Reg_Mux0|f[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_Mux0|f[27]~27_combout\,
	combout => \Data_Mem0|DATAMEM~69feeder_combout\);

-- Location: FF_X34_Y28_N29
\Data_Mem0|DATAMEM~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~69feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~69_q\);

-- Location: LCCOMB_X33_Y28_N28
\Data_Mem0|data_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~28_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a27\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~69_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|data_out[2]~0_combout\,
	datab => \Data_Mem0|DATAMEM~41_q\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a27\,
	datad => \Data_Mem0|DATAMEM~69_q\,
	combout => \Data_Mem0|data_out~28_combout\);

-- Location: FF_X33_Y28_N29
\Data_Mem0|data_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(27));

-- Location: LCCOMB_X33_Y28_N18
\DATA_MUX0|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux4~4_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\) # (\Data_Mem0|data_out\(27))))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[27]~input_o\ & (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_IN[27]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \Data_Mem0|data_out\(27),
	combout => \DATA_MUX0|Mux4~4_combout\);

-- Location: LCCOMB_X33_Y28_N16
\DATA_MUX0|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux4~7_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux4~4_combout\ & (\DATA_MUX0|Mux4~6_combout\)) # (!\DATA_MUX0|Mux4~4_combout\ & ((\DATA_MUX0|Mux4~3_combout\))))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux4~6_combout\,
	datac => \DATA_MUX0|Mux4~3_combout\,
	datad => \DATA_MUX0|Mux4~4_combout\,
	combout => \DATA_MUX0|Mux4~7_combout\);

-- Location: LCCOMB_X32_Y28_N8
\A_Mux0|f[27]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[27]~30_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux4~7_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux4~7_combout\,
	combout => \A_Mux0|f[27]~30_combout\);

-- Location: FF_X32_Y28_N9
\Reg_A|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[27]~30_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(27));

-- Location: LCCOMB_X34_Y28_N12
\IM_MUX1a|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[27]~27_combout\ = (\IM_MUX1~input_o\ & ((\IR|Q\(11)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(27),
	datab => \IM_MUX1~input_o\,
	datac => \IR|Q\(11),
	combout => \IM_MUX1a|f[27]~27_combout\);

-- Location: LCCOMB_X34_Y28_N22
\DATA_MUX0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux5~1_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\)))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[27]~27_combout\)) # (!\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[25]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[27]~27_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \IM_MUX1a|f[25]~25_combout\,
	combout => \DATA_MUX0|Mux5~1_combout\);

-- Location: LCCOMB_X33_Y28_N2
\ALU0|sub0|stage1|stage2|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage2|stage2|s~combout\ = \IM_MUX2a|Mux5~0_combout\ $ (\ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\ $ (\IM_MUX1a|f[26]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux5~0_combout\,
	datac => \ALU0|sub0|stage1|stage2|stage1|Cout~0_combout\,
	datad => \IM_MUX1a|f[26]~26_combout\,
	combout => \ALU0|sub0|stage1|stage2|stage2|s~combout\);

-- Location: LCCOMB_X33_Y28_N4
\DATA_MUX0|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux5~2_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux5~1_combout\ & (\IM_MUX1a|f[26]~26_combout\)) # (!\DATA_MUX0|Mux5~1_combout\ & ((!\ALU0|sub0|stage1|stage2|stage2|s~combout\))))) # (!\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux5~1_combout\,
	datac => \IM_MUX1a|f[26]~26_combout\,
	datad => \ALU0|sub0|stage1|stage2|stage2|s~combout\,
	combout => \DATA_MUX0|Mux5~2_combout\);

-- Location: IOIBUF_X0_Y12_N15
\DATA_IN[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(26),
	o => \DATA_IN[26]~input_o\);

-- Location: LCCOMB_X33_Y28_N20
\DATA_MUX0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux5~0_combout\ = \IM_MUX1a|f[26]~26_combout\ $ (((\ALU_Op[1]~input_o\ & \ALU0|add0|stage1|stage2|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[26]~26_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU0|add0|stage1|stage2|stage1|Cout~0_combout\,
	combout => \DATA_MUX0|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y28_N0
\DATA_MUX0|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux5~6_combout\ = (\IM_MUX2a|Mux5~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux5~0_combout\)))) # (!\IM_MUX2a|Mux5~0_combout\ & (\DATA_MUX0|Mux5~0_combout\ & (\ALU_Op[1]~input_o\ $ (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX2a|Mux5~0_combout\,
	datad => \DATA_MUX0|Mux5~0_combout\,
	combout => \DATA_MUX0|Mux5~6_combout\);

-- Location: LCCOMB_X33_Y28_N14
\DATA_MUX0|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux5~7_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\)))) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux5~6_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_IN[26]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux5~6_combout\,
	combout => \DATA_MUX0|Mux5~7_combout\);

-- Location: LCCOMB_X34_Y28_N18
\Data_Mem0|DATAMEM~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~68feeder_combout\ = \Reg_Mux0|f[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg_Mux0|f[26]~26_combout\,
	combout => \Data_Mem0|DATAMEM~68feeder_combout\);

-- Location: FF_X34_Y28_N19
\Data_Mem0|DATAMEM~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~68feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~68_q\);

-- Location: LCCOMB_X33_Y28_N10
\Data_Mem0|data_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~27_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a26\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~68_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|data_out[2]~0_combout\,
	datab => \Data_Mem0|DATAMEM~41_q\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a26\,
	datad => \Data_Mem0|DATAMEM~68_q\,
	combout => \Data_Mem0|data_out~27_combout\);

-- Location: FF_X33_Y28_N11
\Data_Mem0|data_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(26));

-- Location: LCCOMB_X33_Y28_N26
\DATA_MUX0|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux5~5_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux5~7_combout\ & (\DATA_MUX0|Mux5~2_combout\)) # (!\DATA_MUX0|Mux5~7_combout\ & ((\Data_Mem0|data_out\(26)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux5~2_combout\,
	datac => \DATA_MUX0|Mux5~7_combout\,
	datad => \Data_Mem0|data_out\(26),
	combout => \DATA_MUX0|Mux5~5_combout\);

-- Location: LCCOMB_X32_Y28_N14
\A_Mux0|f[26]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[26]~29_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux5~5_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux5~5_combout\,
	combout => \A_Mux0|f[26]~29_combout\);

-- Location: FF_X32_Y28_N15
\Reg_A|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[26]~29_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(26));

-- Location: LCCOMB_X33_Y29_N14
\IM_MUX1a|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[26]~26_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(10))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(10),
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(26),
	combout => \IM_MUX1a|f[26]~26_combout\);

-- Location: LCCOMB_X33_Y27_N14
\DATA_MUX0|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux6~4_combout\ = (\ALU_Op[0]~input_o\ & ((\ALU_Op[1]~input_o\) # ((\IM_MUX1a|f[26]~26_combout\)))) # (!\ALU_Op[0]~input_o\ & (!\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[24]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[24]~24_combout\,
	datad => \IM_MUX1a|f[26]~26_combout\,
	combout => \DATA_MUX0|Mux6~4_combout\);

-- Location: LCCOMB_X33_Y27_N20
\DATA_MUX0|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux6~3_combout\ = \ALU0|sub0|stage1|stage2|stage0|Cout~0_combout\ $ (((!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & \Reg_B|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \Reg_B|Q\(25),
	datad => \ALU0|sub0|stage1|stage2|stage0|Cout~0_combout\,
	combout => \DATA_MUX0|Mux6~3_combout\);

-- Location: LCCOMB_X33_Y27_N24
\DATA_MUX0|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux6~5_combout\ = (\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[25]~25_combout\ $ (((!\DATA_MUX0|Mux6~4_combout\ & !\DATA_MUX0|Mux6~3_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\DATA_MUX0|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[25]~25_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_MUX0|Mux6~4_combout\,
	datad => \DATA_MUX0|Mux6~3_combout\,
	combout => \DATA_MUX0|Mux6~5_combout\);

-- Location: LCCOMB_X33_Y27_N28
\IM_MUX2a|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux6~0_combout\ = (!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & \Reg_B|Q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \Reg_B|Q\(25),
	combout => \IM_MUX2a|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y27_N30
\ALU0|result_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|result_s~4_combout\ = (!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & (\Reg_B|Q\(25) & \IM_MUX1a|f[25]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \Reg_B|Q\(25),
	datad => \IM_MUX1a|f[25]~25_combout\,
	combout => \ALU0|result_s~4_combout\);

-- Location: LCCOMB_X34_Y27_N24
\ALU0|add0|stage1|stage2|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage2|stage1|s~combout\ = \IM_MUX2a|Mux6~0_combout\ $ (\ALU0|add0|stage1|stage2|stage0|Cout~0_combout\ $ (\IM_MUX1a|f[25]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux6~0_combout\,
	datab => \ALU0|add0|stage1|stage2|stage0|Cout~0_combout\,
	datad => \IM_MUX1a|f[25]~25_combout\,
	combout => \ALU0|add0|stage1|stage2|stage1|s~combout\);

-- Location: LCCOMB_X34_Y27_N30
\DATA_MUX0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux6~0_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\) # (\ALU0|add0|stage1|stage2|stage1|s~combout\)))) # (!\ALU_Op[1]~input_o\ & (\ALU0|result_s~4_combout\ & (!\ALU_Op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU0|result_s~4_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU0|add0|stage1|stage2|stage1|s~combout\,
	combout => \DATA_MUX0|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y27_N8
\DATA_MUX0|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux6~1_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux6~0_combout\) # ((!\DATA_MUX0|Mux6~0_combout\ & \IM_MUX1a|f[25]~25_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\DATA_MUX0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux6~0_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \DATA_MUX0|Mux6~0_combout\,
	datad => \IM_MUX1a|f[25]~25_combout\,
	combout => \DATA_MUX0|Mux6~1_combout\);

-- Location: FF_X35_Y27_N25
\Data_Mem0|DATAMEM~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Reg_Mux0|f[25]~25_combout\,
	sload => VCC,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~67_q\);

-- Location: LCCOMB_X34_Y27_N26
\Data_Mem0|data_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~26_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a25\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~67_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|data_out[2]~0_combout\,
	datab => \Data_Mem0|DATAMEM~41_q\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a25\,
	datad => \Data_Mem0|DATAMEM~67_q\,
	combout => \Data_Mem0|data_out~26_combout\);

-- Location: FF_X34_Y27_N27
\Data_Mem0|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(25));

-- Location: IOIBUF_X27_Y73_N22
\DATA_IN[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(25),
	o => \DATA_IN[25]~input_o\);

-- Location: LCCOMB_X34_Y27_N12
\DATA_MUX0|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux6~2_combout\ = (\DATA_MUX[1]~input_o\ & (\DATA_MUX0|Mux7~0_combout\)) # (!\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\ & (\Data_Mem0|data_out\(25))) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_IN[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \Data_Mem0|data_out\(25),
	datad => \DATA_IN[25]~input_o\,
	combout => \DATA_MUX0|Mux6~2_combout\);

-- Location: LCCOMB_X34_Y27_N22
\DATA_MUX0|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux6~6_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux6~2_combout\ & (\DATA_MUX0|Mux6~5_combout\)) # (!\DATA_MUX0|Mux6~2_combout\ & ((\DATA_MUX0|Mux6~1_combout\))))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux6~5_combout\,
	datac => \DATA_MUX0|Mux6~1_combout\,
	datad => \DATA_MUX0|Mux6~2_combout\,
	combout => \DATA_MUX0|Mux6~6_combout\);

-- Location: LCCOMB_X33_Y27_N12
\A_Mux0|f[25]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[25]~28_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux6~6_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \A_MUX~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux6~6_combout\,
	combout => \A_Mux0|f[25]~28_combout\);

-- Location: FF_X33_Y27_N13
\Reg_A|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[25]~28_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(25));

-- Location: LCCOMB_X33_Y27_N18
\IM_MUX1a|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[25]~25_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(9))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(9),
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(25),
	combout => \IM_MUX1a|f[25]~25_combout\);

-- Location: LCCOMB_X35_Y26_N26
\DATA_MUX0|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux7~4_combout\ = (\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\)) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[25]~25_combout\))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX1a|f[23]~23_combout\,
	datad => \IM_MUX1a|f[25]~25_combout\,
	combout => \DATA_MUX0|Mux7~4_combout\);

-- Location: LCCOMB_X35_Y28_N12
\ALU0|sub0|stage1|stage2|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage2|stage0|s~combout\ = \IM_MUX1a|f[24]~24_combout\ $ (\IM_MUX2a|Mux7~0_combout\ $ (((\ALU0|sub0|stage1|stage1|stage3|Cout~5_combout\) # (\ALU0|sub0|stage1|stage1|stage3|Cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[24]~24_combout\,
	datab => \IM_MUX2a|Mux7~0_combout\,
	datac => \ALU0|sub0|stage1|stage1|stage3|Cout~5_combout\,
	datad => \ALU0|sub0|stage1|stage1|stage3|Cout~4_combout\,
	combout => \ALU0|sub0|stage1|stage2|stage0|s~combout\);

-- Location: LCCOMB_X35_Y28_N22
\DATA_MUX0|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux7~5_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux7~4_combout\ & (\IM_MUX1a|f[24]~24_combout\)) # (!\DATA_MUX0|Mux7~4_combout\ & ((!\ALU0|sub0|stage1|stage2|stage0|s~combout\))))) # (!\ALU_Op[1]~input_o\ & 
-- (((\DATA_MUX0|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[24]~24_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_MUX0|Mux7~4_combout\,
	datad => \ALU0|sub0|stage1|stage2|stage0|s~combout\,
	combout => \DATA_MUX0|Mux7~5_combout\);

-- Location: LCCOMB_X35_Y28_N8
\DATA_MUX0|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux7~6_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux7~3_combout\ & (\DATA_MUX0|Mux7~5_combout\)) # (!\DATA_MUX0|Mux7~3_combout\ & ((\Data_Mem0|data_out\(24)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~5_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux7~3_combout\,
	datad => \Data_Mem0|data_out\(24),
	combout => \DATA_MUX0|Mux7~6_combout\);

-- Location: LCCOMB_X32_Y28_N4
\A_Mux0|f[24]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[24]~27_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux7~6_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux7~6_combout\,
	combout => \A_Mux0|f[24]~27_combout\);

-- Location: FF_X32_Y28_N5
\Reg_A|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[24]~27_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(24));

-- Location: LCCOMB_X36_Y28_N18
\IM_MUX1a|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[24]~24_combout\ = (\IM_MUX1~input_o\ & ((\IR|Q\(8)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(24),
	datad => \IR|Q\(8),
	combout => \IM_MUX1a|f[24]~24_combout\);

-- Location: LCCOMB_X36_Y26_N26
\DATA_MUX0|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux8~3_combout\ = (\ALU_Op[0]~input_o\ & (((\ALU_Op[1]~input_o\) # (\IM_MUX1a|f[24]~24_combout\)))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[22]~22_combout\ & (!\ALU_Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX1a|f[22]~22_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1a|f[24]~24_combout\,
	combout => \DATA_MUX0|Mux8~3_combout\);

-- Location: LCCOMB_X36_Y26_N28
\ALU0|sub0|stage1|stage1|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage3|s~combout\ = \ALU0|sub0|stage1|stage1|stage3|s~0_combout\ $ (((\IM_MUX1a|f[22]~22_combout\ & ((\ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\) # (!\IM_MUX2a|Mux9~0_combout\))) # (!\IM_MUX1a|f[22]~22_combout\ & 
-- (\ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\ & !\IM_MUX2a|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage1|stage1|stage3|s~0_combout\,
	datab => \IM_MUX1a|f[22]~22_combout\,
	datac => \ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\,
	datad => \IM_MUX2a|Mux9~0_combout\,
	combout => \ALU0|sub0|stage1|stage1|stage3|s~combout\);

-- Location: LCCOMB_X36_Y26_N4
\DATA_MUX0|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux8~4_combout\ = (\DATA_MUX0|Mux8~3_combout\ & ((\IM_MUX1a|f[23]~23_combout\) # ((!\ALU_Op[1]~input_o\)))) # (!\DATA_MUX0|Mux8~3_combout\ & (((\ALU_Op[1]~input_o\ & !\ALU0|sub0|stage1|stage1|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux8~3_combout\,
	datab => \IM_MUX1a|f[23]~23_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU0|sub0|stage1|stage1|stage3|s~combout\,
	combout => \DATA_MUX0|Mux8~4_combout\);

-- Location: IOIBUF_X35_Y0_N15
\DATA_IN[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(23),
	o => \DATA_IN[23]~input_o\);

-- Location: LCCOMB_X39_Y26_N28
\Data_Mem0|DATAMEM~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~65feeder_combout\ = \Reg_Mux0|f[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_Mux0|f[23]~23_combout\,
	combout => \Data_Mem0|DATAMEM~65feeder_combout\);

-- Location: FF_X39_Y26_N29
\Data_Mem0|DATAMEM~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~65feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~65_q\);

-- Location: LCCOMB_X36_Y26_N20
\Data_Mem0|data_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~24_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a23\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~65_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|data_out[2]~0_combout\,
	datab => \Data_Mem0|DATAMEM~41_q\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a23\,
	datad => \Data_Mem0|DATAMEM~65_q\,
	combout => \Data_Mem0|data_out~24_combout\);

-- Location: FF_X36_Y26_N21
\Data_Mem0|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(23));

-- Location: LCCOMB_X36_Y26_N2
\DATA_MUX0|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux8~2_combout\ = (\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux7~0_combout\)))) # (!\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\ & ((\Data_Mem0|data_out\(23)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[23]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \Data_Mem0|data_out\(23),
	combout => \DATA_MUX0|Mux8~2_combout\);

-- Location: LCCOMB_X36_Y26_N18
\DATA_MUX0|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux8~5_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux8~2_combout\ & ((\DATA_MUX0|Mux8~4_combout\))) # (!\DATA_MUX0|Mux8~2_combout\ & (\DATA_MUX0|Mux8~1_combout\)))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux8~1_combout\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux8~4_combout\,
	datad => \DATA_MUX0|Mux8~2_combout\,
	combout => \DATA_MUX0|Mux8~5_combout\);

-- Location: LCCOMB_X35_Y26_N20
\A_Mux0|f[23]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[23]~26_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux8~5_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \A_MUX~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux8~5_combout\,
	combout => \A_Mux0|f[23]~26_combout\);

-- Location: FF_X35_Y26_N21
\Reg_A|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[23]~26_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(23));

-- Location: LCCOMB_X39_Y26_N8
\Reg_Mux0|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[23]~23_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(23)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_A|Q\(23),
	datac => \REG_MUX~input_o\,
	datad => \Reg_B|Q\(23),
	combout => \Reg_Mux0|f[23]~23_combout\);

-- Location: LCCOMB_X36_Y28_N30
\Data_Mem0|data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~23_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a22\))) # (!\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM~64_q\,
	datad => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a22\,
	combout => \Data_Mem0|data_out~23_combout\);

-- Location: FF_X36_Y28_N31
\Data_Mem0|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(22));

-- Location: LCCOMB_X35_Y26_N18
\A_Mux0|f[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[22]~24_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux9~6_combout\ & (\DATA_MUX0|Mux9~2_combout\)) # (!\DATA_MUX0|Mux9~6_combout\ & ((\Data_Mem0|data_out\(22)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux9~2_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux9~6_combout\,
	datad => \Data_Mem0|data_out\(22),
	combout => \A_Mux0|f[22]~24_combout\);

-- Location: LCCOMB_X35_Y26_N6
\A_Mux0|f[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[22]~25_combout\ = (!\A_MUX~input_o\ & (\A_Mux0|f[22]~24_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \A_MUX~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \A_Mux0|f[22]~24_combout\,
	combout => \A_Mux0|f[22]~25_combout\);

-- Location: FF_X35_Y26_N7
\Reg_A|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[22]~25_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(22));

-- Location: LCCOMB_X38_Y27_N18
\IM_MUX1a|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[22]~22_combout\ = (\IM_MUX1~input_o\ & ((\IR|Q\(6)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(22),
	datad => \IR|Q\(6),
	combout => \IM_MUX1a|f[22]~22_combout\);

-- Location: LCCOMB_X38_Y26_N18
\DATA_MUX0|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux10~3_combout\ = (\ALU_Op[0]~input_o\ & (((\IM_MUX1a|f[22]~22_combout\) # (\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[20]~20_combout\ & ((!\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX1a|f[20]~20_combout\,
	datac => \IM_MUX1a|f[22]~22_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux10~3_combout\);

-- Location: LCCOMB_X38_Y29_N2
\ALU0|sub0|stage1|stage1|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage1|s~combout\ = \ALU0|sub0|stage1|stage1|stage0|Cout~0_combout\ $ (\IM_MUX2a|Mux10~0_combout\ $ (\IM_MUX1a|f[21]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage1|stage1|stage0|Cout~0_combout\,
	datab => \IM_MUX2a|Mux10~0_combout\,
	datac => \IM_MUX1a|f[21]~21_combout\,
	combout => \ALU0|sub0|stage1|stage1|stage1|s~combout\);

-- Location: LCCOMB_X38_Y29_N4
\DATA_MUX0|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux10~4_combout\ = (\DATA_MUX0|Mux10~3_combout\ & (((\IM_MUX1a|f[21]~21_combout\)) # (!\ALU_Op[1]~input_o\))) # (!\DATA_MUX0|Mux10~3_combout\ & (\ALU_Op[1]~input_o\ & ((!\ALU0|sub0|stage1|stage1|stage1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux10~3_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[21]~21_combout\,
	datad => \ALU0|sub0|stage1|stage1|stage1|s~combout\,
	combout => \DATA_MUX0|Mux10~4_combout\);

-- Location: LCCOMB_X40_Y28_N0
\A_Mux0|f[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[21]~22_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX[0]~input_o\ & ((\DATA_MUX0|Mux10~2_combout\))) # (!\DATA_MUX[0]~input_o\ & ((!\DATA_MUX0|Mux10~2_combout\) # (!\DATA_MUX0|Mux10~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux10~4_combout\,
	datad => \DATA_MUX0|Mux10~2_combout\,
	combout => \A_Mux0|f[21]~22_combout\);

-- Location: LCCOMB_X40_Y28_N14
\A_Mux0|f[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[21]~23_combout\ = (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux10~2_combout\ & ((!\A_Mux0|f[21]~22_combout\))) # (!\DATA_MUX0|Mux10~2_combout\ & (\DATA_MUX0|Mux10~1_combout\ & \A_Mux0|f[21]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux10~2_combout\,
	datab => \DATA_MUX0|Mux10~1_combout\,
	datac => \A_MUX~input_o\,
	datad => \A_Mux0|f[21]~22_combout\,
	combout => \A_Mux0|f[21]~23_combout\);

-- Location: FF_X40_Y28_N15
\Reg_A|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[21]~23_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(21));

-- Location: LCCOMB_X40_Y28_N4
\IM_MUX1a|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[21]~21_combout\ = (\IM_MUX1~input_o\ & ((\IR|Q\(5)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \Reg_A|Q\(21),
	datad => \IR|Q\(5),
	combout => \IM_MUX1a|f[21]~21_combout\);

-- Location: LCCOMB_X35_Y26_N2
\DATA_MUX0|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux9~1_combout\ = (\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\)) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[23]~23_combout\))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[21]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX1a|f[21]~21_combout\,
	datad => \IM_MUX1a|f[23]~23_combout\,
	combout => \DATA_MUX0|Mux9~1_combout\);

-- Location: LCCOMB_X35_Y26_N28
\ALU0|sub0|stage1|stage1|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage2|s~combout\ = \IM_MUX1a|f[22]~22_combout\ $ (\IM_MUX2a|Mux9~0_combout\ $ (\ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[22]~22_combout\,
	datab => \IM_MUX2a|Mux9~0_combout\,
	datad => \ALU0|sub0|stage1|stage1|stage1|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage1|stage2|s~combout\);

-- Location: LCCOMB_X35_Y26_N12
\DATA_MUX0|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux9~2_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux9~1_combout\ & (\IM_MUX1a|f[22]~22_combout\)) # (!\DATA_MUX0|Mux9~1_combout\ & ((!\ALU0|sub0|stage1|stage1|stage2|s~combout\))))) # (!\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux9~1_combout\,
	datac => \IM_MUX1a|f[22]~22_combout\,
	datad => \ALU0|sub0|stage1|stage1|stage2|s~combout\,
	combout => \DATA_MUX0|Mux9~2_combout\);

-- Location: LCCOMB_X35_Y26_N14
\DATA_MUX0|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux9~3_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux9~6_combout\ & (\DATA_MUX0|Mux9~2_combout\)) # (!\DATA_MUX0|Mux9~6_combout\ & ((\Data_Mem0|data_out\(22)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux9~2_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux9~6_combout\,
	datad => \Data_Mem0|data_out\(22),
	combout => \DATA_MUX0|Mux9~3_combout\);

-- Location: LCCOMB_X36_Y26_N16
\B_Mux0|f[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[22]~26_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux9~3_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \B_MUX~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux9~3_combout\,
	combout => \B_Mux0|f[22]~26_combout\);

-- Location: FF_X36_Y26_N17
\Reg_B|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[22]~26_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(22));

-- Location: LCCOMB_X36_Y28_N4
\Reg_Mux0|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[22]~22_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(22))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_B|Q\(22),
	datac => \REG_MUX~input_o\,
	datad => \Reg_A|Q\(22),
	combout => \Reg_Mux0|f[22]~22_combout\);

-- Location: FF_X36_Y28_N23
\Data_Mem0|DATAMEM~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[21]~21_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~63_q\);

-- Location: LCCOMB_X35_Y28_N16
\Data_Mem0|data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~22_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a21\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~63_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a21\,
	datac => \Data_Mem0|data_out[2]~0_combout\,
	datad => \Data_Mem0|DATAMEM~63_q\,
	combout => \Data_Mem0|data_out~22_combout\);

-- Location: FF_X35_Y28_N17
\Data_Mem0|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(21));

-- Location: LCCOMB_X35_Y28_N14
\DATA_MUX0|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux10~2_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\) # (\Data_Mem0|data_out\(21))))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[21]~input_o\ & (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[21]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \Data_Mem0|data_out\(21),
	combout => \DATA_MUX0|Mux10~2_combout\);

-- Location: LCCOMB_X35_Y28_N24
\DATA_MUX0|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux10~5_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux10~2_combout\ & ((\DATA_MUX0|Mux10~4_combout\))) # (!\DATA_MUX0|Mux10~2_combout\ & (\DATA_MUX0|Mux10~1_combout\)))) # (!\DATA_MUX[1]~input_o\ & (\DATA_MUX0|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux10~2_combout\,
	datac => \DATA_MUX0|Mux10~1_combout\,
	datad => \DATA_MUX0|Mux10~4_combout\,
	combout => \DATA_MUX0|Mux10~5_combout\);

-- Location: LCCOMB_X35_Y28_N4
\B_Mux0|f[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[21]~25_combout\ = (!\B_MUX~input_o\ & (\DATA_MUX0|Mux10~5_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \B_MUX~input_o\,
	datad => \DATA_MUX0|Mux10~5_combout\,
	combout => \B_Mux0|f[21]~25_combout\);

-- Location: FF_X35_Y28_N5
\Reg_B|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[21]~25_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(21));

-- Location: LCCOMB_X36_Y28_N22
\Reg_Mux0|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[21]~21_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(21))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_B|Q\(21),
	datac => \REG_MUX~input_o\,
	datad => \Reg_A|Q\(21),
	combout => \Reg_Mux0|f[21]~21_combout\);

-- Location: FF_X33_Y29_N23
\Data_Mem0|DATAMEM~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Reg_Mux0|f[20]~20_combout\,
	sload => VCC,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~62_q\);

-- Location: LCCOMB_X38_Y29_N16
\Data_Mem0|data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~21_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a20\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~62_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|data_out[2]~0_combout\,
	datab => \Data_Mem0|DATAMEM~41_q\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a20\,
	datad => \Data_Mem0|DATAMEM~62_q\,
	combout => \Data_Mem0|data_out~21_combout\);

-- Location: FF_X38_Y29_N17
\Data_Mem0|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(20));

-- Location: LCCOMB_X36_Y29_N24
\DATA_MUX0|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux11~3_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\)))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[21]~21_combout\))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1a|f[19]~19_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \IM_MUX1a|f[21]~21_combout\,
	combout => \DATA_MUX0|Mux11~3_combout\);

-- Location: LCCOMB_X38_Y29_N6
\ALU0|sub0|stage1|stage1|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage1|stage0|s~combout\ = \IM_MUX1a|f[20]~20_combout\ $ (\IM_MUX2a|Mux11~0_combout\ $ (\ALU0|sub0|stage1|stage0|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[20]~20_combout\,
	datac => \IM_MUX2a|Mux11~0_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage3|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage1|stage0|s~combout\);

-- Location: LCCOMB_X38_Y29_N8
\DATA_MUX0|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux11~4_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux11~3_combout\ & (\IM_MUX1a|f[20]~20_combout\)) # (!\DATA_MUX0|Mux11~3_combout\ & ((!\ALU0|sub0|stage1|stage1|stage0|s~combout\))))) # (!\ALU_Op[1]~input_o\ & 
-- (((\DATA_MUX0|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[20]~20_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_MUX0|Mux11~3_combout\,
	datad => \ALU0|sub0|stage1|stage1|stage0|s~combout\,
	combout => \DATA_MUX0|Mux11~4_combout\);

-- Location: LCCOMB_X38_Y29_N10
\B_Mux0|f[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[20]~23_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux11~2_combout\ & ((\DATA_MUX0|Mux11~4_combout\))) # (!\DATA_MUX0|Mux11~2_combout\ & (\Data_Mem0|data_out\(20))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \Data_Mem0|data_out\(20),
	datac => \DATA_MUX0|Mux11~4_combout\,
	datad => \DATA_MUX0|Mux11~2_combout\,
	combout => \B_Mux0|f[20]~23_combout\);

-- Location: LCCOMB_X38_Y29_N28
\B_Mux0|f[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[20]~24_combout\ = (!\B_MUX~input_o\ & (\B_Mux0|f[20]~23_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \B_MUX~input_o\,
	datad => \B_Mux0|f[20]~23_combout\,
	combout => \B_Mux0|f[20]~24_combout\);

-- Location: FF_X38_Y29_N29
\Reg_B|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[20]~24_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(20));

-- Location: LCCOMB_X38_Y29_N30
\IM_MUX2a|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2a|Mux11~0_combout\ = (!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & \Reg_B|Q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2[0]~input_o\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \Reg_B|Q\(20),
	combout => \IM_MUX2a|Mux11~0_combout\);

-- Location: LCCOMB_X38_Y26_N2
\DATA_MUX0|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux11~0_combout\ = \IM_MUX1a|f[20]~20_combout\ $ (((\ALU_Op[1]~input_o\ & ((\ALU0|result_s~7_combout\) # (\ALU0|add0|stage1|stage0|stage3|Cout~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1a|f[20]~20_combout\,
	datac => \ALU0|result_s~7_combout\,
	datad => \ALU0|add0|stage1|stage0|stage3|Cout~3_combout\,
	combout => \DATA_MUX0|Mux11~0_combout\);

-- Location: LCCOMB_X38_Y26_N8
\DATA_MUX0|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux11~1_combout\ = (\IM_MUX2a|Mux11~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux11~0_combout\)))) # (!\IM_MUX2a|Mux11~0_combout\ & (\DATA_MUX0|Mux11~0_combout\ & (\ALU_Op[1]~input_o\ $ (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX2a|Mux11~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \DATA_MUX0|Mux11~0_combout\,
	combout => \DATA_MUX0|Mux11~1_combout\);

-- Location: LCCOMB_X38_Y29_N12
\DATA_MUX0|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux11~2_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\)))) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux11~1_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_IN[20]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux11~1_combout\,
	combout => \DATA_MUX0|Mux11~2_combout\);

-- Location: LCCOMB_X38_Y29_N22
\DATA_MUX0|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux11~5_combout\ = (\DATA_MUX0|Mux11~2_combout\ & (((\DATA_MUX0|Mux11~4_combout\)) # (!\DATA_MUX0|Mux7~0_combout\))) # (!\DATA_MUX0|Mux11~2_combout\ & (\DATA_MUX0|Mux7~0_combout\ & ((\Data_Mem0|data_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux11~2_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux11~4_combout\,
	datad => \Data_Mem0|data_out\(20),
	combout => \DATA_MUX0|Mux11~5_combout\);

-- Location: LCCOMB_X36_Y29_N28
\A_Mux0|f[20]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[20]~21_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux11~5_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux11~5_combout\,
	combout => \A_Mux0|f[20]~21_combout\);

-- Location: FF_X36_Y29_N29
\Reg_A|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[20]~21_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(20));

-- Location: LCCOMB_X38_Y27_N20
\IM_MUX1a|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[20]~20_combout\ = (\IM_MUX1~input_o\ & ((\IR|Q\(4)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(20),
	datad => \IR|Q\(4),
	combout => \IM_MUX1a|f[20]~20_combout\);

-- Location: LCCOMB_X39_Y26_N12
\DATA_MUX0|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux12~3_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\)))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[20]~20_combout\)) # (!\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[18]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1a|f[20]~20_combout\,
	datac => \IM_MUX1a|f[18]~18_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux12~3_combout\);

-- Location: LCCOMB_X38_Y26_N20
\ALU0|sub0|stage1|stage0|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage3|s~combout\ = \IM_MUX1a|f[19]~19_combout\ $ (\IM_MUX2a|Mux12~0_combout\ $ (((\ALU0|sub0|stage1|stage0|stage2|Cout~9_combout\) # (\ALU0|sub0|stage1|stage0|stage2|Cout~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[19]~19_combout\,
	datab => \IM_MUX2a|Mux12~0_combout\,
	datac => \ALU0|sub0|stage1|stage0|stage2|Cout~9_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage2|Cout~8_combout\,
	combout => \ALU0|sub0|stage1|stage0|stage3|s~combout\);

-- Location: LCCOMB_X38_Y26_N30
\DATA_MUX0|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux12~4_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux12~3_combout\ & (\IM_MUX1a|f[19]~19_combout\)) # (!\DATA_MUX0|Mux12~3_combout\ & ((!\ALU0|sub0|stage1|stage0|stage3|s~combout\))))) # (!\ALU_Op[1]~input_o\ & 
-- (\DATA_MUX0|Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux12~3_combout\,
	datac => \IM_MUX1a|f[19]~19_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage3|s~combout\,
	combout => \DATA_MUX0|Mux12~4_combout\);

-- Location: LCCOMB_X39_Y27_N8
\ALU0|add0|stage1|stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage0|stage1|Cout~0_combout\ = (\IM_MUX1a|f[17]~17_combout\ & ((\ALU0|add0|stage1|stage0|stage0|Cout~0_combout\) # ((\Reg_B|Q\(17) & !\IM_MUX2a|Mux15~1_combout\)))) # (!\IM_MUX1a|f[17]~17_combout\ & (\Reg_B|Q\(17) & 
-- (!\IM_MUX2a|Mux15~1_combout\ & \ALU0|add0|stage1|stage0|stage0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[17]~17_combout\,
	datab => \Reg_B|Q\(17),
	datac => \IM_MUX2a|Mux15~1_combout\,
	datad => \ALU0|add0|stage1|stage0|stage0|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage0|stage1|Cout~0_combout\);

-- Location: LCCOMB_X39_Y26_N24
\ALU0|add0|stage1|stage0|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage0|stage2|Cout~0_combout\ = (\IM_MUX1a|f[18]~18_combout\ & ((\IM_MUX2a|Mux13~0_combout\) # (\ALU0|add0|stage1|stage0|stage1|Cout~0_combout\))) # (!\IM_MUX1a|f[18]~18_combout\ & (\IM_MUX2a|Mux13~0_combout\ & 
-- \ALU0|add0|stage1|stage0|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1a|f[18]~18_combout\,
	datac => \IM_MUX2a|Mux13~0_combout\,
	datad => \ALU0|add0|stage1|stage0|stage1|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage0|stage2|Cout~0_combout\);

-- Location: LCCOMB_X39_Y26_N2
\ALU0|add0|stage1|stage0|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage0|stage3|s~combout\ = \IM_MUX2a|Mux12~0_combout\ $ (\IM_MUX1a|f[19]~19_combout\ $ (\ALU0|add0|stage1|stage0|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux12~0_combout\,
	datac => \IM_MUX1a|f[19]~19_combout\,
	datad => \ALU0|add0|stage1|stage0|stage2|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage0|stage3|s~combout\);

-- Location: LCCOMB_X38_Y26_N16
\DATA_MUX0|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux12~0_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\) # (\ALU0|add0|stage1|stage0|stage3|s~combout\)))) # (!\ALU_Op[1]~input_o\ & (\ALU0|result_s~7_combout\ & (!\ALU_Op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU0|result_s~7_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU0|add0|stage1|stage0|stage3|s~combout\,
	combout => \DATA_MUX0|Mux12~0_combout\);

-- Location: LCCOMB_X38_Y26_N26
\DATA_MUX0|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux12~1_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux12~0_combout\) # ((\IM_MUX1a|f[19]~19_combout\ & !\DATA_MUX0|Mux12~0_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\DATA_MUX0|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[19]~19_combout\,
	datab => \IM_MUX2a|Mux12~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \DATA_MUX0|Mux12~0_combout\,
	combout => \DATA_MUX0|Mux12~1_combout\);

-- Location: IOIBUF_X0_Y10_N22
\DATA_IN[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(19),
	o => \DATA_IN[19]~input_o\);

-- Location: LCCOMB_X39_Y26_N10
\Data_Mem0|DATAMEM~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~61feeder_combout\ = \Reg_Mux0|f[19]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg_Mux0|f[19]~19_combout\,
	combout => \Data_Mem0|DATAMEM~61feeder_combout\);

-- Location: FF_X39_Y26_N11
\Data_Mem0|DATAMEM~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~61feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~61_q\);

-- Location: LCCOMB_X38_Y26_N12
\Data_Mem0|data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~20_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a19\))) # (!\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM~61_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM~61_q\,
	datad => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a19\,
	combout => \Data_Mem0|data_out~20_combout\);

-- Location: FF_X38_Y26_N13
\Data_Mem0|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(19));

-- Location: LCCOMB_X38_Y26_N6
\DATA_MUX0|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux12~2_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\) # (\Data_Mem0|data_out\(19))))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[19]~input_o\ & (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[19]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \Data_Mem0|data_out\(19),
	combout => \DATA_MUX0|Mux12~2_combout\);

-- Location: LCCOMB_X38_Y26_N24
\DATA_MUX0|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux12~5_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux12~2_combout\ & (\DATA_MUX0|Mux12~4_combout\)) # (!\DATA_MUX0|Mux12~2_combout\ & ((\DATA_MUX0|Mux12~1_combout\))))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux12~4_combout\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux12~1_combout\,
	datad => \DATA_MUX0|Mux12~2_combout\,
	combout => \DATA_MUX0|Mux12~5_combout\);

-- Location: LCCOMB_X35_Y26_N0
\A_Mux0|f[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[19]~20_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux12~5_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \A_MUX~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux12~5_combout\,
	combout => \A_Mux0|f[19]~20_combout\);

-- Location: FF_X35_Y26_N1
\Reg_A|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[19]~20_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(19));

-- Location: LCCOMB_X38_Y27_N2
\IM_MUX1a|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[19]~19_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(3))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \IR|Q\(3),
	datad => \Reg_A|Q\(19),
	combout => \IM_MUX1a|f[19]~19_combout\);

-- Location: LCCOMB_X40_Y26_N20
\DATA_MUX0|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux13~1_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\)))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[19]~19_combout\)) # (!\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[17]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[19]~19_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \IM_MUX1a|f[17]~17_combout\,
	combout => \DATA_MUX0|Mux13~1_combout\);

-- Location: LCCOMB_X39_Y29_N10
\ALU0|sub0|stage1|stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage1|Cout~0_combout\ = (\IM_MUX1a|f[17]~17_combout\ & ((\ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\) # (!\IM_MUX2a|Mux14~0_combout\))) # (!\IM_MUX1a|f[17]~17_combout\ & (!\IM_MUX2a|Mux14~0_combout\ & 
-- \ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[17]~17_combout\,
	datac => \IM_MUX2a|Mux14~0_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage0|stage1|Cout~0_combout\);

-- Location: LCCOMB_X40_Y26_N6
\ALU0|sub0|stage1|stage0|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage2|s~combout\ = \IM_MUX2a|Mux13~0_combout\ $ (\IM_MUX1a|f[18]~18_combout\ $ (\ALU0|sub0|stage1|stage0|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2a|Mux13~0_combout\,
	datac => \IM_MUX1a|f[18]~18_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage1|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage0|stage2|s~combout\);

-- Location: LCCOMB_X40_Y26_N18
\DATA_MUX0|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux13~2_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux13~1_combout\ & (\IM_MUX1a|f[18]~18_combout\)) # (!\DATA_MUX0|Mux13~1_combout\ & ((!\ALU0|sub0|stage1|stage0|stage2|s~combout\))))) # (!\ALU_Op[1]~input_o\ & 
-- (\DATA_MUX0|Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux13~1_combout\,
	datac => \IM_MUX1a|f[18]~18_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage2|s~combout\,
	combout => \DATA_MUX0|Mux13~2_combout\);

-- Location: IOIBUF_X67_Y0_N1
\DATA_IN[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(18),
	o => \DATA_IN[18]~input_o\);

-- Location: LCCOMB_X40_Y26_N28
\DATA_MUX0|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux13~0_combout\ = \IM_MUX1a|f[18]~18_combout\ $ (((\ALU_Op[1]~input_o\ & \ALU0|add0|stage1|stage0|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[18]~18_combout\,
	datad => \ALU0|add0|stage1|stage0|stage1|Cout~0_combout\,
	combout => \DATA_MUX0|Mux13~0_combout\);

-- Location: LCCOMB_X40_Y26_N16
\DATA_MUX0|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux13~6_combout\ = (\IM_MUX2a|Mux13~0_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\ $ (\DATA_MUX0|Mux13~0_combout\)))) # (!\IM_MUX2a|Mux13~0_combout\ & (\DATA_MUX0|Mux13~0_combout\ & (\ALU_Op[0]~input_o\ $ (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX2a|Mux13~0_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \DATA_MUX0|Mux13~0_combout\,
	combout => \DATA_MUX0|Mux13~6_combout\);

-- Location: LCCOMB_X40_Y26_N22
\DATA_MUX0|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux13~7_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\) # ((\DATA_MUX0|Mux13~6_combout\)))) # (!\DATA_MUX[1]~input_o\ & (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_IN[18]~input_o\,
	datad => \DATA_MUX0|Mux13~6_combout\,
	combout => \DATA_MUX0|Mux13~7_combout\);

-- Location: LCCOMB_X36_Y28_N16
\Data_Mem0|DATAMEM~60feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~60feeder_combout\ = \Reg_Mux0|f[18]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg_Mux0|f[18]~18_combout\,
	combout => \Data_Mem0|DATAMEM~60feeder_combout\);

-- Location: FF_X36_Y28_N17
\Data_Mem0|DATAMEM~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~60feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~60_q\);

-- Location: LCCOMB_X36_Y28_N28
\Data_Mem0|data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~19_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a18\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~60_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a18\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM~41_q\,
	datad => \Data_Mem0|DATAMEM~60_q\,
	combout => \Data_Mem0|data_out~19_combout\);

-- Location: FF_X36_Y28_N29
\Data_Mem0|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(18));

-- Location: LCCOMB_X40_Y28_N18
\DATA_MUX0|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux13~5_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux13~7_combout\ & (\DATA_MUX0|Mux13~2_combout\)) # (!\DATA_MUX0|Mux13~7_combout\ & ((\Data_Mem0|data_out\(18)))))) # (!\DATA_MUX0|Mux7~0_combout\ & 
-- (((\DATA_MUX0|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux13~2_combout\,
	datac => \DATA_MUX0|Mux13~7_combout\,
	datad => \Data_Mem0|data_out\(18),
	combout => \DATA_MUX0|Mux13~5_combout\);

-- Location: LCCOMB_X40_Y28_N8
\A_Mux0|f[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[18]~19_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux13~5_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux13~5_combout\,
	combout => \A_Mux0|f[18]~19_combout\);

-- Location: FF_X40_Y28_N9
\Reg_A|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[18]~19_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(18));

-- Location: LCCOMB_X36_Y28_N24
\Reg_Mux0|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[18]~18_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(18)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_MUX~input_o\,
	datac => \Reg_A|Q\(18),
	datad => \Reg_B|Q\(18),
	combout => \Reg_Mux0|f[18]~18_combout\);

-- Location: FF_X36_Y28_N19
\Data_Mem0|DATAMEM~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Reg_Mux0|f[16]~16_combout\,
	sload => VCC,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~58_q\);

-- Location: LCCOMB_X36_Y28_N20
\Data_Mem0|data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~17_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a16\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~58_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a16\,
	datad => \Data_Mem0|DATAMEM~58_q\,
	combout => \Data_Mem0|data_out~17_combout\);

-- Location: FF_X36_Y28_N21
\Data_Mem0|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(16));

-- Location: LCCOMB_X42_Y28_N6
\B_Mux0|f[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[16]~18_combout\ = (\DATA_MUX0|Mux15~6_combout\ & ((\DATA_MUX0|Mux15~2_combout\) # ((!\DATA_MUX0|Mux7~0_combout\)))) # (!\DATA_MUX0|Mux15~6_combout\ & (((\DATA_MUX0|Mux7~0_combout\ & \Data_Mem0|data_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux15~2_combout\,
	datab => \DATA_MUX0|Mux15~6_combout\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \Data_Mem0|data_out\(16),
	combout => \B_Mux0|f[16]~18_combout\);

-- Location: LCCOMB_X42_Y28_N12
\B_Mux0|f[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[16]~19_combout\ = (!\B_MUX~input_o\ & (\B_Mux0|f[16]~18_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \B_MUX~input_o\,
	datad => \B_Mux0|f[16]~18_combout\,
	combout => \B_Mux0|f[16]~19_combout\);

-- Location: FF_X42_Y28_N13
\Reg_B|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[16]~19_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(16));

-- Location: LCCOMB_X39_Y27_N18
\ALU0|add0|stage1|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add0|stage1|stage0|stage0|Cout~0_combout\ = (\IM_MUX1a|f[16]~16_combout\ & ((\ALU0|add0|stage0|stage3|stage3|Cout~0_combout\) # ((\Reg_B|Q\(16) & !\IM_MUX2a|Mux15~1_combout\)))) # (!\IM_MUX1a|f[16]~16_combout\ & (\Reg_B|Q\(16) & 
-- (!\IM_MUX2a|Mux15~1_combout\ & \ALU0|add0|stage0|stage3|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_B|Q\(16),
	datab => \IM_MUX1a|f[16]~16_combout\,
	datac => \IM_MUX2a|Mux15~1_combout\,
	datad => \ALU0|add0|stage0|stage3|stage3|Cout~0_combout\,
	combout => \ALU0|add0|stage1|stage0|stage0|Cout~0_combout\);

-- Location: LCCOMB_X38_Y29_N14
\DATA_MUX0|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux14~6_combout\ = \DATA_MUX0|Mux14~5_combout\ $ (((!\ALU_Op[0]~input_o\ & (\ALU0|add0|stage1|stage0|stage0|Cout~0_combout\ & \ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \DATA_MUX0|Mux14~5_combout\,
	datac => \ALU0|add0|stage1|stage0|stage0|Cout~0_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux14~6_combout\);

-- Location: LCCOMB_X38_Y29_N18
\DATA_MUX0|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux14~1_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\)))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[18]~18_combout\))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[16]~16_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \IM_MUX1a|f[18]~18_combout\,
	combout => \DATA_MUX0|Mux14~1_combout\);

-- Location: LCCOMB_X39_Y29_N4
\ALU0|sub0|stage1|stage0|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage1|s~combout\ = \IM_MUX1a|f[17]~17_combout\ $ (\ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\ $ (\IM_MUX2a|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[17]~17_combout\,
	datab => \ALU0|sub0|stage1|stage0|stage0|Cout~0_combout\,
	datad => \IM_MUX2a|Mux14~0_combout\,
	combout => \ALU0|sub0|stage1|stage0|stage1|s~combout\);

-- Location: LCCOMB_X39_Y29_N18
\DATA_MUX0|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux14~2_combout\ = (\DATA_MUX0|Mux14~1_combout\ & ((\IM_MUX1a|f[17]~17_combout\) # ((!\ALU_Op[1]~input_o\)))) # (!\DATA_MUX0|Mux14~1_combout\ & (((!\ALU0|sub0|stage1|stage0|stage1|s~combout\ & \ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[17]~17_combout\,
	datab => \DATA_MUX0|Mux14~1_combout\,
	datac => \ALU0|sub0|stage1|stage0|stage1|s~combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux14~2_combout\);

-- Location: IOIBUF_X40_Y73_N8
\DATA_IN[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(17),
	o => \DATA_IN[17]~input_o\);

-- Location: FF_X36_Y28_N3
\Data_Mem0|DATAMEM~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Reg_Mux0|f[17]~17_combout\,
	sload => VCC,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~59_q\);

-- Location: LCCOMB_X36_Y28_N0
\Data_Mem0|data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~18_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a17\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~59_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a17\,
	datac => \Data_Mem0|data_out[2]~0_combout\,
	datad => \Data_Mem0|DATAMEM~59_q\,
	combout => \Data_Mem0|data_out~18_combout\);

-- Location: FF_X36_Y28_N1
\Data_Mem0|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(17));

-- Location: LCCOMB_X39_Y29_N16
\DATA_MUX0|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux14~0_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX[1]~input_o\) # (\Data_Mem0|data_out\(17))))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[17]~input_o\ & (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[17]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \Data_Mem0|data_out\(17),
	combout => \DATA_MUX0|Mux14~0_combout\);

-- Location: LCCOMB_X39_Y29_N12
\DATA_MUX0|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux14~3_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux14~0_combout\ & ((\DATA_MUX0|Mux14~2_combout\))) # (!\DATA_MUX0|Mux14~0_combout\ & (\DATA_MUX0|Mux14~6_combout\)))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux14~6_combout\,
	datab => \DATA_MUX0|Mux14~2_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux14~0_combout\,
	combout => \DATA_MUX0|Mux14~3_combout\);

-- Location: LCCOMB_X40_Y29_N14
\A_Mux0|f[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[17]~18_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux14~3_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux14~3_combout\,
	combout => \A_Mux0|f[17]~18_combout\);

-- Location: FF_X40_Y29_N15
\Reg_A|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[17]~18_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(17));

-- Location: LCCOMB_X40_Y29_N30
\IM_MUX1a|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[17]~17_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(1))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(1),
	datac => \Reg_A|Q\(17),
	datad => \IM_MUX1~input_o\,
	combout => \IM_MUX1a|f[17]~17_combout\);

-- Location: LCCOMB_X39_Y28_N20
\DATA_MUX0|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux15~1_combout\ = (\ALU_Op[0]~input_o\ & ((\ALU_Op[1]~input_o\) # ((\IM_MUX1a|f[17]~17_combout\)))) # (!\ALU_Op[0]~input_o\ & (!\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[15]~15_combout\,
	datad => \IM_MUX1a|f[17]~17_combout\,
	combout => \DATA_MUX0|Mux15~1_combout\);

-- Location: LCCOMB_X42_Y28_N18
\ALU0|sub0|stage1|stage0|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage1|stage0|stage0|s~combout\ = \IM_MUX2a|Mux15~0_combout\ $ (\IM_MUX1a|f[16]~16_combout\ $ (\ALU0|sub0|stage0|stage3|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX2a|Mux15~0_combout\,
	datac => \IM_MUX1a|f[16]~16_combout\,
	datad => \ALU0|sub0|stage0|stage3|stage3|Cout~0_combout\,
	combout => \ALU0|sub0|stage1|stage0|stage0|s~combout\);

-- Location: LCCOMB_X42_Y28_N24
\DATA_MUX0|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux15~2_combout\ = (\DATA_MUX0|Mux15~1_combout\ & (((\IM_MUX1a|f[16]~16_combout\)) # (!\ALU_Op[1]~input_o\))) # (!\DATA_MUX0|Mux15~1_combout\ & (\ALU_Op[1]~input_o\ & ((!\ALU0|sub0|stage1|stage0|stage0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux15~1_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[16]~16_combout\,
	datad => \ALU0|sub0|stage1|stage0|stage0|s~combout\,
	combout => \DATA_MUX0|Mux15~2_combout\);

-- Location: LCCOMB_X43_Y28_N10
\DATA_MUX0|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux15~3_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux15~6_combout\ & (\DATA_MUX0|Mux15~2_combout\)) # (!\DATA_MUX0|Mux15~6_combout\ & ((\Data_Mem0|data_out\(16)))))) # (!\DATA_MUX0|Mux7~0_combout\ & 
-- (((\DATA_MUX0|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux15~2_combout\,
	datac => \DATA_MUX0|Mux15~6_combout\,
	datad => \Data_Mem0|data_out\(16),
	combout => \DATA_MUX0|Mux15~3_combout\);

-- Location: LCCOMB_X43_Y28_N2
\A_Mux0|f[16]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[16]~17_combout\ = (!\A_MUX~input_o\ & (\DATA_MUX0|Mux15~3_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux15~3_combout\,
	combout => \A_Mux0|f[16]~17_combout\);

-- Location: FF_X43_Y28_N3
\Reg_A|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[16]~17_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(16));

-- Location: LCCOMB_X40_Y29_N2
\IM_MUX1a|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[16]~16_combout\ = (\IM_MUX1~input_o\ & (\IR|Q\(0))) # (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \IR|Q\(0),
	datad => \Reg_A|Q\(16),
	combout => \IM_MUX1a|f[16]~16_combout\);

-- Location: LCCOMB_X36_Y30_N16
\DATA_MUX0|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux16~8_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[16]~16_combout\) # ((\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (((!\ALU_Op[1]~input_o\ & \IM_MUX1a|f[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX1a|f[16]~16_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1a|f[14]~14_combout\,
	combout => \DATA_MUX0|Mux16~8_combout\);

-- Location: LCCOMB_X36_Y30_N0
\DATA_MUX0|Mux16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux16~13_combout\ = (\IM_MUX1~input_o\ & (((\IM_MUX2a|Mux16~0_combout\ & !\DATA_MUX0|Mux16~8_combout\)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(15) $ (((\IM_MUX2a|Mux16~0_combout\ & !\DATA_MUX0|Mux16~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(15),
	datac => \IM_MUX2a|Mux16~0_combout\,
	datad => \DATA_MUX0|Mux16~8_combout\,
	combout => \DATA_MUX0|Mux16~13_combout\);

-- Location: LCCOMB_X36_Y30_N26
\DATA_MUX0|Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux16~9_combout\ = (\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux16~13_combout\ $ (((!\ALU0|sub0|stage0|stage3|stage2|Cout~0_combout\ & !\DATA_MUX0|Mux16~8_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\DATA_MUX0|Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux16~13_combout\,
	datac => \ALU0|sub0|stage0|stage3|stage2|Cout~0_combout\,
	datad => \DATA_MUX0|Mux16~8_combout\,
	combout => \DATA_MUX0|Mux16~9_combout\);

-- Location: LCCOMB_X36_Y30_N18
\DATA_MUX0|Mux16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux16~12_combout\ = (\ALU_Op[0]~input_o\ & (\Reg_A|Q\(15) & ((!\IM_MUX1~input_o\)))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX2a|Mux16~0_combout\ $ (((\Reg_A|Q\(15) & !\IM_MUX1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \Reg_A|Q\(15),
	datac => \IM_MUX2a|Mux16~0_combout\,
	datad => \IM_MUX1~input_o\,
	combout => \DATA_MUX0|Mux16~12_combout\);

-- Location: LCCOMB_X36_Y30_N12
\DATA_MUX0|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux16~6_combout\ = (\ALU_Op[0]~input_o\) # (\DATA_MUX0|Mux16~12_combout\ $ (((\ALU0|add0|stage0|stage3|stage2|Cout~0_combout\) # (!\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \ALU0|add0|stage0|stage3|stage2|Cout~0_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \DATA_MUX0|Mux16~12_combout\,
	combout => \DATA_MUX0|Mux16~6_combout\);

-- Location: LCCOMB_X36_Y30_N20
\DATA_MUX0|Mux16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux16~10_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux16~9_combout\)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux16~7_combout\ & ((\DATA_MUX0|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux16~7_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux16~9_combout\,
	datad => \DATA_MUX0|Mux16~6_combout\,
	combout => \DATA_MUX0|Mux16~10_combout\);

-- Location: LCCOMB_X36_Y29_N22
\DATA_MUX0|Mux16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux16~14_combout\ = (\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux16~10_combout\ & !\DATA_MUX[0]~input_o\)))) # (!\DATA_MUX[1]~input_o\ & ((\DATA_IN[15]~input_o\) # ((\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_IN[15]~input_o\,
	datac => \DATA_MUX0|Mux16~10_combout\,
	datad => \DATA_MUX[0]~input_o\,
	combout => \DATA_MUX0|Mux16~14_combout\);

-- Location: FF_X38_Y28_N27
\Data_Mem0|DATAMEM~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[15]~15_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~57_q\);

-- Location: LCCOMB_X38_Y28_N22
\Data_Mem0|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~16_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a15\))) # (!\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM~57_q\,
	datad => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a15\,
	combout => \Data_Mem0|data_out~16_combout\);

-- Location: FF_X38_Y28_N23
\Data_Mem0|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(15));

-- Location: LCCOMB_X36_Y29_N2
\DATA_MUX0|Mux16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux16~11_combout\ = (\DATA_MUX0|Mux16~14_combout\ & ((\DATA_MUX[1]~input_o\) # ((\Data_Mem0|data_out\(15)) # (!\DATA_MUX0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux16~14_combout\,
	datad => \Data_Mem0|data_out\(15),
	combout => \DATA_MUX0|Mux16~11_combout\);

-- Location: FF_X36_Y29_N7
\IR|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux16~11_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(15));

-- Location: LCCOMB_X36_Y29_N14
\A_Mux0|f[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[15]~16_combout\ = (\A_MUX~input_o\ & (\IR|Q\(15))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux16~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(15),
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux16~11_combout\,
	combout => \A_Mux0|f[15]~16_combout\);

-- Location: FF_X36_Y29_N15
\Reg_A|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[15]~16_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(15));

-- Location: LCCOMB_X36_Y29_N8
\DATA_MUX0|Mux17~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~20_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[1]~input_o\ & ((\Reg_A|Q\(14)))) # (!\ALU_Op[1]~input_o\ & (\Reg_A|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \Reg_A|Q\(15),
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(14),
	combout => \DATA_MUX0|Mux17~20_combout\);

-- Location: LCCOMB_X40_Y29_N8
\DATA_MUX0|Mux17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~14_combout\ = (\ALU0|sub0|stage0|stage3|stage1|Cout~0_combout\ & ((\ALU_Op[0]~input_o\) # ((!\IM_MUX2a|Mux17~0_combout\)))) # (!\ALU0|sub0|stage0|stage3|stage1|Cout~0_combout\ & (\ALU0|sub0|stage0|stage3|stage1|Cout~2_combout\ $ 
-- (((!\ALU_Op[0]~input_o\ & \IM_MUX2a|Mux17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage3|stage1|Cout~0_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX2a|Mux17~0_combout\,
	datad => \ALU0|sub0|stage0|stage3|stage1|Cout~2_combout\,
	combout => \DATA_MUX0|Mux17~14_combout\);

-- Location: LCCOMB_X40_Y29_N10
\DATA_MUX0|Mux17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~15_combout\ = (\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[14]~14_combout\ $ ((!\DATA_MUX0|Mux17~14_combout\)))) # (!\ALU_Op[1]~input_o\ & (((\IM_MUX1a|f[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[14]~14_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_MUX0|Mux17~14_combout\,
	datad => \IM_MUX1a|f[13]~13_combout\,
	combout => \DATA_MUX0|Mux17~15_combout\);

-- Location: LCCOMB_X40_Y29_N0
\DATA_MUX0|Mux17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~16_combout\ = (\ALU_Op[0]~input_o\ & (\DATA_MUX0|Mux17~20_combout\)) # (!\ALU_Op[0]~input_o\ & ((\DATA_MUX0|Mux17~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux17~20_combout\,
	datab => \ALU_Op[0]~input_o\,
	datad => \DATA_MUX0|Mux17~15_combout\,
	combout => \DATA_MUX0|Mux17~16_combout\);

-- Location: LCCOMB_X40_Y29_N18
\DATA_MUX0|Mux17~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~17_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux17~16_combout\)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux17~13_combout\ & (\DATA_MUX0|Mux17~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux17~13_combout\,
	datac => \DATA_MUX0|Mux17~12_combout\,
	datad => \DATA_MUX0|Mux17~16_combout\,
	combout => \DATA_MUX0|Mux17~17_combout\);

-- Location: LCCOMB_X40_Y29_N26
\DATA_MUX0|Mux17~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~21_combout\ = (\DATA_MUX[1]~input_o\ & (!\DATA_MUX[0]~input_o\ & ((\DATA_MUX0|Mux17~17_combout\)))) # (!\DATA_MUX[1]~input_o\ & ((\DATA_MUX[0]~input_o\) # ((\DATA_IN[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_IN[14]~input_o\,
	datad => \DATA_MUX0|Mux17~17_combout\,
	combout => \DATA_MUX0|Mux17~21_combout\);

-- Location: FF_X38_Y28_N17
\Data_Mem0|DATAMEM~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[14]~14_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~56_q\);

-- Location: LCCOMB_X38_Y28_N0
\Data_Mem0|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~15_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a14\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~56_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a14\,
	datad => \Data_Mem0|DATAMEM~56_q\,
	combout => \Data_Mem0|data_out~15_combout\);

-- Location: FF_X38_Y28_N1
\Data_Mem0|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(14));

-- Location: LCCOMB_X38_Y29_N26
\DATA_MUX0|Mux17~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux17~18_combout\ = (\DATA_MUX0|Mux17~21_combout\ & (((\DATA_MUX[1]~input_o\) # (\Data_Mem0|data_out\(14))) # (!\DATA_MUX0|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux17~21_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \Data_Mem0|data_out\(14),
	combout => \DATA_MUX0|Mux17~18_combout\);

-- Location: LCCOMB_X39_Y26_N20
\IR|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR|Q[14]~feeder_combout\ = \DATA_MUX0|Mux17~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_MUX0|Mux17~18_combout\,
	combout => \IR|Q[14]~feeder_combout\);

-- Location: FF_X39_Y26_N21
\IR|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \IR|Q[14]~feeder_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(14));

-- Location: LCCOMB_X36_Y29_N20
\A_Mux0|f[14]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[14]~15_combout\ = (\A_MUX~input_o\ & (\IR|Q\(14))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux17~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(14),
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux17~18_combout\,
	combout => \A_Mux0|f[14]~15_combout\);

-- Location: FF_X36_Y29_N21
\Reg_A|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[14]~15_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(14));

-- Location: LCCOMB_X38_Y28_N16
\Reg_Mux0|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[14]~14_combout\ = (\REG_MUX~input_o\ & ((\Reg_B|Q\(14)))) # (!\REG_MUX~input_o\ & (\Reg_A|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_MUX~input_o\,
	datac => \Reg_A|Q\(14),
	datad => \Reg_B|Q\(14),
	combout => \Reg_Mux0|f[14]~14_combout\);

-- Location: FF_X38_Y28_N11
\Data_Mem0|DATAMEM~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[13]~13_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~55_q\);

-- Location: LCCOMB_X38_Y28_N2
\Data_Mem0|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~14_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a13\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~55_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a13\,
	datad => \Data_Mem0|DATAMEM~55_q\,
	combout => \Data_Mem0|data_out~14_combout\);

-- Location: FF_X38_Y28_N3
\Data_Mem0|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(13));

-- Location: LCCOMB_X42_Y28_N20
\DATA_MUX0|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux18~2_combout\ = (\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux7~0_combout\)))) # (!\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\ & ((\Data_Mem0|data_out\(13)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[13]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \Data_Mem0|data_out\(13),
	combout => \DATA_MUX0|Mux18~2_combout\);

-- Location: LCCOMB_X39_Y28_N18
\DATA_MUX0|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux18~3_combout\ = (\IM_MUX1a|f[13]~13_combout\ $ (((!\ALU_Op[0]~input_o\ & \IM_MUX2a|Mux18~0_combout\)))) # (!\ALU_Op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX2a|Mux18~0_combout\,
	datad => \IM_MUX1a|f[13]~13_combout\,
	combout => \DATA_MUX0|Mux18~3_combout\);

-- Location: LCCOMB_X38_Y30_N16
\DATA_MUX0|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux18~4_combout\ = (\ALU_Op[1]~input_o\ & ((\IM_MUX1a|f[12]~12_combout\ & ((\ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\) # (!\IM_MUX2a|Mux19~0_combout\))) # (!\IM_MUX1a|f[12]~12_combout\ & (!\IM_MUX2a|Mux19~0_combout\ & 
-- \ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\)))) # (!\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[12]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1a|f[12]~12_combout\,
	datac => \IM_MUX2a|Mux19~0_combout\,
	datad => \ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\,
	combout => \DATA_MUX0|Mux18~4_combout\);

-- Location: LCCOMB_X38_Y30_N18
\DATA_MUX0|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux18~5_combout\ = (\ALU_Op[0]~input_o\ & ((\ALU_Op[1]~input_o\) # ((\IM_MUX1a|f[14]~14_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\DATA_MUX0|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX1a|f[14]~14_combout\,
	datad => \DATA_MUX0|Mux18~4_combout\,
	combout => \DATA_MUX0|Mux18~5_combout\);

-- Location: LCCOMB_X42_Y28_N10
\DATA_MUX0|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux18~6_combout\ = (\DATA_MUX[0]~input_o\) # ((\DATA_MUX0|Mux18~2_combout\ & (\DATA_MUX0|Mux18~3_combout\ $ (\DATA_MUX0|Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \DATA_MUX0|Mux18~3_combout\,
	datac => \DATA_MUX0|Mux18~5_combout\,
	datad => \DATA_MUX0|Mux18~2_combout\,
	combout => \DATA_MUX0|Mux18~6_combout\);

-- Location: LCCOMB_X42_Y28_N8
\DATA_MUX0|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux18~7_combout\ = (\DATA_MUX[1]~input_o\ & (!\DATA_MUX0|Mux18~6_combout\ & ((\DATA_MUX0|Mux18~10_combout\) # (\DATA_MUX0|Mux18~2_combout\)))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux18~10_combout\,
	datab => \DATA_MUX0|Mux18~2_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux18~6_combout\,
	combout => \DATA_MUX0|Mux18~7_combout\);

-- Location: FF_X42_Y28_N17
\IR|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux18~7_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(13));

-- Location: LCCOMB_X43_Y28_N16
\A_Mux0|f[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[13]~14_combout\ = (\A_MUX~input_o\ & (\IR|Q\(13))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux18~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(13),
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux18~7_combout\,
	combout => \A_Mux0|f[13]~14_combout\);

-- Location: FF_X43_Y28_N17
\Reg_A|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[13]~14_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(13));

-- Location: LCCOMB_X40_Y29_N24
\IM_MUX1a|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[13]~13_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(13),
	combout => \IM_MUX1a|f[13]~13_combout\);

-- Location: LCCOMB_X39_Y30_N10
\DATA_MUX0|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux19~8_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[13]~13_combout\) # ((\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (((!\ALU_Op[1]~input_o\ & \IM_MUX1a|f[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[13]~13_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1a|f[11]~11_combout\,
	combout => \DATA_MUX0|Mux19~8_combout\);

-- Location: LCCOMB_X38_Y30_N22
\DATA_MUX0|Mux19~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux19~13_combout\ = (\DATA_MUX0|Mux19~8_combout\ & (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(12))))) # (!\DATA_MUX0|Mux19~8_combout\ & (\IM_MUX2a|Mux19~0_combout\ $ (((!\IM_MUX1~input_o\ & \Reg_A|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux19~8_combout\,
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux19~0_combout\,
	datad => \Reg_A|Q\(12),
	combout => \DATA_MUX0|Mux19~13_combout\);

-- Location: LCCOMB_X38_Y30_N12
\DATA_MUX0|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux19~9_combout\ = (\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux19~13_combout\ $ (((!\DATA_MUX0|Mux19~8_combout\ & !\ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\))))) # (!\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux19~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux19~8_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_MUX0|Mux19~13_combout\,
	datad => \ALU0|sub0|stage0|stage2|stage3|Cout~0_combout\,
	combout => \DATA_MUX0|Mux19~9_combout\);

-- Location: LCCOMB_X38_Y30_N10
\DATA_MUX0|Mux19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux19~10_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux19~9_combout\)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux19~7_combout\ & (\DATA_MUX0|Mux19~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux19~7_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux19~6_combout\,
	datad => \DATA_MUX0|Mux19~9_combout\,
	combout => \DATA_MUX0|Mux19~10_combout\);

-- Location: LCCOMB_X38_Y30_N20
\DATA_MUX0|Mux19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux19~14_combout\ = (\DATA_MUX[0]~input_o\ & (((!\DATA_MUX[1]~input_o\)))) # (!\DATA_MUX[0]~input_o\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux19~10_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[12]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux19~10_combout\,
	combout => \DATA_MUX0|Mux19~14_combout\);

-- Location: FF_X38_Y28_N21
\Data_Mem0|DATAMEM~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[12]~12_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~54_q\);

-- Location: LCCOMB_X38_Y28_N12
\Data_Mem0|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~13_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a12\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~54_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a12\,
	datad => \Data_Mem0|DATAMEM~54_q\,
	combout => \Data_Mem0|data_out~13_combout\);

-- Location: FF_X38_Y28_N13
\Data_Mem0|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(12));

-- Location: LCCOMB_X38_Y30_N6
\DATA_MUX0|Mux19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux19~11_combout\ = (\DATA_MUX0|Mux19~14_combout\ & (((\DATA_MUX[1]~input_o\) # (\Data_Mem0|data_out\(12))) # (!\DATA_MUX0|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux19~14_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \Data_Mem0|data_out\(12),
	combout => \DATA_MUX0|Mux19~11_combout\);

-- Location: FF_X38_Y30_N7
\IR|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux19~11_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(12));

-- Location: LCCOMB_X36_Y30_N24
\A_Mux0|f[12]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[12]~13_combout\ = (\A_MUX~input_o\ & (\IR|Q\(12))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux19~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(12),
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux19~11_combout\,
	combout => \A_Mux0|f[12]~13_combout\);

-- Location: FF_X36_Y30_N25
\Reg_A|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[12]~13_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(12));

-- Location: LCCOMB_X38_Y30_N24
\DATA_MUX0|Mux20~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~13_combout\ = (\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\)) # (!\ALU_Op[1]~input_o\ & (((!\IM_MUX1~input_o\ & \Reg_A|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(12),
	combout => \DATA_MUX0|Mux20~13_combout\);

-- Location: LCCOMB_X38_Y30_N2
\DATA_MUX0|Mux20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~14_combout\ = (\DATA_MUX0|Mux20~13_combout\ & (\Reg_A|Q\(11) & (!\IM_MUX1~input_o\ & \DATA_MUX0|Mux7~0_combout\))) # (!\DATA_MUX0|Mux20~13_combout\ & ((\DATA_MUX0|Mux7~0_combout\) # ((\Reg_A|Q\(11) & !\IM_MUX1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(11),
	datab => \DATA_MUX0|Mux20~13_combout\,
	datac => \IM_MUX1~input_o\,
	datad => \DATA_MUX0|Mux7~0_combout\,
	combout => \DATA_MUX0|Mux20~14_combout\);

-- Location: LCCOMB_X39_Y30_N0
\DATA_MUX0|Mux20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~8_combout\ = (\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux20~14_combout\ $ (((!\DATA_MUX0|Mux20~13_combout\ & \ALU0|add0|stage0|stage2|stage2|Cout~0_combout\))))) # (!\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux20~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux20~13_combout\,
	datac => \ALU0|add0|stage0|stage2|stage2|Cout~0_combout\,
	datad => \DATA_MUX0|Mux20~14_combout\,
	combout => \DATA_MUX0|Mux20~8_combout\);

-- Location: LCCOMB_X39_Y30_N30
\DATA_MUX0|Mux20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~9_combout\ = (\DATA_MUX0|Mux20~5_combout\ & (((\DATA_MUX0|Mux20~8_combout\) # (!\DATA_MUX[1]~input_o\)))) # (!\DATA_MUX0|Mux20~5_combout\ & (\DATA_MUX0|Mux20~7_combout\ & (\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux20~7_combout\,
	datab => \DATA_MUX0|Mux20~5_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux20~8_combout\,
	combout => \DATA_MUX0|Mux20~9_combout\);

-- Location: LCCOMB_X39_Y30_N6
\DATA_MUX0|Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~6_combout\ = \DATA_MUX0|Mux20~4_combout\ $ (((\ALU_Op[1]~input_o\ & (!\DATA_MUX0|Mux20~5_combout\ & !\ALU0|add0|stage0|stage2|stage2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux20~5_combout\,
	datac => \ALU0|add0|stage0|stage2|stage2|Cout~0_combout\,
	datad => \DATA_MUX0|Mux20~4_combout\,
	combout => \DATA_MUX0|Mux20~6_combout\);

-- Location: LCCOMB_X39_Y30_N24
\DATA_MUX0|Mux20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~10_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux20~9_combout\)))) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux20~6_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_MUX0|Mux20~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux20~9_combout\,
	datad => \DATA_MUX0|Mux20~6_combout\,
	combout => \DATA_MUX0|Mux20~10_combout\);

-- Location: FF_X38_Y28_N31
\Data_Mem0|DATAMEM~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[11]~11_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~53_q\);

-- Location: LCCOMB_X38_Y28_N14
\Data_Mem0|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~12_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a11\))) # (!\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM~53_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM~53_q\,
	datad => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a11\,
	combout => \Data_Mem0|data_out~12_combout\);

-- Location: FF_X38_Y28_N15
\Data_Mem0|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(11));

-- Location: LCCOMB_X39_Y29_N0
\DATA_MUX0|Mux20~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~11_combout\ = (\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux20~10_combout\)))) # (!\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\ & ((\Data_Mem0|data_out\(11)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux20~10_combout\,
	datad => \Data_Mem0|data_out\(11),
	combout => \DATA_MUX0|Mux20~11_combout\);

-- Location: LCCOMB_X39_Y29_N22
\DATA_MUX0|Mux20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux20~12_combout\ = (\DATA_MUX0|Mux20~11_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux20~11_combout\,
	combout => \DATA_MUX0|Mux20~12_combout\);

-- Location: FF_X39_Y29_N5
\IR|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux20~12_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(11));

-- Location: LCCOMB_X40_Y29_N4
\A_Mux0|f[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[11]~12_combout\ = (\A_MUX~input_o\ & (\IR|Q\(11))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux20~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_MUX~input_o\,
	datac => \IR|Q\(11),
	datad => \DATA_MUX0|Mux20~12_combout\,
	combout => \A_Mux0|f[11]~12_combout\);

-- Location: FF_X40_Y29_N5
\Reg_A|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[11]~12_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(11));

-- Location: LCCOMB_X42_Y30_N8
\IM_MUX1a|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[11]~11_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(11),
	combout => \IM_MUX1a|f[11]~11_combout\);

-- Location: LCCOMB_X39_Y30_N2
\DATA_MUX0|Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux21~8_combout\ = (\ALU_Op[0]~input_o\ & (((\ALU_Op[1]~input_o\) # (\IM_MUX1a|f[11]~11_combout\)))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[9]~9_combout\ & (!\ALU_Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[9]~9_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1a|f[11]~11_combout\,
	combout => \DATA_MUX0|Mux21~8_combout\);

-- Location: LCCOMB_X39_Y30_N14
\DATA_MUX0|Mux21~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux21~13_combout\ = (\DATA_MUX0|Mux21~8_combout\ & (\Reg_A|Q\(10) & ((!\IM_MUX1~input_o\)))) # (!\DATA_MUX0|Mux21~8_combout\ & (\IM_MUX2a|Mux21~0_combout\ $ (((\Reg_A|Q\(10) & !\IM_MUX1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux21~8_combout\,
	datab => \Reg_A|Q\(10),
	datac => \IM_MUX2a|Mux21~0_combout\,
	datad => \IM_MUX1~input_o\,
	combout => \DATA_MUX0|Mux21~13_combout\);

-- Location: LCCOMB_X40_Y30_N16
\DATA_MUX0|Mux21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux21~9_combout\ = (\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux21~13_combout\ $ (((!\DATA_MUX0|Mux21~8_combout\ & !\ALU0|sub0|stage0|stage2|stage1|Cout~0_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\DATA_MUX0|Mux21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux21~13_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_MUX0|Mux21~8_combout\,
	datad => \ALU0|sub0|stage0|stage2|stage1|Cout~0_combout\,
	combout => \DATA_MUX0|Mux21~9_combout\);

-- Location: LCCOMB_X39_Y30_N20
\DATA_MUX0|Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux21~7_combout\ = (\IM_MUX2a|Mux21~0_combout\) # ((\ALU_Op[1]~input_o\ & ((!\ALU_Op[0]~input_o\))) # (!\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[10]~10_combout\ & \ALU_Op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX2a|Mux21~0_combout\,
	datac => \IM_MUX1a|f[10]~10_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux21~7_combout\);

-- Location: LCCOMB_X39_Y30_N28
\DATA_MUX0|Mux21~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux21~10_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux21~9_combout\)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux21~6_combout\ & ((\DATA_MUX0|Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux21~6_combout\,
	datab => \DATA_MUX0|Mux21~9_combout\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \DATA_MUX0|Mux21~7_combout\,
	combout => \DATA_MUX0|Mux21~10_combout\);

-- Location: LCCOMB_X38_Y30_N30
\DATA_MUX0|Mux21~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux21~14_combout\ = (\DATA_MUX[0]~input_o\ & (((!\DATA_MUX[1]~input_o\)))) # (!\DATA_MUX[0]~input_o\ & ((\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux21~10_combout\))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[10]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux21~10_combout\,
	combout => \DATA_MUX0|Mux21~14_combout\);

-- Location: FF_X38_Y28_N29
\Data_Mem0|DATAMEM~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[10]~10_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~52_q\);

-- Location: LCCOMB_X38_Y28_N8
\Data_Mem0|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~11_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a10\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a10\,
	datad => \Data_Mem0|DATAMEM~52_q\,
	combout => \Data_Mem0|data_out~11_combout\);

-- Location: FF_X38_Y28_N9
\Data_Mem0|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(10));

-- Location: LCCOMB_X39_Y30_N26
\DATA_MUX0|Mux21~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux21~11_combout\ = (\DATA_MUX0|Mux21~14_combout\ & (((\DATA_MUX[1]~input_o\) # (\Data_Mem0|data_out\(10))) # (!\DATA_MUX0|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux21~14_combout\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \Data_Mem0|data_out\(10),
	combout => \DATA_MUX0|Mux21~11_combout\);

-- Location: FF_X39_Y30_N19
\IR|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux21~11_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(10));

-- Location: LCCOMB_X40_Y30_N8
\A_Mux0|f[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[10]~11_combout\ = (\A_MUX~input_o\ & (\IR|Q\(10))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux21~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \IR|Q\(10),
	datac => \DATA_MUX0|Mux21~11_combout\,
	combout => \A_Mux0|f[10]~11_combout\);

-- Location: FF_X40_Y30_N9
\Reg_A|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[10]~11_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(10));

-- Location: LCCOMB_X40_Y26_N30
\DATA_MUX0|Mux22~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~13_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\)))) # (!\ALU_Op[1]~input_o\ & (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \Reg_A|Q\(10),
	combout => \DATA_MUX0|Mux22~13_combout\);

-- Location: LCCOMB_X42_Y29_N10
\DATA_MUX0|Mux22~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~14_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (((!\IM_MUX1~input_o\ & \Reg_A|Q\(9))) # (!\DATA_MUX0|Mux22~13_combout\))) # (!\DATA_MUX0|Mux7~0_combout\ & (!\IM_MUX1~input_o\ & (\Reg_A|Q\(9) & !\DATA_MUX0|Mux22~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(9),
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \DATA_MUX0|Mux22~13_combout\,
	combout => \DATA_MUX0|Mux22~14_combout\);

-- Location: LCCOMB_X42_Y29_N18
\DATA_MUX0|Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~8_combout\ = (\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux22~14_combout\ $ (((!\DATA_MUX0|Mux22~13_combout\ & \ALU0|add0|stage0|stage2|stage0|Cout~0_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\DATA_MUX0|Mux22~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux22~14_combout\,
	datab => \DATA_MUX0|Mux22~13_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU0|add0|stage0|stage2|stage0|Cout~0_combout\,
	combout => \DATA_MUX0|Mux22~8_combout\);

-- Location: LCCOMB_X42_Y29_N16
\DATA_MUX0|Mux22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~9_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux22~5_combout\ & ((\DATA_MUX0|Mux22~8_combout\))) # (!\DATA_MUX0|Mux22~5_combout\ & (\DATA_MUX0|Mux22~7_combout\)))) # (!\DATA_MUX[1]~input_o\ & (\DATA_MUX0|Mux22~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux22~5_combout\,
	datac => \DATA_MUX0|Mux22~7_combout\,
	datad => \DATA_MUX0|Mux22~8_combout\,
	combout => \DATA_MUX0|Mux22~9_combout\);

-- Location: LCCOMB_X42_Y29_N2
\DATA_MUX0|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~6_combout\ = \DATA_MUX0|Mux22~4_combout\ $ (((!\ALU0|add0|stage0|stage2|stage0|Cout~0_combout\ & (\ALU_Op[1]~input_o\ & !\DATA_MUX0|Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|add0|stage0|stage2|stage0|Cout~0_combout\,
	datab => \DATA_MUX0|Mux22~4_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \DATA_MUX0|Mux22~5_combout\,
	combout => \DATA_MUX0|Mux22~6_combout\);

-- Location: LCCOMB_X42_Y29_N30
\DATA_MUX0|Mux22~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~10_combout\ = (\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux22~9_combout\)) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux22~6_combout\))))) # (!\DATA_MUX[1]~input_o\ & (\DATA_MUX0|Mux22~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux22~9_combout\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \DATA_MUX0|Mux22~6_combout\,
	combout => \DATA_MUX0|Mux22~10_combout\);

-- Location: FF_X38_Y28_N19
\Data_Mem0|DATAMEM~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[9]~9_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~51_q\);

-- Location: LCCOMB_X38_Y28_N6
\Data_Mem0|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~10_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a9\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a9\,
	datad => \Data_Mem0|DATAMEM~51_q\,
	combout => \Data_Mem0|data_out~10_combout\);

-- Location: FF_X38_Y28_N7
\Data_Mem0|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(9));

-- Location: LCCOMB_X41_Y29_N6
\DATA_MUX0|Mux22~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~11_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX[1]~input_o\ & (\DATA_MUX0|Mux22~10_combout\)) # (!\DATA_MUX[1]~input_o\ & ((\Data_Mem0|data_out\(9)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux22~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux22~10_combout\,
	datad => \Data_Mem0|data_out\(9),
	combout => \DATA_MUX0|Mux22~11_combout\);

-- Location: LCCOMB_X41_Y29_N28
\DATA_MUX0|Mux22~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux22~12_combout\ = (\DATA_MUX0|Mux22~11_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux22~11_combout\,
	combout => \DATA_MUX0|Mux22~12_combout\);

-- Location: FF_X41_Y29_N31
\IR|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux22~12_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(9));

-- Location: LCCOMB_X42_Y29_N14
\A_Mux0|f[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[9]~10_combout\ = (\A_MUX~input_o\ & (\IR|Q\(9))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux22~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(9),
	datac => \A_MUX~input_o\,
	datad => \DATA_MUX0|Mux22~12_combout\,
	combout => \A_Mux0|f[9]~10_combout\);

-- Location: FF_X42_Y29_N15
\Reg_A|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[9]~10_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(9));

-- Location: LCCOMB_X42_Y29_N26
\IM_MUX1a|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[9]~9_combout\ = (\Reg_A|Q\(9) & !\IM_MUX1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_A|Q\(9),
	datac => \IM_MUX1~input_o\,
	combout => \IM_MUX1a|f[9]~9_combout\);

-- Location: LCCOMB_X41_Y28_N0
\DATA_MUX0|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~6_combout\ = (\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\)) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[9]~9_combout\))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX1a|f[7]~7_combout\,
	datad => \IM_MUX1a|f[9]~9_combout\,
	combout => \DATA_MUX0|Mux23~6_combout\);

-- Location: LCCOMB_X41_Y29_N30
\DATA_MUX0|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~5_combout\ = \IM_MUX2a|Mux23~0_combout\ $ (((\ALU0|sub0|stage0|stage1|stage3|Cout~0_combout\) # (\ALU0|sub0|stage0|stage1|stage3|Cout~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux23~0_combout\,
	datab => \ALU0|sub0|stage0|stage1|stage3|Cout~0_combout\,
	datad => \ALU0|sub0|stage0|stage1|stage3|Cout~2_combout\,
	combout => \DATA_MUX0|Mux23~5_combout\);

-- Location: LCCOMB_X41_Y28_N18
\DATA_MUX0|Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~7_combout\ = (\ALU_Op[1]~input_o\ & (\IM_MUX1a|f[8]~8_combout\ $ (((!\DATA_MUX0|Mux23~6_combout\ & !\DATA_MUX0|Mux23~5_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\DATA_MUX0|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[8]~8_combout\,
	datab => \DATA_MUX0|Mux23~6_combout\,
	datac => \DATA_MUX0|Mux23~5_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux23~7_combout\);

-- Location: LCCOMB_X42_Y29_N6
\DATA_MUX0|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~3_combout\ = \DATA_MUX0|Mux7~0_combout\ $ (\IM_MUX2a|Mux23~0_combout\ $ (((\ALU_Op[1]~input_o\ & !\ALU0|add0|stage0|stage1|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \IM_MUX2a|Mux23~0_combout\,
	datad => \ALU0|add0|stage0|stage1|stage3|Cout~0_combout\,
	combout => \DATA_MUX0|Mux23~3_combout\);

-- Location: LCCOMB_X42_Y29_N12
\DATA_MUX0|Mux23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~11_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (!\IM_MUX1~input_o\ & ((\Reg_A|Q\(8))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\IM_MUX2a|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \IM_MUX2a|Mux23~0_combout\,
	datad => \Reg_A|Q\(8),
	combout => \DATA_MUX0|Mux23~11_combout\);

-- Location: LCCOMB_X42_Y29_N4
\DATA_MUX0|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~2_combout\ = (\ALU_Op[0]~input_o\ & ((\DATA_MUX0|Mux23~11_combout\) # ((!\ALU_Op[1]~input_o\ & \IM_MUX1a|f[8]~8_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\ALU_Op[1]~input_o\) # (\IM_MUX1a|f[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux23~11_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1a|f[8]~8_combout\,
	combout => \DATA_MUX0|Mux23~2_combout\);

-- Location: LCCOMB_X42_Y29_N20
\DATA_MUX0|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~4_combout\ = (\DATA_MUX0|Mux23~2_combout\ & ((\ALU_Op[0]~input_o\) # (\DATA_MUX0|Mux23~3_combout\ $ (!\IM_MUX1a|f[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux23~3_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \DATA_MUX0|Mux23~2_combout\,
	datad => \IM_MUX1a|f[8]~8_combout\,
	combout => \DATA_MUX0|Mux23~4_combout\);

-- Location: LCCOMB_X42_Y28_N30
\DATA_MUX0|Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~8_combout\ = (\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux23~7_combout\)) # (!\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux23~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux23~7_combout\,
	datad => \DATA_MUX0|Mux23~4_combout\,
	combout => \DATA_MUX0|Mux23~8_combout\);

-- Location: IOIBUF_X52_Y0_N8
\DATA_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(8),
	o => \DATA_IN[8]~input_o\);

-- Location: FF_X41_Y28_N25
\Data_Mem0|DATAMEM~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[8]~8_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~50_q\);

-- Location: LCCOMB_X41_Y28_N20
\Data_Mem0|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~9_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a8\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a8\,
	datad => \Data_Mem0|DATAMEM~50_q\,
	combout => \Data_Mem0|data_out~9_combout\);

-- Location: FF_X41_Y28_N21
\Data_Mem0|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(8));

-- Location: LCCOMB_X41_Y28_N14
\DATA_MUX0|Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~9_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\Data_Mem0|data_out\(8)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_IN[8]~input_o\,
	datad => \Data_Mem0|data_out\(8),
	combout => \DATA_MUX0|Mux23~9_combout\);

-- Location: LCCOMB_X42_Y28_N0
\DATA_MUX0|Mux23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux23~10_combout\ = (\DATA_MUX[1]~input_o\ & (!\DATA_MUX[0]~input_o\ & (\DATA_MUX0|Mux23~8_combout\))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux23~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux23~8_combout\,
	datad => \DATA_MUX0|Mux23~9_combout\,
	combout => \DATA_MUX0|Mux23~10_combout\);

-- Location: FF_X42_Y28_N3
\IR|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux23~10_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(8));

-- Location: LCCOMB_X42_Y28_N4
\B_Mux0|f[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_Mux0|f[8]~10_combout\ = (\B_MUX~input_o\ & (\IR|Q\(8))) # (!\B_MUX~input_o\ & ((\DATA_MUX0|Mux23~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Q\(8),
	datac => \B_MUX~input_o\,
	datad => \DATA_MUX0|Mux23~10_combout\,
	combout => \B_Mux0|f[8]~10_combout\);

-- Location: FF_X42_Y28_N5
\Reg_B|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_Mux0|f[8]~10_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_B|Q\(8));

-- Location: LCCOMB_X41_Y28_N24
\Reg_Mux0|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Mux0|f[8]~8_combout\ = (\REG_MUX~input_o\ & (\Reg_B|Q\(8))) # (!\REG_MUX~input_o\ & ((\Reg_A|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_MUX~input_o\,
	datac => \Reg_B|Q\(8),
	datad => \Reg_A|Q\(8),
	combout => \Reg_Mux0|f[8]~8_combout\);

-- Location: FF_X39_Y28_N3
\Data_Mem0|DATAMEM~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[7]~7_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~49_q\);

-- Location: LCCOMB_X39_Y28_N0
\Data_Mem0|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~8_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a7\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a7\,
	datad => \Data_Mem0|DATAMEM~49_q\,
	combout => \Data_Mem0|data_out~8_combout\);

-- Location: FF_X39_Y28_N1
\Data_Mem0|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(7));

-- Location: LCCOMB_X38_Y27_N12
\DATA_MUX0|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux24~2_combout\ = (\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux7~0_combout\)))) # (!\DATA_MUX[1]~input_o\ & ((\DATA_MUX0|Mux7~0_combout\ & ((\Data_Mem0|data_out\(7)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_IN[7]~input_o\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \Data_Mem0|data_out\(7),
	combout => \DATA_MUX0|Mux24~2_combout\);

-- Location: LCCOMB_X41_Y26_N4
\DATA_MUX0|Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux24~9_combout\ = (\ALU_Op[1]~input_o\ & (!\ALU_Op[0]~input_o\)) # (!\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\ & \IM_MUX1a|f[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \IM_MUX1a|f[7]~7_combout\,
	combout => \DATA_MUX0|Mux24~9_combout\);

-- Location: LCCOMB_X41_Y26_N18
\DATA_MUX0|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux24~8_combout\ = (\IM_MUX1~input_o\ & (\ALU0|add0|stage0|stage1|stage2|Cout~0_combout\ & ((\ALU_Op[1]~input_o\)))) # (!\IM_MUX1~input_o\ & (\Reg_A|Q\(7) $ (((\ALU0|add0|stage0|stage1|stage2|Cout~0_combout\ & \ALU_Op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \ALU0|add0|stage0|stage1|stage2|Cout~0_combout\,
	datac => \Reg_A|Q\(7),
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux24~8_combout\);

-- Location: LCCOMB_X41_Y26_N30
\DATA_MUX0|Mux24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux24~10_combout\ = (\IM_MUX2a|Mux24~0_combout\ & ((\ALU_Op[0]~input_o\) # (\DATA_MUX0|Mux24~9_combout\ $ (\DATA_MUX0|Mux24~8_combout\)))) # (!\IM_MUX2a|Mux24~0_combout\ & (\DATA_MUX0|Mux24~9_combout\ & ((\ALU_Op[0]~input_o\) # 
-- (\DATA_MUX0|Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX2a|Mux24~0_combout\,
	datac => \DATA_MUX0|Mux24~9_combout\,
	datad => \DATA_MUX0|Mux24~8_combout\,
	combout => \DATA_MUX0|Mux24~10_combout\);

-- Location: LCCOMB_X41_Y29_N14
\DATA_MUX0|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux24~4_combout\ = (\IM_MUX2a|Mux25~0_combout\ & (\IM_MUX1a|f[6]~6_combout\ & ((\ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\) # (!\ALU_Op[1]~input_o\)))) # (!\IM_MUX2a|Mux25~0_combout\ & ((\IM_MUX1a|f[6]~6_combout\) # ((\ALU_Op[1]~input_o\ & 
-- \ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux25~0_combout\,
	datab => \IM_MUX1a|f[6]~6_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\,
	combout => \DATA_MUX0|Mux24~4_combout\);

-- Location: LCCOMB_X42_Y29_N22
\DATA_MUX0|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux24~5_combout\ = (\ALU_Op[0]~input_o\ & (((\IM_MUX1a|f[8]~8_combout\) # (\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (\DATA_MUX0|Mux24~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux24~4_combout\,
	datab => \IM_MUX1a|f[8]~8_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux24~5_combout\);

-- Location: LCCOMB_X41_Y26_N14
\DATA_MUX0|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux24~3_combout\ = (\IM_MUX1a|f[7]~7_combout\ $ (((!\ALU_Op[0]~input_o\ & \IM_MUX2a|Mux24~0_combout\)))) # (!\ALU_Op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX1a|f[7]~7_combout\,
	datac => \IM_MUX2a|Mux24~0_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux24~3_combout\);

-- Location: LCCOMB_X38_Y27_N6
\DATA_MUX0|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux24~6_combout\ = (\DATA_MUX[0]~input_o\) # ((\DATA_MUX0|Mux24~2_combout\ & (\DATA_MUX0|Mux24~5_combout\ $ (\DATA_MUX0|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux24~5_combout\,
	datab => \DATA_MUX0|Mux24~3_combout\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux24~2_combout\,
	combout => \DATA_MUX0|Mux24~6_combout\);

-- Location: LCCOMB_X38_Y27_N8
\DATA_MUX0|Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux24~7_combout\ = (\DATA_MUX[1]~input_o\ & (!\DATA_MUX0|Mux24~6_combout\ & ((\DATA_MUX0|Mux24~2_combout\) # (\DATA_MUX0|Mux24~10_combout\)))) # (!\DATA_MUX[1]~input_o\ & (\DATA_MUX0|Mux24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux24~2_combout\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux24~10_combout\,
	datad => \DATA_MUX0|Mux24~6_combout\,
	combout => \DATA_MUX0|Mux24~7_combout\);

-- Location: LCCOMB_X38_Y27_N4
\A_Mux0|f[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[7]~8_combout\ = (\A_MUX~input_o\ & ((\IR|Q\(7)))) # (!\A_MUX~input_o\ & (\DATA_MUX0|Mux24~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datac => \DATA_MUX0|Mux24~7_combout\,
	datad => \IR|Q\(7),
	combout => \A_Mux0|f[7]~8_combout\);

-- Location: FF_X38_Y27_N5
\Reg_A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[7]~8_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(7));

-- Location: LCCOMB_X41_Y26_N24
\IM_MUX1a|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[7]~7_combout\ = (\Reg_A|Q\(7) & !\IM_MUX1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(7),
	datad => \IM_MUX1~input_o\,
	combout => \IM_MUX1a|f[7]~7_combout\);

-- Location: LCCOMB_X41_Y26_N22
\DATA_MUX0|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux25~5_combout\ = (\ALU_Op[0]~input_o\ & (((\IM_MUX1a|f[7]~7_combout\) # (\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[5]~5_combout\ & ((!\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[5]~5_combout\,
	datab => \IM_MUX1a|f[7]~7_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux25~5_combout\);

-- Location: LCCOMB_X41_Y26_N20
\ALU0|sub0|stage0|stage1|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage1|stage2|s~combout\ = \IM_MUX2a|Mux25~0_combout\ $ (\ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\ $ (((\Reg_A|Q\(6) & !\IM_MUX1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux25~0_combout\,
	datab => \Reg_A|Q\(6),
	datac => \ALU0|sub0|stage0|stage1|stage1|Cout~0_combout\,
	datad => \IM_MUX1~input_o\,
	combout => \ALU0|sub0|stage0|stage1|stage2|s~combout\);

-- Location: LCCOMB_X41_Y26_N12
\DATA_MUX0|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux25~6_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux25~5_combout\ & (\IM_MUX1a|f[6]~6_combout\)) # (!\DATA_MUX0|Mux25~5_combout\ & ((!\ALU0|sub0|stage0|stage1|stage2|s~combout\))))) # (!\ALU_Op[1]~input_o\ & 
-- (((\DATA_MUX0|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1a|f[6]~6_combout\,
	datac => \DATA_MUX0|Mux25~5_combout\,
	datad => \ALU0|sub0|stage0|stage1|stage2|s~combout\,
	combout => \DATA_MUX0|Mux25~6_combout\);

-- Location: FF_X41_Y26_N25
\Data_Mem0|DATAMEM~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Reg_Mux0|f[6]~6_combout\,
	sload => VCC,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~48_q\);

-- Location: LCCOMB_X41_Y26_N28
\Data_Mem0|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~7_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a6\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a6\,
	datad => \Data_Mem0|DATAMEM~48_q\,
	combout => \Data_Mem0|data_out~7_combout\);

-- Location: FF_X41_Y26_N29
\Data_Mem0|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(6));

-- Location: LCCOMB_X41_Y26_N10
\DATA_MUX0|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux25~7_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux25~4_combout\ & (\DATA_MUX0|Mux25~6_combout\)) # (!\DATA_MUX0|Mux25~4_combout\ & ((\Data_Mem0|data_out\(6)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux25~4_combout\,
	datac => \DATA_MUX0|Mux25~6_combout\,
	datad => \Data_Mem0|data_out\(6),
	combout => \DATA_MUX0|Mux25~7_combout\);

-- Location: LCCOMB_X41_Y26_N0
\DATA_MUX0|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux25~8_combout\ = (\DATA_MUX0|Mux25~7_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux25~7_combout\,
	combout => \DATA_MUX0|Mux25~8_combout\);

-- Location: LCCOMB_X40_Y27_N4
\A_Mux0|f[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[6]~7_combout\ = (\A_MUX~input_o\ & ((\IR|Q\(6)))) # (!\A_MUX~input_o\ & (\DATA_MUX0|Mux25~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datac => \DATA_MUX0|Mux25~8_combout\,
	datad => \IR|Q\(6),
	combout => \A_Mux0|f[6]~7_combout\);

-- Location: FF_X40_Y27_N5
\Reg_A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[6]~7_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(6));

-- Location: LCCOMB_X42_Y27_N14
\DATA_MUX0|Mux26~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux26~18_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[1]~input_o\ & (\Reg_A|Q\(5))) # (!\ALU_Op[1]~input_o\ & ((\Reg_A|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(5),
	datab => \IM_MUX1~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \Reg_A|Q\(6),
	combout => \DATA_MUX0|Mux26~18_combout\);

-- Location: LCCOMB_X42_Y27_N4
\DATA_MUX0|Mux26~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux26~10_combout\ = (\ALU0|sub0|stage0|stage1|stage0|Cout~0_combout\ & (((\ALU_Op[0]~input_o\) # (!\IM_MUX2a|Mux26~0_combout\)))) # (!\ALU0|sub0|stage0|stage1|stage0|Cout~0_combout\ & (\ALU0|sub0|stage0|stage1|stage0|Cout~2_combout\ $ 
-- (((\IM_MUX2a|Mux26~0_combout\ & !\ALU_Op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage1|stage0|Cout~0_combout\,
	datab => \ALU0|sub0|stage0|stage1|stage0|Cout~2_combout\,
	datac => \IM_MUX2a|Mux26~0_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux26~10_combout\);

-- Location: LCCOMB_X42_Y27_N6
\DATA_MUX0|Mux26~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux26~11_combout\ = (\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux26~10_combout\ $ (((!\IM_MUX1a|f[5]~5_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\IM_MUX1a|f[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux26~10_combout\,
	datac => \IM_MUX1a|f[4]~4_combout\,
	datad => \IM_MUX1a|f[5]~5_combout\,
	combout => \DATA_MUX0|Mux26~11_combout\);

-- Location: LCCOMB_X42_Y27_N28
\DATA_MUX0|Mux26~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux26~12_combout\ = (\ALU_Op[0]~input_o\ & (\DATA_MUX0|Mux26~18_combout\)) # (!\ALU_Op[0]~input_o\ & ((\DATA_MUX0|Mux26~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datac => \DATA_MUX0|Mux26~18_combout\,
	datad => \DATA_MUX0|Mux26~11_combout\,
	combout => \DATA_MUX0|Mux26~12_combout\);

-- Location: LCCOMB_X42_Y27_N12
\DATA_MUX0|Mux26~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux26~14_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux26~12_combout\))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_MUX0|Mux26~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux26~13_combout\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \DATA_MUX0|Mux26~12_combout\,
	combout => \DATA_MUX0|Mux26~14_combout\);

-- Location: IOIBUF_X0_Y11_N15
\DATA_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(5),
	o => \DATA_IN[5]~input_o\);

-- Location: FF_X36_Y27_N17
\Data_Mem0|DATAMEM~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Reg_Mux0|f[5]~5_combout\,
	sload => VCC,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~47_q\);

-- Location: LCCOMB_X36_Y27_N6
\Data_Mem0|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~6_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a5\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a5\,
	datad => \Data_Mem0|DATAMEM~47_q\,
	combout => \Data_Mem0|data_out~6_combout\);

-- Location: FF_X36_Y27_N7
\Data_Mem0|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(5));

-- Location: LCCOMB_X36_Y27_N20
\DATA_MUX0|Mux26~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux26~15_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\Data_Mem0|data_out\(5)))) # (!\DATA_MUX0|Mux7~0_combout\ & (\DATA_IN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_IN[5]~input_o\,
	datad => \Data_Mem0|data_out\(5),
	combout => \DATA_MUX0|Mux26~15_combout\);

-- Location: LCCOMB_X38_Y27_N30
\DATA_MUX0|Mux26~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux26~16_combout\ = (\DATA_MUX[1]~input_o\ & (!\DATA_MUX[0]~input_o\ & (\DATA_MUX0|Mux26~14_combout\))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux26~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX0|Mux26~14_combout\,
	datad => \DATA_MUX0|Mux26~15_combout\,
	combout => \DATA_MUX0|Mux26~16_combout\);

-- Location: FF_X38_Y27_N25
\IR|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux26~16_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(5));

-- Location: LCCOMB_X41_Y27_N14
\A_Mux0|f[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[5]~6_combout\ = (\A_MUX~input_o\ & (\IR|Q\(5))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux26~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \IR|Q\(5),
	datad => \DATA_MUX0|Mux26~16_combout\,
	combout => \A_Mux0|f[5]~6_combout\);

-- Location: FF_X41_Y27_N15
\Reg_A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[5]~6_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(5));

-- Location: LCCOMB_X36_Y27_N12
\DATA_MUX0|Mux27~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~17_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & (\Reg_A|Q\(5))) # (!\ALU_Op[0]~input_o\ & ((\Reg_A|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \Reg_A|Q\(5),
	datac => \ALU_Op[0]~input_o\,
	datad => \Reg_A|Q\(3),
	combout => \DATA_MUX0|Mux27~17_combout\);

-- Location: LCCOMB_X40_Y30_N0
\DATA_MUX0|Mux27~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~14_combout\ = (!\DATA_MUX[0]~input_o\ & ((\DATA_MUX0|Mux27~17_combout\) # (\DATA_MUX0|Mux27~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX0|Mux27~17_combout\,
	datad => \DATA_MUX0|Mux27~13_combout\,
	combout => \DATA_MUX0|Mux27~14_combout\);

-- Location: LCCOMB_X40_Y30_N26
\DATA_MUX0|Mux27~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~15_combout\ = (\DATA_MUX[1]~input_o\ & (\DATA_MUX0|Mux27~14_combout\ & ((\DATA_MUX0|Mux27~12_combout\) # (!\DATA_MUX0|Mux27~13_combout\)))) # (!\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux27~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux27~12_combout\,
	datac => \DATA_MUX0|Mux27~13_combout\,
	datad => \DATA_MUX0|Mux27~14_combout\,
	combout => \DATA_MUX0|Mux27~15_combout\);

-- Location: FF_X38_Y28_N25
\Data_Mem0|DATAMEM~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[4]~4_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~46_q\);

-- Location: LCCOMB_X38_Y28_N4
\Data_Mem0|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~5_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a4\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a4\,
	datac => \Data_Mem0|data_out[2]~0_combout\,
	datad => \Data_Mem0|DATAMEM~46_q\,
	combout => \Data_Mem0|data_out~5_combout\);

-- Location: FF_X38_Y28_N5
\Data_Mem0|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(4));

-- Location: LCCOMB_X38_Y27_N0
\DATA_MUX0|Mux27~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux27~16_combout\ = (\DATA_MUX0|Mux27~15_combout\ & ((\DATA_MUX[1]~input_o\) # ((\Data_Mem0|data_out\(4)) # (!\DATA_MUX0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX0|Mux27~15_combout\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \Data_Mem0|data_out\(4),
	combout => \DATA_MUX0|Mux27~16_combout\);

-- Location: LCCOMB_X40_Y27_N26
\A_Mux0|f[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[4]~5_combout\ = (\A_MUX~input_o\ & ((\IR|Q\(4)))) # (!\A_MUX~input_o\ & (\DATA_MUX0|Mux27~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datac => \DATA_MUX0|Mux27~16_combout\,
	datad => \IR|Q\(4),
	combout => \A_Mux0|f[4]~5_combout\);

-- Location: FF_X40_Y27_N27
\Reg_A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[4]~5_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(4));

-- Location: LCCOMB_X40_Y28_N12
\IM_MUX1a|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[4]~4_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(4),
	combout => \IM_MUX1a|f[4]~4_combout\);

-- Location: LCCOMB_X40_Y28_N6
\DATA_MUX0|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux28~5_combout\ = (\ALU_Op[0]~input_o\ & (((\ALU_Op[1]~input_o\) # (\IM_MUX1a|f[4]~4_combout\)))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[2]~2_combout\ & (!\ALU_Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[2]~2_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1a|f[4]~4_combout\,
	combout => \DATA_MUX0|Mux28~5_combout\);

-- Location: LCCOMB_X41_Y28_N4
\ALU0|sub0|stage0|stage0|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub0|stage0|stage0|stage3|s~combout\ = \ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\ $ (\IM_MUX2a|Mux28~0_combout\ $ (((\Reg_A|Q\(3) & !\IM_MUX1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(3),
	datab => \ALU0|sub0|stage0|stage0|stage2|Cout~0_combout\,
	datac => \IM_MUX2a|Mux28~0_combout\,
	datad => \IM_MUX1~input_o\,
	combout => \ALU0|sub0|stage0|stage0|stage3|s~combout\);

-- Location: LCCOMB_X41_Y28_N12
\DATA_MUX0|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux28~6_combout\ = (\ALU_Op[1]~input_o\ & ((\DATA_MUX0|Mux28~5_combout\ & ((\IM_MUX1a|f[3]~3_combout\))) # (!\DATA_MUX0|Mux28~5_combout\ & (!\ALU0|sub0|stage0|stage0|stage3|s~combout\)))) # (!\ALU_Op[1]~input_o\ & (\DATA_MUX0|Mux28~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \DATA_MUX0|Mux28~5_combout\,
	datac => \ALU0|sub0|stage0|stage0|stage3|s~combout\,
	datad => \IM_MUX1a|f[3]~3_combout\,
	combout => \DATA_MUX0|Mux28~6_combout\);

-- Location: IOIBUF_X49_Y0_N1
\DATA_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: LCCOMB_X41_Y28_N26
\DATA_MUX0|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux28~9_combout\ = (\IM_MUX2a|Mux28~0_combout\ & (\ALU_Op[1]~input_o\ $ (((\Reg_A|Q\(3) & !\IM_MUX1~input_o\))))) # (!\IM_MUX2a|Mux28~0_combout\ & (\Reg_A|Q\(3) & (!\IM_MUX1~input_o\ & \ALU_Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(3),
	datab => \IM_MUX1~input_o\,
	datac => \IM_MUX2a|Mux28~0_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux28~9_combout\);

-- Location: LCCOMB_X41_Y28_N6
\DATA_MUX0|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux28~2_combout\ = (\ALU_Op[0]~input_o\ & (((\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (\DATA_MUX0|Mux28~9_combout\ $ (((\ALU0|add0|stage0|stage0|stage2|Cout~0_combout\ & \ALU_Op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux28~9_combout\,
	datab => \ALU0|add0|stage0|stage0|stage2|Cout~0_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux28~2_combout\);

-- Location: LCCOMB_X41_Y28_N8
\DATA_MUX0|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux28~3_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX2a|Mux28~0_combout\) # ((\IM_MUX1a|f[3]~3_combout\ & !\DATA_MUX0|Mux28~2_combout\)))) # (!\ALU_Op[0]~input_o\ & (((\DATA_MUX0|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[3]~3_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \IM_MUX2a|Mux28~0_combout\,
	datad => \DATA_MUX0|Mux28~2_combout\,
	combout => \DATA_MUX0|Mux28~3_combout\);

-- Location: LCCOMB_X41_Y28_N22
\DATA_MUX0|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux28~4_combout\ = (\DATA_MUX[1]~input_o\ & (((\DATA_MUX0|Mux28~3_combout\) # (\DATA_MUX0|Mux7~0_combout\)))) # (!\DATA_MUX[1]~input_o\ & (\DATA_IN[3]~input_o\ & ((!\DATA_MUX0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[3]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX0|Mux28~3_combout\,
	datad => \DATA_MUX0|Mux7~0_combout\,
	combout => \DATA_MUX0|Mux28~4_combout\);

-- Location: FF_X41_Y28_N29
\Data_Mem0|DATAMEM~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Reg_Mux0|f[3]~3_combout\,
	sload => VCC,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~45_q\);

-- Location: LCCOMB_X41_Y28_N16
\Data_Mem0|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~4_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a3\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a3\,
	datad => \Data_Mem0|DATAMEM~45_q\,
	combout => \Data_Mem0|data_out~4_combout\);

-- Location: FF_X41_Y28_N17
\Data_Mem0|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(3));

-- Location: LCCOMB_X41_Y28_N10
\DATA_MUX0|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux28~7_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux28~4_combout\ & (\DATA_MUX0|Mux28~6_combout\)) # (!\DATA_MUX0|Mux28~4_combout\ & ((\Data_Mem0|data_out\(3)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux28~6_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux28~4_combout\,
	datad => \Data_Mem0|data_out\(3),
	combout => \DATA_MUX0|Mux28~7_combout\);

-- Location: LCCOMB_X41_Y28_N28
\DATA_MUX0|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux28~8_combout\ = (\DATA_MUX0|Mux28~7_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datab => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux28~7_combout\,
	combout => \DATA_MUX0|Mux28~8_combout\);

-- Location: FF_X38_Y27_N21
\IR|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux28~8_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(3));

-- Location: LCCOMB_X40_Y27_N16
\A_Mux0|f[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[3]~4_combout\ = (\A_MUX~input_o\ & (\IR|Q\(3))) # (!\A_MUX~input_o\ & ((\DATA_MUX0|Mux28~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \IR|Q\(3),
	datad => \DATA_MUX0|Mux28~8_combout\,
	combout => \A_Mux0|f[3]~4_combout\);

-- Location: FF_X40_Y27_N17
\Reg_A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[3]~4_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(3));

-- Location: LCCOMB_X42_Y27_N16
\IM_MUX1a|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[3]~3_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(3),
	combout => \IM_MUX1a|f[3]~3_combout\);

-- Location: LCCOMB_X40_Y28_N16
\DATA_MUX0|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux29~5_combout\ = (\ALU_Op[1]~input_o\ & (((\ALU_Op[0]~input_o\)))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[3]~3_combout\))) # (!\ALU_Op[0]~input_o\ & (\IM_MUX1a|f[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \IM_MUX1a|f[1]~1_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \IM_MUX1a|f[3]~3_combout\,
	combout => \DATA_MUX0|Mux29~5_combout\);

-- Location: LCCOMB_X40_Y28_N26
\DATA_MUX0|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux29~6_combout\ = (\DATA_MUX0|Mux29~5_combout\ & (((\IM_MUX1a|f[2]~2_combout\) # (!\ALU_Op[1]~input_o\)))) # (!\DATA_MUX0|Mux29~5_combout\ & (!\ALU0|sub0|stage0|stage0|stage2|s~combout\ & (\ALU_Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage0|stage2|s~combout\,
	datab => \DATA_MUX0|Mux29~5_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1a|f[2]~2_combout\,
	combout => \DATA_MUX0|Mux29~6_combout\);

-- Location: LCCOMB_X36_Y27_N4
\Data_Mem0|DATAMEM~44feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|DATAMEM~44feeder_combout\ = \Reg_Mux0|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg_Mux0|f[2]~2_combout\,
	combout => \Data_Mem0|DATAMEM~44feeder_combout\);

-- Location: FF_X36_Y27_N5
\Data_Mem0|DATAMEM~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|DATAMEM~44feeder_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~44_q\);

-- Location: LCCOMB_X36_Y27_N24
\Data_Mem0|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~3_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a2\))) # (!\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM~44_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM~44_q\,
	datad => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a2\,
	combout => \Data_Mem0|data_out~3_combout\);

-- Location: FF_X36_Y27_N25
\Data_Mem0|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(2));

-- Location: LCCOMB_X36_Y27_N28
\DATA_MUX0|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux29~7_combout\ = (\DATA_MUX0|Mux29~4_combout\ & (((\DATA_MUX0|Mux29~6_combout\)) # (!\DATA_MUX0|Mux7~0_combout\))) # (!\DATA_MUX0|Mux29~4_combout\ & (\DATA_MUX0|Mux7~0_combout\ & ((\Data_Mem0|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux29~4_combout\,
	datab => \DATA_MUX0|Mux7~0_combout\,
	datac => \DATA_MUX0|Mux29~6_combout\,
	datad => \Data_Mem0|data_out\(2),
	combout => \DATA_MUX0|Mux29~7_combout\);

-- Location: LCCOMB_X38_Y27_N22
\DATA_MUX0|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux29~8_combout\ = (\DATA_MUX0|Mux29~7_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux29~7_combout\,
	combout => \DATA_MUX0|Mux29~8_combout\);

-- Location: FF_X38_Y27_N15
\IR|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux29~8_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(2));

-- Location: LCCOMB_X41_Y27_N20
\A_Mux0|f[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[2]~3_combout\ = (\A_MUX~input_o\ & (\IR|Q\(2))) # (!\A_MUX~input_o\ & (((\DATA_MUX0|Mux29~7_combout\ & \A_Mux0|f[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Q\(2),
	datab => \DATA_MUX0|Mux29~7_combout\,
	datac => \A_Mux0|f[1]~1_combout\,
	datad => \A_MUX~input_o\,
	combout => \A_Mux0|f[2]~3_combout\);

-- Location: FF_X41_Y27_N21
\Reg_A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[2]~3_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(2));

-- Location: LCCOMB_X39_Y26_N4
\IM_MUX1a|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[2]~2_combout\ = (\Reg_A|Q\(2) & !\IM_MUX1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_A|Q\(2),
	datad => \IM_MUX1~input_o\,
	combout => \IM_MUX1a|f[2]~2_combout\);

-- Location: LCCOMB_X39_Y28_N14
\IM_MUX1a|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[0]~0_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(0),
	combout => \IM_MUX1a|f[0]~0_combout\);

-- Location: LCCOMB_X40_Y28_N28
\DATA_MUX0|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux30~4_combout\ = (\ALU_Op[0]~input_o\ & ((\IM_MUX1a|f[2]~2_combout\) # ((\ALU_Op[1]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (((!\ALU_Op[1]~input_o\ & \IM_MUX1a|f[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[2]~2_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \IM_MUX1a|f[0]~0_combout\,
	combout => \DATA_MUX0|Mux30~4_combout\);

-- Location: LCCOMB_X40_Y28_N10
\DATA_MUX0|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux30~5_combout\ = (\DATA_MUX0|Mux30~4_combout\ & (((\IM_MUX1a|f[1]~1_combout\) # (!\ALU_Op[1]~input_o\)))) # (!\DATA_MUX0|Mux30~4_combout\ & (!\ALU0|sub0|stage0|stage0|stage1|s~combout\ & ((\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub0|stage0|stage0|stage1|s~combout\,
	datab => \DATA_MUX0|Mux30~4_combout\,
	datac => \IM_MUX1a|f[1]~1_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \DATA_MUX0|Mux30~5_combout\);

-- Location: FF_X39_Y28_N13
\Data_Mem0|DATAMEM~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[1]~1_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~43_q\);

-- Location: LCCOMB_X39_Y28_N24
\Data_Mem0|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~2_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a1\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a1\,
	datad => \Data_Mem0|DATAMEM~43_q\,
	combout => \Data_Mem0|data_out~2_combout\);

-- Location: FF_X39_Y28_N25
\Data_Mem0|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(1));

-- Location: LCCOMB_X39_Y28_N26
\DATA_MUX0|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux30~6_combout\ = (\DATA_MUX0|Mux30~3_combout\ & ((\DATA_MUX0|Mux30~5_combout\) # ((!\DATA_MUX0|Mux7~0_combout\)))) # (!\DATA_MUX0|Mux30~3_combout\ & (((\DATA_MUX0|Mux7~0_combout\ & \Data_Mem0|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux30~3_combout\,
	datab => \DATA_MUX0|Mux30~5_combout\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \Data_Mem0|data_out\(1),
	combout => \DATA_MUX0|Mux30~6_combout\);

-- Location: LCCOMB_X38_Y27_N28
\DATA_MUX0|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux30~7_combout\ = (\DATA_MUX0|Mux30~6_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux30~6_combout\,
	combout => \DATA_MUX0|Mux30~7_combout\);

-- Location: FF_X38_Y27_N17
\IR|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \DATA_MUX0|Mux30~7_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(1));

-- Location: LCCOMB_X41_Y27_N30
\A_Mux0|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[1]~2_combout\ = (\A_MUX~input_o\ & (\IR|Q\(1))) # (!\A_MUX~input_o\ & (((\A_Mux0|f[1]~1_combout\ & \DATA_MUX0|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \IR|Q\(1),
	datac => \A_Mux0|f[1]~1_combout\,
	datad => \DATA_MUX0|Mux30~6_combout\,
	combout => \A_Mux0|f[1]~2_combout\);

-- Location: FF_X41_Y27_N31
\Reg_A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[1]~2_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(1));

-- Location: LCCOMB_X39_Y28_N10
\IM_MUX1a|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1a|f[1]~1_combout\ = (!\IM_MUX1~input_o\ & \Reg_A|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \Reg_A|Q\(1),
	combout => \IM_MUX1a|f[1]~1_combout\);

-- Location: LCCOMB_X39_Y28_N8
\DATA_MUX0|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux31~2_combout\ = (\ALU_Op[2]~input_o\ & (((\IM_MUX1a|f[0]~0_combout\) # (!\ALU_Op[1]~input_o\)))) # (!\ALU_Op[2]~input_o\ & ((\IM_MUX2a|Mux31~0_combout\) # ((!\ALU_Op[1]~input_o\ & \IM_MUX1a|f[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux31~0_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[0]~0_combout\,
	datad => \ALU_Op[2]~input_o\,
	combout => \DATA_MUX0|Mux31~2_combout\);

-- Location: LCCOMB_X39_Y28_N22
\DATA_MUX0|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux31~3_combout\ = (\ALU_Op[1]~input_o\ & (((\DATA_MUX0|Mux31~2_combout\)))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[2]~input_o\ & (\IM_MUX1a|f[1]~1_combout\)) # (!\ALU_Op[2]~input_o\ & ((\DATA_MUX0|Mux31~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1a|f[1]~1_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \DATA_MUX0|Mux31~2_combout\,
	datad => \ALU_Op[2]~input_o\,
	combout => \DATA_MUX0|Mux31~3_combout\);

-- Location: LCCOMB_X39_Y28_N16
\DATA_MUX0|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux31~1_combout\ = (\ALU_Op[1]~input_o\ & (\IM_MUX2a|Mux31~0_combout\ $ ((\IM_MUX1a|f[0]~0_combout\)))) # (!\ALU_Op[1]~input_o\ & (\IM_MUX2a|Mux31~0_combout\ & (\IM_MUX1a|f[0]~0_combout\ & !\ALU_Op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2a|Mux31~0_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \IM_MUX1a|f[0]~0_combout\,
	datad => \ALU_Op[2]~input_o\,
	combout => \DATA_MUX0|Mux31~1_combout\);

-- Location: LCCOMB_X39_Y28_N4
\DATA_MUX0|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux31~4_combout\ = (\DATA_MUX0|Mux31~0_combout\ & ((\ALU_Op[0]~input_o\ & (\DATA_MUX0|Mux31~3_combout\)) # (!\ALU_Op[0]~input_o\ & ((\DATA_MUX0|Mux31~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux31~3_combout\,
	datab => \DATA_MUX0|Mux31~1_combout\,
	datac => \DATA_MUX0|Mux31~0_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \DATA_MUX0|Mux31~4_combout\);

-- Location: FF_X39_Y28_N7
\Data_Mem0|DATAMEM~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Reg_Mux0|f[0]~0_combout\,
	ena => \Data_Mem0|DATAMEM~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|DATAMEM~42_q\);

-- Location: LCCOMB_X39_Y28_N28
\Data_Mem0|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem0|data_out~1_combout\ = (!\Data_Mem0|data_out[2]~0_combout\ & ((\Data_Mem0|DATAMEM~41_q\ & (\Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\Data_Mem0|DATAMEM~41_q\ & ((\Data_Mem0|DATAMEM~42_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem0|DATAMEM~41_q\,
	datab => \Data_Mem0|data_out[2]~0_combout\,
	datac => \Data_Mem0|DATAMEM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \Data_Mem0|DATAMEM~42_q\,
	combout => \Data_Mem0|data_out~1_combout\);

-- Location: FF_X39_Y28_N29
\Data_Mem0|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Mem0|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem0|data_out\(0));

-- Location: LCCOMB_X39_Y28_N30
\DATA_MUX0|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux31~6_combout\ = (\DATA_MUX0|Mux31~4_combout\) # ((\DATA_MUX0|Mux31~5_combout\ & ((\Data_Mem0|data_out\(0)) # (!\DATA_MUX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux31~5_combout\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX0|Mux31~4_combout\,
	datad => \Data_Mem0|data_out\(0),
	combout => \DATA_MUX0|Mux31~6_combout\);

-- Location: LCCOMB_X41_Y27_N28
\A_Mux0|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Mux0|f[0]~0_combout\ = (\A_MUX~input_o\ & ((\IR|Q\(0)))) # (!\A_MUX~input_o\ & (\DATA_MUX0|Mux31~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datac => \DATA_MUX0|Mux31~6_combout\,
	datad => \IR|Q\(0),
	combout => \A_Mux0|f[0]~0_combout\);

-- Location: FF_X41_Y27_N29
\Reg_A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_Mux0|f[0]~0_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_A|Q\(0));

-- Location: IOIBUF_X58_Y0_N1
\ClrPC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ClrPC,
	o => \ClrPC~input_o\);

-- Location: CLKCTRL_G17
\ClrPC~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ClrPC~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ClrPC~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y30_N1
\Ld_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_PC,
	o => \Ld_PC~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\Inc_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inc_PC,
	o => \Inc_PC~input_o\);

-- Location: LCCOMB_X114_Y30_N0
\PC0|reg0|Q[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[0]~30_combout\ = (\Ld_PC~input_o\ & !\Inc_PC~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ld_PC~input_o\,
	datad => \Inc_PC~input_o\,
	combout => \PC0|reg0|Q[0]~30_combout\);

-- Location: FF_X114_Y30_N1
\PC0|reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \IR|Q\(0),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PC0|reg0|Q[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(0));

-- Location: LCCOMB_X114_Y30_N2
\PC0|reg0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[1]~feeder_combout\ = \IR|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IR|Q\(1),
	combout => \PC0|reg0|Q[1]~feeder_combout\);

-- Location: FF_X114_Y30_N3
\PC0|reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[1]~feeder_combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	ena => \PC0|reg0|Q[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(1));

-- Location: LCCOMB_X114_Y27_N2
\PC0|reg0|Q[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[2]~31_combout\ = \PC0|reg0|Q\(2) $ (VCC)
-- \PC0|reg0|Q[2]~32\ = CARRY(\PC0|reg0|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(2),
	datad => VCC,
	combout => \PC0|reg0|Q[2]~31_combout\,
	cout => \PC0|reg0|Q[2]~32\);

-- Location: FF_X114_Y27_N3
\PC0|reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[2]~31_combout\,
	asdata => \IR|Q\(2),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(2));

-- Location: LCCOMB_X114_Y27_N4
\PC0|reg0|Q[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[3]~33_combout\ = (\PC0|reg0|Q\(3) & (!\PC0|reg0|Q[2]~32\)) # (!\PC0|reg0|Q\(3) & ((\PC0|reg0|Q[2]~32\) # (GND)))
-- \PC0|reg0|Q[3]~34\ = CARRY((!\PC0|reg0|Q[2]~32\) # (!\PC0|reg0|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(3),
	datad => VCC,
	cin => \PC0|reg0|Q[2]~32\,
	combout => \PC0|reg0|Q[3]~33_combout\,
	cout => \PC0|reg0|Q[3]~34\);

-- Location: FF_X114_Y27_N5
\PC0|reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[3]~33_combout\,
	asdata => \IR|Q\(3),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(3));

-- Location: LCCOMB_X114_Y27_N6
\PC0|reg0|Q[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[4]~35_combout\ = (\PC0|reg0|Q\(4) & (\PC0|reg0|Q[3]~34\ $ (GND))) # (!\PC0|reg0|Q\(4) & (!\PC0|reg0|Q[3]~34\ & VCC))
-- \PC0|reg0|Q[4]~36\ = CARRY((\PC0|reg0|Q\(4) & !\PC0|reg0|Q[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(4),
	datad => VCC,
	cin => \PC0|reg0|Q[3]~34\,
	combout => \PC0|reg0|Q[4]~35_combout\,
	cout => \PC0|reg0|Q[4]~36\);

-- Location: FF_X114_Y27_N7
\PC0|reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[4]~35_combout\,
	asdata => \IR|Q\(4),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(4));

-- Location: LCCOMB_X114_Y27_N8
\PC0|reg0|Q[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[5]~37_combout\ = (\PC0|reg0|Q\(5) & (!\PC0|reg0|Q[4]~36\)) # (!\PC0|reg0|Q\(5) & ((\PC0|reg0|Q[4]~36\) # (GND)))
-- \PC0|reg0|Q[5]~38\ = CARRY((!\PC0|reg0|Q[4]~36\) # (!\PC0|reg0|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(5),
	datad => VCC,
	cin => \PC0|reg0|Q[4]~36\,
	combout => \PC0|reg0|Q[5]~37_combout\,
	cout => \PC0|reg0|Q[5]~38\);

-- Location: FF_X114_Y27_N9
\PC0|reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[5]~37_combout\,
	asdata => \IR|Q\(5),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(5));

-- Location: LCCOMB_X114_Y27_N10
\PC0|reg0|Q[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[6]~39_combout\ = (\PC0|reg0|Q\(6) & (\PC0|reg0|Q[5]~38\ $ (GND))) # (!\PC0|reg0|Q\(6) & (!\PC0|reg0|Q[5]~38\ & VCC))
-- \PC0|reg0|Q[6]~40\ = CARRY((\PC0|reg0|Q\(6) & !\PC0|reg0|Q[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(6),
	datad => VCC,
	cin => \PC0|reg0|Q[5]~38\,
	combout => \PC0|reg0|Q[6]~39_combout\,
	cout => \PC0|reg0|Q[6]~40\);

-- Location: FF_X114_Y27_N11
\PC0|reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[6]~39_combout\,
	asdata => \IR|Q\(6),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(6));

-- Location: LCCOMB_X114_Y27_N12
\PC0|reg0|Q[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[7]~41_combout\ = (\PC0|reg0|Q\(7) & (!\PC0|reg0|Q[6]~40\)) # (!\PC0|reg0|Q\(7) & ((\PC0|reg0|Q[6]~40\) # (GND)))
-- \PC0|reg0|Q[7]~42\ = CARRY((!\PC0|reg0|Q[6]~40\) # (!\PC0|reg0|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(7),
	datad => VCC,
	cin => \PC0|reg0|Q[6]~40\,
	combout => \PC0|reg0|Q[7]~41_combout\,
	cout => \PC0|reg0|Q[7]~42\);

-- Location: FF_X114_Y27_N13
\PC0|reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[7]~41_combout\,
	asdata => \IR|Q\(7),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(7));

-- Location: LCCOMB_X114_Y27_N14
\PC0|reg0|Q[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[8]~43_combout\ = (\PC0|reg0|Q\(8) & (\PC0|reg0|Q[7]~42\ $ (GND))) # (!\PC0|reg0|Q\(8) & (!\PC0|reg0|Q[7]~42\ & VCC))
-- \PC0|reg0|Q[8]~44\ = CARRY((\PC0|reg0|Q\(8) & !\PC0|reg0|Q[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(8),
	datad => VCC,
	cin => \PC0|reg0|Q[7]~42\,
	combout => \PC0|reg0|Q[8]~43_combout\,
	cout => \PC0|reg0|Q[8]~44\);

-- Location: FF_X114_Y27_N15
\PC0|reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[8]~43_combout\,
	asdata => \IR|Q\(8),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(8));

-- Location: LCCOMB_X114_Y27_N16
\PC0|reg0|Q[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[9]~45_combout\ = (\PC0|reg0|Q\(9) & (!\PC0|reg0|Q[8]~44\)) # (!\PC0|reg0|Q\(9) & ((\PC0|reg0|Q[8]~44\) # (GND)))
-- \PC0|reg0|Q[9]~46\ = CARRY((!\PC0|reg0|Q[8]~44\) # (!\PC0|reg0|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(9),
	datad => VCC,
	cin => \PC0|reg0|Q[8]~44\,
	combout => \PC0|reg0|Q[9]~45_combout\,
	cout => \PC0|reg0|Q[9]~46\);

-- Location: FF_X114_Y27_N17
\PC0|reg0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[9]~45_combout\,
	asdata => \IR|Q\(9),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(9));

-- Location: LCCOMB_X114_Y27_N18
\PC0|reg0|Q[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[10]~47_combout\ = (\PC0|reg0|Q\(10) & (\PC0|reg0|Q[9]~46\ $ (GND))) # (!\PC0|reg0|Q\(10) & (!\PC0|reg0|Q[9]~46\ & VCC))
-- \PC0|reg0|Q[10]~48\ = CARRY((\PC0|reg0|Q\(10) & !\PC0|reg0|Q[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(10),
	datad => VCC,
	cin => \PC0|reg0|Q[9]~46\,
	combout => \PC0|reg0|Q[10]~47_combout\,
	cout => \PC0|reg0|Q[10]~48\);

-- Location: FF_X114_Y27_N19
\PC0|reg0|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[10]~47_combout\,
	asdata => \IR|Q\(10),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(10));

-- Location: LCCOMB_X114_Y27_N20
\PC0|reg0|Q[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[11]~49_combout\ = (\PC0|reg0|Q\(11) & (!\PC0|reg0|Q[10]~48\)) # (!\PC0|reg0|Q\(11) & ((\PC0|reg0|Q[10]~48\) # (GND)))
-- \PC0|reg0|Q[11]~50\ = CARRY((!\PC0|reg0|Q[10]~48\) # (!\PC0|reg0|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(11),
	datad => VCC,
	cin => \PC0|reg0|Q[10]~48\,
	combout => \PC0|reg0|Q[11]~49_combout\,
	cout => \PC0|reg0|Q[11]~50\);

-- Location: FF_X114_Y27_N21
\PC0|reg0|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[11]~49_combout\,
	asdata => \IR|Q\(11),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(11));

-- Location: LCCOMB_X114_Y27_N22
\PC0|reg0|Q[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[12]~51_combout\ = (\PC0|reg0|Q\(12) & (\PC0|reg0|Q[11]~50\ $ (GND))) # (!\PC0|reg0|Q\(12) & (!\PC0|reg0|Q[11]~50\ & VCC))
-- \PC0|reg0|Q[12]~52\ = CARRY((\PC0|reg0|Q\(12) & !\PC0|reg0|Q[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(12),
	datad => VCC,
	cin => \PC0|reg0|Q[11]~50\,
	combout => \PC0|reg0|Q[12]~51_combout\,
	cout => \PC0|reg0|Q[12]~52\);

-- Location: FF_X114_Y27_N23
\PC0|reg0|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[12]~51_combout\,
	asdata => \IR|Q\(12),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(12));

-- Location: LCCOMB_X114_Y27_N24
\PC0|reg0|Q[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[13]~53_combout\ = (\PC0|reg0|Q\(13) & (!\PC0|reg0|Q[12]~52\)) # (!\PC0|reg0|Q\(13) & ((\PC0|reg0|Q[12]~52\) # (GND)))
-- \PC0|reg0|Q[13]~54\ = CARRY((!\PC0|reg0|Q[12]~52\) # (!\PC0|reg0|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(13),
	datad => VCC,
	cin => \PC0|reg0|Q[12]~52\,
	combout => \PC0|reg0|Q[13]~53_combout\,
	cout => \PC0|reg0|Q[13]~54\);

-- Location: FF_X114_Y27_N25
\PC0|reg0|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[13]~53_combout\,
	asdata => \IR|Q\(13),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(13));

-- Location: LCCOMB_X114_Y27_N26
\PC0|reg0|Q[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[14]~55_combout\ = (\PC0|reg0|Q\(14) & (\PC0|reg0|Q[13]~54\ $ (GND))) # (!\PC0|reg0|Q\(14) & (!\PC0|reg0|Q[13]~54\ & VCC))
-- \PC0|reg0|Q[14]~56\ = CARRY((\PC0|reg0|Q\(14) & !\PC0|reg0|Q[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(14),
	datad => VCC,
	cin => \PC0|reg0|Q[13]~54\,
	combout => \PC0|reg0|Q[14]~55_combout\,
	cout => \PC0|reg0|Q[14]~56\);

-- Location: FF_X114_Y27_N27
\PC0|reg0|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[14]~55_combout\,
	asdata => \IR|Q\(14),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(14));

-- Location: LCCOMB_X114_Y27_N28
\PC0|reg0|Q[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[15]~57_combout\ = (\PC0|reg0|Q\(15) & (!\PC0|reg0|Q[14]~56\)) # (!\PC0|reg0|Q\(15) & ((\PC0|reg0|Q[14]~56\) # (GND)))
-- \PC0|reg0|Q[15]~58\ = CARRY((!\PC0|reg0|Q[14]~56\) # (!\PC0|reg0|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(15),
	datad => VCC,
	cin => \PC0|reg0|Q[14]~56\,
	combout => \PC0|reg0|Q[15]~57_combout\,
	cout => \PC0|reg0|Q[15]~58\);

-- Location: FF_X114_Y27_N29
\PC0|reg0|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[15]~57_combout\,
	asdata => \IR|Q\(15),
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(15));

-- Location: LCCOMB_X114_Y27_N30
\PC0|reg0|Q[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[16]~59_combout\ = (\PC0|reg0|Q\(16) & (\PC0|reg0|Q[15]~58\ $ (GND))) # (!\PC0|reg0|Q\(16) & (!\PC0|reg0|Q[15]~58\ & VCC))
-- \PC0|reg0|Q[16]~60\ = CARRY((\PC0|reg0|Q\(16) & !\PC0|reg0|Q[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(16),
	datad => VCC,
	cin => \PC0|reg0|Q[15]~58\,
	combout => \PC0|reg0|Q[16]~59_combout\,
	cout => \PC0|reg0|Q[16]~60\);

-- Location: LCCOMB_X114_Y26_N30
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X114_Y27_N31
\PC0|reg0|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[16]~59_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(16));

-- Location: LCCOMB_X114_Y26_N0
\PC0|reg0|Q[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[17]~61_combout\ = (\PC0|reg0|Q\(17) & (!\PC0|reg0|Q[16]~60\)) # (!\PC0|reg0|Q\(17) & ((\PC0|reg0|Q[16]~60\) # (GND)))
-- \PC0|reg0|Q[17]~62\ = CARRY((!\PC0|reg0|Q[16]~60\) # (!\PC0|reg0|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(17),
	datad => VCC,
	cin => \PC0|reg0|Q[16]~60\,
	combout => \PC0|reg0|Q[17]~61_combout\,
	cout => \PC0|reg0|Q[17]~62\);

-- Location: FF_X114_Y26_N1
\PC0|reg0|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[17]~61_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(17));

-- Location: LCCOMB_X114_Y26_N2
\PC0|reg0|Q[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[18]~63_combout\ = (\PC0|reg0|Q\(18) & (\PC0|reg0|Q[17]~62\ $ (GND))) # (!\PC0|reg0|Q\(18) & (!\PC0|reg0|Q[17]~62\ & VCC))
-- \PC0|reg0|Q[18]~64\ = CARRY((\PC0|reg0|Q\(18) & !\PC0|reg0|Q[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(18),
	datad => VCC,
	cin => \PC0|reg0|Q[17]~62\,
	combout => \PC0|reg0|Q[18]~63_combout\,
	cout => \PC0|reg0|Q[18]~64\);

-- Location: FF_X114_Y26_N3
\PC0|reg0|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[18]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(18));

-- Location: LCCOMB_X114_Y26_N4
\PC0|reg0|Q[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[19]~65_combout\ = (\PC0|reg0|Q\(19) & (!\PC0|reg0|Q[18]~64\)) # (!\PC0|reg0|Q\(19) & ((\PC0|reg0|Q[18]~64\) # (GND)))
-- \PC0|reg0|Q[19]~66\ = CARRY((!\PC0|reg0|Q[18]~64\) # (!\PC0|reg0|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(19),
	datad => VCC,
	cin => \PC0|reg0|Q[18]~64\,
	combout => \PC0|reg0|Q[19]~65_combout\,
	cout => \PC0|reg0|Q[19]~66\);

-- Location: FF_X114_Y26_N5
\PC0|reg0|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[19]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(19));

-- Location: LCCOMB_X114_Y26_N6
\PC0|reg0|Q[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[20]~67_combout\ = (\PC0|reg0|Q\(20) & (\PC0|reg0|Q[19]~66\ $ (GND))) # (!\PC0|reg0|Q\(20) & (!\PC0|reg0|Q[19]~66\ & VCC))
-- \PC0|reg0|Q[20]~68\ = CARRY((\PC0|reg0|Q\(20) & !\PC0|reg0|Q[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(20),
	datad => VCC,
	cin => \PC0|reg0|Q[19]~66\,
	combout => \PC0|reg0|Q[20]~67_combout\,
	cout => \PC0|reg0|Q[20]~68\);

-- Location: FF_X114_Y26_N7
\PC0|reg0|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[20]~67_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(20));

-- Location: LCCOMB_X114_Y26_N8
\PC0|reg0|Q[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[21]~69_combout\ = (\PC0|reg0|Q\(21) & (!\PC0|reg0|Q[20]~68\)) # (!\PC0|reg0|Q\(21) & ((\PC0|reg0|Q[20]~68\) # (GND)))
-- \PC0|reg0|Q[21]~70\ = CARRY((!\PC0|reg0|Q[20]~68\) # (!\PC0|reg0|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(21),
	datad => VCC,
	cin => \PC0|reg0|Q[20]~68\,
	combout => \PC0|reg0|Q[21]~69_combout\,
	cout => \PC0|reg0|Q[21]~70\);

-- Location: FF_X114_Y26_N9
\PC0|reg0|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[21]~69_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(21));

-- Location: LCCOMB_X114_Y26_N10
\PC0|reg0|Q[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[22]~71_combout\ = (\PC0|reg0|Q\(22) & (\PC0|reg0|Q[21]~70\ $ (GND))) # (!\PC0|reg0|Q\(22) & (!\PC0|reg0|Q[21]~70\ & VCC))
-- \PC0|reg0|Q[22]~72\ = CARRY((\PC0|reg0|Q\(22) & !\PC0|reg0|Q[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(22),
	datad => VCC,
	cin => \PC0|reg0|Q[21]~70\,
	combout => \PC0|reg0|Q[22]~71_combout\,
	cout => \PC0|reg0|Q[22]~72\);

-- Location: FF_X114_Y26_N11
\PC0|reg0|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[22]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(22));

-- Location: LCCOMB_X114_Y26_N12
\PC0|reg0|Q[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[23]~73_combout\ = (\PC0|reg0|Q\(23) & (!\PC0|reg0|Q[22]~72\)) # (!\PC0|reg0|Q\(23) & ((\PC0|reg0|Q[22]~72\) # (GND)))
-- \PC0|reg0|Q[23]~74\ = CARRY((!\PC0|reg0|Q[22]~72\) # (!\PC0|reg0|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(23),
	datad => VCC,
	cin => \PC0|reg0|Q[22]~72\,
	combout => \PC0|reg0|Q[23]~73_combout\,
	cout => \PC0|reg0|Q[23]~74\);

-- Location: FF_X114_Y26_N13
\PC0|reg0|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[23]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(23));

-- Location: LCCOMB_X114_Y26_N14
\PC0|reg0|Q[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[24]~75_combout\ = (\PC0|reg0|Q\(24) & (\PC0|reg0|Q[23]~74\ $ (GND))) # (!\PC0|reg0|Q\(24) & (!\PC0|reg0|Q[23]~74\ & VCC))
-- \PC0|reg0|Q[24]~76\ = CARRY((\PC0|reg0|Q\(24) & !\PC0|reg0|Q[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(24),
	datad => VCC,
	cin => \PC0|reg0|Q[23]~74\,
	combout => \PC0|reg0|Q[24]~75_combout\,
	cout => \PC0|reg0|Q[24]~76\);

-- Location: FF_X114_Y26_N15
\PC0|reg0|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[24]~75_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(24));

-- Location: LCCOMB_X114_Y26_N16
\PC0|reg0|Q[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[25]~77_combout\ = (\PC0|reg0|Q\(25) & (!\PC0|reg0|Q[24]~76\)) # (!\PC0|reg0|Q\(25) & ((\PC0|reg0|Q[24]~76\) # (GND)))
-- \PC0|reg0|Q[25]~78\ = CARRY((!\PC0|reg0|Q[24]~76\) # (!\PC0|reg0|Q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(25),
	datad => VCC,
	cin => \PC0|reg0|Q[24]~76\,
	combout => \PC0|reg0|Q[25]~77_combout\,
	cout => \PC0|reg0|Q[25]~78\);

-- Location: FF_X114_Y26_N17
\PC0|reg0|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[25]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(25));

-- Location: LCCOMB_X114_Y26_N18
\PC0|reg0|Q[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[26]~79_combout\ = (\PC0|reg0|Q\(26) & (\PC0|reg0|Q[25]~78\ $ (GND))) # (!\PC0|reg0|Q\(26) & (!\PC0|reg0|Q[25]~78\ & VCC))
-- \PC0|reg0|Q[26]~80\ = CARRY((\PC0|reg0|Q\(26) & !\PC0|reg0|Q[25]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(26),
	datad => VCC,
	cin => \PC0|reg0|Q[25]~78\,
	combout => \PC0|reg0|Q[26]~79_combout\,
	cout => \PC0|reg0|Q[26]~80\);

-- Location: FF_X114_Y26_N19
\PC0|reg0|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[26]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(26));

-- Location: LCCOMB_X114_Y26_N20
\PC0|reg0|Q[27]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[27]~81_combout\ = (\PC0|reg0|Q\(27) & (!\PC0|reg0|Q[26]~80\)) # (!\PC0|reg0|Q\(27) & ((\PC0|reg0|Q[26]~80\) # (GND)))
-- \PC0|reg0|Q[27]~82\ = CARRY((!\PC0|reg0|Q[26]~80\) # (!\PC0|reg0|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(27),
	datad => VCC,
	cin => \PC0|reg0|Q[26]~80\,
	combout => \PC0|reg0|Q[27]~81_combout\,
	cout => \PC0|reg0|Q[27]~82\);

-- Location: FF_X114_Y26_N21
\PC0|reg0|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[27]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(27));

-- Location: LCCOMB_X114_Y26_N22
\PC0|reg0|Q[28]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[28]~83_combout\ = (\PC0|reg0|Q\(28) & (\PC0|reg0|Q[27]~82\ $ (GND))) # (!\PC0|reg0|Q\(28) & (!\PC0|reg0|Q[27]~82\ & VCC))
-- \PC0|reg0|Q[28]~84\ = CARRY((\PC0|reg0|Q\(28) & !\PC0|reg0|Q[27]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(28),
	datad => VCC,
	cin => \PC0|reg0|Q[27]~82\,
	combout => \PC0|reg0|Q[28]~83_combout\,
	cout => \PC0|reg0|Q[28]~84\);

-- Location: FF_X114_Y26_N23
\PC0|reg0|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[28]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(28));

-- Location: LCCOMB_X114_Y26_N24
\PC0|reg0|Q[29]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[29]~85_combout\ = (\PC0|reg0|Q\(29) & (!\PC0|reg0|Q[28]~84\)) # (!\PC0|reg0|Q\(29) & ((\PC0|reg0|Q[28]~84\) # (GND)))
-- \PC0|reg0|Q[29]~86\ = CARRY((!\PC0|reg0|Q[28]~84\) # (!\PC0|reg0|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|reg0|Q\(29),
	datad => VCC,
	cin => \PC0|reg0|Q[28]~84\,
	combout => \PC0|reg0|Q[29]~85_combout\,
	cout => \PC0|reg0|Q[29]~86\);

-- Location: FF_X114_Y26_N25
\PC0|reg0|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[29]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(29));

-- Location: LCCOMB_X114_Y26_N26
\PC0|reg0|Q[30]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[30]~87_combout\ = (\PC0|reg0|Q\(30) & (\PC0|reg0|Q[29]~86\ $ (GND))) # (!\PC0|reg0|Q\(30) & (!\PC0|reg0|Q[29]~86\ & VCC))
-- \PC0|reg0|Q[30]~88\ = CARRY((\PC0|reg0|Q\(30) & !\PC0|reg0|Q[29]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|reg0|Q\(30),
	datad => VCC,
	cin => \PC0|reg0|Q[29]~86\,
	combout => \PC0|reg0|Q[30]~87_combout\,
	cout => \PC0|reg0|Q[30]~88\);

-- Location: FF_X114_Y26_N27
\PC0|reg0|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[30]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(30));

-- Location: LCCOMB_X114_Y26_N28
\PC0|reg0|Q[31]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|reg0|Q[31]~89_combout\ = \PC0|reg0|Q[30]~88\ $ (\PC0|reg0|Q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC0|reg0|Q\(31),
	cin => \PC0|reg0|Q[30]~88\,
	combout => \PC0|reg0|Q[31]~89_combout\);

-- Location: FF_X114_Y26_N29
\PC0|reg0|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \PC0|reg0|Q[31]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_ClrPC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|reg0|Q\(31));

-- Location: LCCOMB_X43_Y28_N4
\DATA_MUX0|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux15~4_combout\ = (\DATA_MUX0|Mux15~3_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux15~3_combout\,
	combout => \DATA_MUX0|Mux15~4_combout\);

-- Location: FF_X43_Y28_N5
\IR|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux15~4_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(16));

-- Location: LCCOMB_X39_Y29_N14
\DATA_MUX0|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux14~4_combout\ = (\DATA_MUX0|Mux14~3_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux14~3_combout\,
	combout => \DATA_MUX0|Mux14~4_combout\);

-- Location: FF_X39_Y29_N15
\IR|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux14~4_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(17));

-- Location: LCCOMB_X40_Y26_N12
\DATA_MUX0|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux13~3_combout\ = (\DATA_MUX0|Mux13~7_combout\ & ((\DATA_MUX0|Mux13~2_combout\) # ((!\DATA_MUX0|Mux7~0_combout\)))) # (!\DATA_MUX0|Mux13~7_combout\ & (((\DATA_MUX0|Mux7~0_combout\ & \Data_Mem0|data_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux13~7_combout\,
	datab => \DATA_MUX0|Mux13~2_combout\,
	datac => \DATA_MUX0|Mux7~0_combout\,
	datad => \Data_Mem0|data_out\(18),
	combout => \DATA_MUX0|Mux13~3_combout\);

-- Location: LCCOMB_X40_Y26_N8
\DATA_MUX0|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux13~4_combout\ = (\DATA_MUX0|Mux13~3_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux13~3_combout\,
	combout => \DATA_MUX0|Mux13~4_combout\);

-- Location: FF_X40_Y26_N9
\IR|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux13~4_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(18));

-- Location: LCCOMB_X39_Y26_N30
\DATA_MUX0|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux12~6_combout\ = (\DATA_MUX0|Mux12~5_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux12~5_combout\,
	combout => \DATA_MUX0|Mux12~6_combout\);

-- Location: FF_X39_Y26_N31
\IR|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux12~6_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(19));

-- Location: LCCOMB_X39_Y29_N8
\DATA_MUX0|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux11~6_combout\ = (\DATA_MUX0|Mux11~5_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux11~5_combout\,
	combout => \DATA_MUX0|Mux11~6_combout\);

-- Location: FF_X39_Y29_N9
\IR|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux11~6_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(20));

-- Location: LCCOMB_X34_Y28_N24
\DATA_MUX0|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux10~6_combout\ = (\DATA_MUX0|Mux10~5_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux10~5_combout\,
	combout => \DATA_MUX0|Mux10~6_combout\);

-- Location: FF_X34_Y28_N25
\IR|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux10~6_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(21));

-- Location: LCCOMB_X35_Y26_N22
\DATA_MUX0|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux9~4_combout\ = (\DATA_MUX0|Mux9~3_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX0|Mux9~3_combout\,
	datad => \DATA_MUX[1]~input_o\,
	combout => \DATA_MUX0|Mux9~4_combout\);

-- Location: FF_X35_Y26_N23
\IR|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux9~4_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(22));

-- Location: LCCOMB_X35_Y26_N24
\DATA_MUX0|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux8~6_combout\ = (\DATA_MUX0|Mux8~5_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux8~5_combout\,
	combout => \DATA_MUX0|Mux8~6_combout\);

-- Location: FF_X35_Y26_N25
\IR|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux8~6_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(23));

-- Location: LCCOMB_X34_Y28_N30
\DATA_MUX0|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux7~7_combout\ = (\DATA_MUX0|Mux7~6_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX0|Mux7~6_combout\,
	combout => \DATA_MUX0|Mux7~7_combout\);

-- Location: FF_X34_Y28_N31
\IR|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux7~7_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(24));

-- Location: LCCOMB_X34_Y27_N4
\DATA_MUX0|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux6~7_combout\ = (\DATA_MUX0|Mux6~6_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX0|Mux6~6_combout\,
	datad => \DATA_MUX[1]~input_o\,
	combout => \DATA_MUX0|Mux6~7_combout\);

-- Location: FF_X34_Y27_N5
\IR|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux6~7_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(25));

-- Location: LCCOMB_X33_Y28_N24
\DATA_MUX0|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux5~3_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux5~7_combout\ & (\DATA_MUX0|Mux5~2_combout\)) # (!\DATA_MUX0|Mux5~7_combout\ & ((\Data_Mem0|data_out\(26)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux5~2_combout\,
	datac => \DATA_MUX0|Mux5~7_combout\,
	datad => \Data_Mem0|data_out\(26),
	combout => \DATA_MUX0|Mux5~3_combout\);

-- Location: LCCOMB_X33_Y28_N8
\DATA_MUX0|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux5~4_combout\ = (\DATA_MUX0|Mux5~3_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux5~3_combout\,
	combout => \DATA_MUX0|Mux5~4_combout\);

-- Location: FF_X33_Y28_N9
\IR|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux5~4_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(26));

-- Location: LCCOMB_X33_Y28_N30
\DATA_MUX0|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux4~8_combout\ = (\DATA_MUX0|Mux4~7_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux4~7_combout\,
	combout => \DATA_MUX0|Mux4~8_combout\);

-- Location: FF_X33_Y28_N31
\IR|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux4~8_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(27));

-- Location: LCCOMB_X34_Y29_N28
\DATA_MUX0|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~8_combout\ = (\DATA_MUX0|Mux7~0_combout\ & ((\DATA_MUX0|Mux3~5_combout\ & (\DATA_MUX0|Mux3~7_combout\)) # (!\DATA_MUX0|Mux3~5_combout\ & ((\Data_Mem0|data_out\(28)))))) # (!\DATA_MUX0|Mux7~0_combout\ & (((\DATA_MUX0|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX0|Mux7~0_combout\,
	datab => \DATA_MUX0|Mux3~7_combout\,
	datac => \Data_Mem0|data_out\(28),
	datad => \DATA_MUX0|Mux3~5_combout\,
	combout => \DATA_MUX0|Mux3~8_combout\);

-- Location: LCCOMB_X34_Y29_N20
\DATA_MUX0|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux3~9_combout\ = (\DATA_MUX0|Mux3~8_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux3~8_combout\,
	combout => \DATA_MUX0|Mux3~9_combout\);

-- Location: FF_X34_Y29_N21
\IR|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux3~9_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(28));

-- Location: LCCOMB_X35_Y29_N4
\DATA_MUX0|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux2~8_combout\ = (\DATA_MUX0|Mux2~7_combout\ & ((!\DATA_MUX[1]~input_o\) # (!\DATA_MUX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_MUX[0]~input_o\,
	datac => \DATA_MUX[1]~input_o\,
	datad => \DATA_MUX0|Mux2~7_combout\,
	combout => \DATA_MUX0|Mux2~8_combout\);

-- Location: FF_X35_Y29_N5
\IR|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux2~8_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(29));

-- Location: LCCOMB_X32_Y27_N4
\DATA_MUX0|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux1~6_combout\ = (\DATA_MUX0|Mux1~5_combout\ & ((!\DATA_MUX[0]~input_o\) # (!\DATA_MUX[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_MUX[1]~input_o\,
	datac => \DATA_MUX[0]~input_o\,
	datad => \DATA_MUX0|Mux1~5_combout\,
	combout => \DATA_MUX0|Mux1~6_combout\);

-- Location: FF_X32_Y27_N5
\IR|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux1~6_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(30));

-- Location: LCCOMB_X35_Y29_N26
\DATA_MUX0|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_MUX0|Mux0~5_combout\ = (\DATA_MUX0|Mux0~2_combout\) # (\DATA_MUX0|Mux0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_MUX0|Mux0~2_combout\,
	datad => \DATA_MUX0|Mux0~4_combout\,
	combout => \DATA_MUX0|Mux0~5_combout\);

-- Location: FF_X35_Y29_N27
\IR|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DATA_MUX0|Mux0~5_combout\,
	clrn => \ALT_INV_ClrIR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Q\(31));

-- Location: IOIBUF_X115_Y37_N8
\Clr_C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_C,
	o => \Clr_C~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\Ld_C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_C,
	o => \Ld_C~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\Clr_Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_Z,
	o => \Clr_Z~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\Ld_Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_Z,
	o => \Ld_Z~input_o\);

ww_Out_A(0) <= \Out_A[0]~output_o\;

ww_Out_A(1) <= \Out_A[1]~output_o\;

ww_Out_A(2) <= \Out_A[2]~output_o\;

ww_Out_A(3) <= \Out_A[3]~output_o\;

ww_Out_A(4) <= \Out_A[4]~output_o\;

ww_Out_A(5) <= \Out_A[5]~output_o\;

ww_Out_A(6) <= \Out_A[6]~output_o\;

ww_Out_A(7) <= \Out_A[7]~output_o\;

ww_Out_A(8) <= \Out_A[8]~output_o\;

ww_Out_A(9) <= \Out_A[9]~output_o\;

ww_Out_A(10) <= \Out_A[10]~output_o\;

ww_Out_A(11) <= \Out_A[11]~output_o\;

ww_Out_A(12) <= \Out_A[12]~output_o\;

ww_Out_A(13) <= \Out_A[13]~output_o\;

ww_Out_A(14) <= \Out_A[14]~output_o\;

ww_Out_A(15) <= \Out_A[15]~output_o\;

ww_Out_A(16) <= \Out_A[16]~output_o\;

ww_Out_A(17) <= \Out_A[17]~output_o\;

ww_Out_A(18) <= \Out_A[18]~output_o\;

ww_Out_A(19) <= \Out_A[19]~output_o\;

ww_Out_A(20) <= \Out_A[20]~output_o\;

ww_Out_A(21) <= \Out_A[21]~output_o\;

ww_Out_A(22) <= \Out_A[22]~output_o\;

ww_Out_A(23) <= \Out_A[23]~output_o\;

ww_Out_A(24) <= \Out_A[24]~output_o\;

ww_Out_A(25) <= \Out_A[25]~output_o\;

ww_Out_A(26) <= \Out_A[26]~output_o\;

ww_Out_A(27) <= \Out_A[27]~output_o\;

ww_Out_A(28) <= \Out_A[28]~output_o\;

ww_Out_A(29) <= \Out_A[29]~output_o\;

ww_Out_A(30) <= \Out_A[30]~output_o\;

ww_Out_A(31) <= \Out_A[31]~output_o\;

ww_Out_B(0) <= \Out_B[0]~output_o\;

ww_Out_B(1) <= \Out_B[1]~output_o\;

ww_Out_B(2) <= \Out_B[2]~output_o\;

ww_Out_B(3) <= \Out_B[3]~output_o\;

ww_Out_B(4) <= \Out_B[4]~output_o\;

ww_Out_B(5) <= \Out_B[5]~output_o\;

ww_Out_B(6) <= \Out_B[6]~output_o\;

ww_Out_B(7) <= \Out_B[7]~output_o\;

ww_Out_B(8) <= \Out_B[8]~output_o\;

ww_Out_B(9) <= \Out_B[9]~output_o\;

ww_Out_B(10) <= \Out_B[10]~output_o\;

ww_Out_B(11) <= \Out_B[11]~output_o\;

ww_Out_B(12) <= \Out_B[12]~output_o\;

ww_Out_B(13) <= \Out_B[13]~output_o\;

ww_Out_B(14) <= \Out_B[14]~output_o\;

ww_Out_B(15) <= \Out_B[15]~output_o\;

ww_Out_B(16) <= \Out_B[16]~output_o\;

ww_Out_B(17) <= \Out_B[17]~output_o\;

ww_Out_B(18) <= \Out_B[18]~output_o\;

ww_Out_B(19) <= \Out_B[19]~output_o\;

ww_Out_B(20) <= \Out_B[20]~output_o\;

ww_Out_B(21) <= \Out_B[21]~output_o\;

ww_Out_B(22) <= \Out_B[22]~output_o\;

ww_Out_B(23) <= \Out_B[23]~output_o\;

ww_Out_B(24) <= \Out_B[24]~output_o\;

ww_Out_B(25) <= \Out_B[25]~output_o\;

ww_Out_B(26) <= \Out_B[26]~output_o\;

ww_Out_B(27) <= \Out_B[27]~output_o\;

ww_Out_B(28) <= \Out_B[28]~output_o\;

ww_Out_B(29) <= \Out_B[29]~output_o\;

ww_Out_B(30) <= \Out_B[30]~output_o\;

ww_Out_B(31) <= \Out_B[31]~output_o\;

ww_Out_C <= \Out_C~output_o\;

ww_Out_Z <= \Out_Z~output_o\;

ww_Out_PC(0) <= \Out_PC[0]~output_o\;

ww_Out_PC(1) <= \Out_PC[1]~output_o\;

ww_Out_PC(2) <= \Out_PC[2]~output_o\;

ww_Out_PC(3) <= \Out_PC[3]~output_o\;

ww_Out_PC(4) <= \Out_PC[4]~output_o\;

ww_Out_PC(5) <= \Out_PC[5]~output_o\;

ww_Out_PC(6) <= \Out_PC[6]~output_o\;

ww_Out_PC(7) <= \Out_PC[7]~output_o\;

ww_Out_PC(8) <= \Out_PC[8]~output_o\;

ww_Out_PC(9) <= \Out_PC[9]~output_o\;

ww_Out_PC(10) <= \Out_PC[10]~output_o\;

ww_Out_PC(11) <= \Out_PC[11]~output_o\;

ww_Out_PC(12) <= \Out_PC[12]~output_o\;

ww_Out_PC(13) <= \Out_PC[13]~output_o\;

ww_Out_PC(14) <= \Out_PC[14]~output_o\;

ww_Out_PC(15) <= \Out_PC[15]~output_o\;

ww_Out_PC(16) <= \Out_PC[16]~output_o\;

ww_Out_PC(17) <= \Out_PC[17]~output_o\;

ww_Out_PC(18) <= \Out_PC[18]~output_o\;

ww_Out_PC(19) <= \Out_PC[19]~output_o\;

ww_Out_PC(20) <= \Out_PC[20]~output_o\;

ww_Out_PC(21) <= \Out_PC[21]~output_o\;

ww_Out_PC(22) <= \Out_PC[22]~output_o\;

ww_Out_PC(23) <= \Out_PC[23]~output_o\;

ww_Out_PC(24) <= \Out_PC[24]~output_o\;

ww_Out_PC(25) <= \Out_PC[25]~output_o\;

ww_Out_PC(26) <= \Out_PC[26]~output_o\;

ww_Out_PC(27) <= \Out_PC[27]~output_o\;

ww_Out_PC(28) <= \Out_PC[28]~output_o\;

ww_Out_PC(29) <= \Out_PC[29]~output_o\;

ww_Out_PC(30) <= \Out_PC[30]~output_o\;

ww_Out_PC(31) <= \Out_PC[31]~output_o\;

ww_Out_IR(0) <= \Out_IR[0]~output_o\;

ww_Out_IR(1) <= \Out_IR[1]~output_o\;

ww_Out_IR(2) <= \Out_IR[2]~output_o\;

ww_Out_IR(3) <= \Out_IR[3]~output_o\;

ww_Out_IR(4) <= \Out_IR[4]~output_o\;

ww_Out_IR(5) <= \Out_IR[5]~output_o\;

ww_Out_IR(6) <= \Out_IR[6]~output_o\;

ww_Out_IR(7) <= \Out_IR[7]~output_o\;

ww_Out_IR(8) <= \Out_IR[8]~output_o\;

ww_Out_IR(9) <= \Out_IR[9]~output_o\;

ww_Out_IR(10) <= \Out_IR[10]~output_o\;

ww_Out_IR(11) <= \Out_IR[11]~output_o\;

ww_Out_IR(12) <= \Out_IR[12]~output_o\;

ww_Out_IR(13) <= \Out_IR[13]~output_o\;

ww_Out_IR(14) <= \Out_IR[14]~output_o\;

ww_Out_IR(15) <= \Out_IR[15]~output_o\;

ww_Out_IR(16) <= \Out_IR[16]~output_o\;

ww_Out_IR(17) <= \Out_IR[17]~output_o\;

ww_Out_IR(18) <= \Out_IR[18]~output_o\;

ww_Out_IR(19) <= \Out_IR[19]~output_o\;

ww_Out_IR(20) <= \Out_IR[20]~output_o\;

ww_Out_IR(21) <= \Out_IR[21]~output_o\;

ww_Out_IR(22) <= \Out_IR[22]~output_o\;

ww_Out_IR(23) <= \Out_IR[23]~output_o\;

ww_Out_IR(24) <= \Out_IR[24]~output_o\;

ww_Out_IR(25) <= \Out_IR[25]~output_o\;

ww_Out_IR(26) <= \Out_IR[26]~output_o\;

ww_Out_IR(27) <= \Out_IR[27]~output_o\;

ww_Out_IR(28) <= \Out_IR[28]~output_o\;

ww_Out_IR(29) <= \Out_IR[29]~output_o\;

ww_Out_IR(30) <= \Out_IR[30]~output_o\;

ww_Out_IR(31) <= \Out_IR[31]~output_o\;

ww_ADDR_OUT(0) <= \ADDR_OUT[0]~output_o\;

ww_ADDR_OUT(1) <= \ADDR_OUT[1]~output_o\;

ww_ADDR_OUT(2) <= \ADDR_OUT[2]~output_o\;

ww_ADDR_OUT(3) <= \ADDR_OUT[3]~output_o\;

ww_ADDR_OUT(4) <= \ADDR_OUT[4]~output_o\;

ww_ADDR_OUT(5) <= \ADDR_OUT[5]~output_o\;

ww_ADDR_OUT(6) <= \ADDR_OUT[6]~output_o\;

ww_ADDR_OUT(7) <= \ADDR_OUT[7]~output_o\;

ww_ADDR_OUT(8) <= \ADDR_OUT[8]~output_o\;

ww_ADDR_OUT(9) <= \ADDR_OUT[9]~output_o\;

ww_ADDR_OUT(10) <= \ADDR_OUT[10]~output_o\;

ww_ADDR_OUT(11) <= \ADDR_OUT[11]~output_o\;

ww_ADDR_OUT(12) <= \ADDR_OUT[12]~output_o\;

ww_ADDR_OUT(13) <= \ADDR_OUT[13]~output_o\;

ww_ADDR_OUT(14) <= \ADDR_OUT[14]~output_o\;

ww_ADDR_OUT(15) <= \ADDR_OUT[15]~output_o\;

ww_ADDR_OUT(16) <= \ADDR_OUT[16]~output_o\;

ww_ADDR_OUT(17) <= \ADDR_OUT[17]~output_o\;

ww_ADDR_OUT(18) <= \ADDR_OUT[18]~output_o\;

ww_ADDR_OUT(19) <= \ADDR_OUT[19]~output_o\;

ww_ADDR_OUT(20) <= \ADDR_OUT[20]~output_o\;

ww_ADDR_OUT(21) <= \ADDR_OUT[21]~output_o\;

ww_ADDR_OUT(22) <= \ADDR_OUT[22]~output_o\;

ww_ADDR_OUT(23) <= \ADDR_OUT[23]~output_o\;

ww_ADDR_OUT(24) <= \ADDR_OUT[24]~output_o\;

ww_ADDR_OUT(25) <= \ADDR_OUT[25]~output_o\;

ww_ADDR_OUT(26) <= \ADDR_OUT[26]~output_o\;

ww_ADDR_OUT(27) <= \ADDR_OUT[27]~output_o\;

ww_ADDR_OUT(28) <= \ADDR_OUT[28]~output_o\;

ww_ADDR_OUT(29) <= \ADDR_OUT[29]~output_o\;

ww_ADDR_OUT(30) <= \ADDR_OUT[30]~output_o\;

ww_ADDR_OUT(31) <= \ADDR_OUT[31]~output_o\;

ww_DATA_BUS(0) <= \DATA_BUS[0]~output_o\;

ww_DATA_BUS(1) <= \DATA_BUS[1]~output_o\;

ww_DATA_BUS(2) <= \DATA_BUS[2]~output_o\;

ww_DATA_BUS(3) <= \DATA_BUS[3]~output_o\;

ww_DATA_BUS(4) <= \DATA_BUS[4]~output_o\;

ww_DATA_BUS(5) <= \DATA_BUS[5]~output_o\;

ww_DATA_BUS(6) <= \DATA_BUS[6]~output_o\;

ww_DATA_BUS(7) <= \DATA_BUS[7]~output_o\;

ww_DATA_BUS(8) <= \DATA_BUS[8]~output_o\;

ww_DATA_BUS(9) <= \DATA_BUS[9]~output_o\;

ww_DATA_BUS(10) <= \DATA_BUS[10]~output_o\;

ww_DATA_BUS(11) <= \DATA_BUS[11]~output_o\;

ww_DATA_BUS(12) <= \DATA_BUS[12]~output_o\;

ww_DATA_BUS(13) <= \DATA_BUS[13]~output_o\;

ww_DATA_BUS(14) <= \DATA_BUS[14]~output_o\;

ww_DATA_BUS(15) <= \DATA_BUS[15]~output_o\;

ww_DATA_BUS(16) <= \DATA_BUS[16]~output_o\;

ww_DATA_BUS(17) <= \DATA_BUS[17]~output_o\;

ww_DATA_BUS(18) <= \DATA_BUS[18]~output_o\;

ww_DATA_BUS(19) <= \DATA_BUS[19]~output_o\;

ww_DATA_BUS(20) <= \DATA_BUS[20]~output_o\;

ww_DATA_BUS(21) <= \DATA_BUS[21]~output_o\;

ww_DATA_BUS(22) <= \DATA_BUS[22]~output_o\;

ww_DATA_BUS(23) <= \DATA_BUS[23]~output_o\;

ww_DATA_BUS(24) <= \DATA_BUS[24]~output_o\;

ww_DATA_BUS(25) <= \DATA_BUS[25]~output_o\;

ww_DATA_BUS(26) <= \DATA_BUS[26]~output_o\;

ww_DATA_BUS(27) <= \DATA_BUS[27]~output_o\;

ww_DATA_BUS(28) <= \DATA_BUS[28]~output_o\;

ww_DATA_BUS(29) <= \DATA_BUS[29]~output_o\;

ww_DATA_BUS(30) <= \DATA_BUS[30]~output_o\;

ww_DATA_BUS(31) <= \DATA_BUS[31]~output_o\;

ww_MEM_OUT(0) <= \MEM_OUT[0]~output_o\;

ww_MEM_OUT(1) <= \MEM_OUT[1]~output_o\;

ww_MEM_OUT(2) <= \MEM_OUT[2]~output_o\;

ww_MEM_OUT(3) <= \MEM_OUT[3]~output_o\;

ww_MEM_OUT(4) <= \MEM_OUT[4]~output_o\;

ww_MEM_OUT(5) <= \MEM_OUT[5]~output_o\;

ww_MEM_OUT(6) <= \MEM_OUT[6]~output_o\;

ww_MEM_OUT(7) <= \MEM_OUT[7]~output_o\;

ww_MEM_OUT(8) <= \MEM_OUT[8]~output_o\;

ww_MEM_OUT(9) <= \MEM_OUT[9]~output_o\;

ww_MEM_OUT(10) <= \MEM_OUT[10]~output_o\;

ww_MEM_OUT(11) <= \MEM_OUT[11]~output_o\;

ww_MEM_OUT(12) <= \MEM_OUT[12]~output_o\;

ww_MEM_OUT(13) <= \MEM_OUT[13]~output_o\;

ww_MEM_OUT(14) <= \MEM_OUT[14]~output_o\;

ww_MEM_OUT(15) <= \MEM_OUT[15]~output_o\;

ww_MEM_OUT(16) <= \MEM_OUT[16]~output_o\;

ww_MEM_OUT(17) <= \MEM_OUT[17]~output_o\;

ww_MEM_OUT(18) <= \MEM_OUT[18]~output_o\;

ww_MEM_OUT(19) <= \MEM_OUT[19]~output_o\;

ww_MEM_OUT(20) <= \MEM_OUT[20]~output_o\;

ww_MEM_OUT(21) <= \MEM_OUT[21]~output_o\;

ww_MEM_OUT(22) <= \MEM_OUT[22]~output_o\;

ww_MEM_OUT(23) <= \MEM_OUT[23]~output_o\;

ww_MEM_OUT(24) <= \MEM_OUT[24]~output_o\;

ww_MEM_OUT(25) <= \MEM_OUT[25]~output_o\;

ww_MEM_OUT(26) <= \MEM_OUT[26]~output_o\;

ww_MEM_OUT(27) <= \MEM_OUT[27]~output_o\;

ww_MEM_OUT(28) <= \MEM_OUT[28]~output_o\;

ww_MEM_OUT(29) <= \MEM_OUT[29]~output_o\;

ww_MEM_OUT(30) <= \MEM_OUT[30]~output_o\;

ww_MEM_OUT(31) <= \MEM_OUT[31]~output_o\;

ww_MEM_IN(0) <= \MEM_IN[0]~output_o\;

ww_MEM_IN(1) <= \MEM_IN[1]~output_o\;

ww_MEM_IN(2) <= \MEM_IN[2]~output_o\;

ww_MEM_IN(3) <= \MEM_IN[3]~output_o\;

ww_MEM_IN(4) <= \MEM_IN[4]~output_o\;

ww_MEM_IN(5) <= \MEM_IN[5]~output_o\;

ww_MEM_IN(6) <= \MEM_IN[6]~output_o\;

ww_MEM_IN(7) <= \MEM_IN[7]~output_o\;

ww_MEM_IN(8) <= \MEM_IN[8]~output_o\;

ww_MEM_IN(9) <= \MEM_IN[9]~output_o\;

ww_MEM_IN(10) <= \MEM_IN[10]~output_o\;

ww_MEM_IN(11) <= \MEM_IN[11]~output_o\;

ww_MEM_IN(12) <= \MEM_IN[12]~output_o\;

ww_MEM_IN(13) <= \MEM_IN[13]~output_o\;

ww_MEM_IN(14) <= \MEM_IN[14]~output_o\;

ww_MEM_IN(15) <= \MEM_IN[15]~output_o\;

ww_MEM_IN(16) <= \MEM_IN[16]~output_o\;

ww_MEM_IN(17) <= \MEM_IN[17]~output_o\;

ww_MEM_IN(18) <= \MEM_IN[18]~output_o\;

ww_MEM_IN(19) <= \MEM_IN[19]~output_o\;

ww_MEM_IN(20) <= \MEM_IN[20]~output_o\;

ww_MEM_IN(21) <= \MEM_IN[21]~output_o\;

ww_MEM_IN(22) <= \MEM_IN[22]~output_o\;

ww_MEM_IN(23) <= \MEM_IN[23]~output_o\;

ww_MEM_IN(24) <= \MEM_IN[24]~output_o\;

ww_MEM_IN(25) <= \MEM_IN[25]~output_o\;

ww_MEM_IN(26) <= \MEM_IN[26]~output_o\;

ww_MEM_IN(27) <= \MEM_IN[27]~output_o\;

ww_MEM_IN(28) <= \MEM_IN[28]~output_o\;

ww_MEM_IN(29) <= \MEM_IN[29]~output_o\;

ww_MEM_IN(30) <= \MEM_IN[30]~output_o\;

ww_MEM_IN(31) <= \MEM_IN[31]~output_o\;

ww_MEM_ADDR(0) <= \MEM_ADDR[0]~output_o\;

ww_MEM_ADDR(1) <= \MEM_ADDR[1]~output_o\;

ww_MEM_ADDR(2) <= \MEM_ADDR[2]~output_o\;

ww_MEM_ADDR(3) <= \MEM_ADDR[3]~output_o\;

ww_MEM_ADDR(4) <= \MEM_ADDR[4]~output_o\;

ww_MEM_ADDR(5) <= \MEM_ADDR[5]~output_o\;

ww_MEM_ADDR(6) <= \MEM_ADDR[6]~output_o\;

ww_MEM_ADDR(7) <= \MEM_ADDR[7]~output_o\;
END structure;


