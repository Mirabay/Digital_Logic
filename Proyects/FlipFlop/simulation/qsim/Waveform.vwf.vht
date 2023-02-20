-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/20/2023 08:49:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FlipFlopD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FlipFlopD_vhd_vec_tst IS
END FlipFlopD_vhd_vec_tst;
ARCHITECTURE FlipFlopD_arch OF FlipFlopD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Dato : STD_LOGIC;
SIGNAL Reloj : STD_LOGIC;
SIGNAL Salida : STD_LOGIC;
COMPONENT FlipFlopD
	PORT (
	Dato : IN STD_LOGIC;
	Reloj : IN STD_LOGIC;
	Salida : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FlipFlopD
	PORT MAP (
-- list connections between master ports and signals
	Dato => Dato,
	Reloj => Reloj,
	Salida => Salida
	);

-- Reloj
t_prcs_Reloj: PROCESS
BEGIN
LOOP
	Reloj <= '0';
	WAIT FOR 50000 ps;
	Reloj <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Reloj;

-- Dato
t_prcs_Dato: PROCESS
BEGIN
	Dato <= '1';
	WAIT FOR 100000 ps;
	Dato <= '0';
	WAIT FOR 100000 ps;
	Dato <= '1';
	WAIT FOR 100000 ps;
	Dato <= '0';
	WAIT FOR 200000 ps;
	Dato <= '1';
	WAIT FOR 100000 ps;
	Dato <= '0';
WAIT;
END PROCESS t_prcs_Dato;
END FlipFlopD_arch;
