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
-- Generated on "02/20/2023 20:28:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          River
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY River_vhd_vec_tst IS
END River_vhd_vec_tst;
ARCHITECTURE River_arch OF River_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Crash : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Enter : STD_LOGIC;
SIGNAL Fail : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL Win : STD_LOGIC;
COMPONENT River
	PORT (
	Crash : OUT STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Enter : IN STD_LOGIC;
	Fail : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	Win : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : River
	PORT MAP (
-- list connections between master ports and signals
	Crash => Crash,
	D => D,
	Enter => Enter,
	Fail => Fail,
	RESET => RESET,
	Win => Win
	);

-- Enter
t_prcs_Enter: PROCESS
BEGIN
LOOP
	Enter <= '0';
	WAIT FOR 50000 ps;
	Enter <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Enter;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '1';
	WAIT FOR 600000 ps;
	D(3) <= '0';
	WAIT FOR 200000 ps;
	D(3) <= '1';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
	WAIT FOR 300000 ps;
	D(2) <= '1';
	WAIT FOR 100000 ps;
	D(2) <= '0';
	WAIT FOR 200000 ps;
	D(2) <= '1';
	WAIT FOR 200000 ps;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
	WAIT FOR 100000 ps;
	D(1) <= '1';
	WAIT FOR 100000 ps;
	D(1) <= '0';
	WAIT FOR 400000 ps;
	D(1) <= '1';
	WAIT FOR 200000 ps;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '1';
	WAIT FOR 100000 ps;
	D(0) <= '0';
	WAIT FOR 100000 ps;
	D(0) <= '1';
	WAIT FOR 100000 ps;
	D(0) <= '0';
	WAIT FOR 100000 ps;
	D(0) <= '1';
	WAIT FOR 200000 ps;
	D(0) <= '0';
	WAIT FOR 200000 ps;
	D(0) <= '1';
WAIT;
END PROCESS t_prcs_D_0;
END River_arch;
