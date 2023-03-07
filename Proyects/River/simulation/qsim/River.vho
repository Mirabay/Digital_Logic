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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/20/2023 20:28:50"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	River IS
    PORT (
	Enter : IN std_logic;
	RESET : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	Win : OUT std_logic;
	Fail : OUT std_logic;
	Crash : OUT std_logic
	);
END River;

-- Design Ports Information
-- Win	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fail	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Crash	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enter	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF River IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Enter : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Win : std_logic;
SIGNAL ww_Fail : std_logic;
SIGNAL ww_Crash : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Enter~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Win~output_o\ : std_logic;
SIGNAL \Fail~output_o\ : std_logic;
SIGNAL \Crash~output_o\ : std_logic;
SIGNAL \Enter~input_o\ : std_logic;
SIGNAL \Enter~inputclkctrl_outclk\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \_~0_combout\ : std_logic;
SIGNAL \_~3_combout\ : std_logic;
SIGNAL \_~2_combout\ : std_logic;
SIGNAL \S0~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \S0~q\ : std_logic;
SIGNAL \_~7_combout\ : std_logic;
SIGNAL \V0~q\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;
SIGNAL \S1~q\ : std_logic;
SIGNAL \_~1_combout\ : std_logic;
SIGNAL \_~4_combout\ : std_logic;
SIGNAL \V1~q\ : std_logic;
SIGNAL \S2~0_combout\ : std_logic;
SIGNAL \S2~q\ : std_logic;
SIGNAL \_~8_combout\ : std_logic;
SIGNAL \V2~q\ : std_logic;
SIGNAL \S3~0_combout\ : std_logic;
SIGNAL \S3~q\ : std_logic;
SIGNAL \_~5_combout\ : std_logic;
SIGNAL \V3~q\ : std_logic;
SIGNAL \S4~0_combout\ : std_logic;
SIGNAL \S4~q\ : std_logic;
SIGNAL \_~9_combout\ : std_logic;
SIGNAL \V4~q\ : std_logic;
SIGNAL \S5~0_combout\ : std_logic;
SIGNAL \S5~q\ : std_logic;
SIGNAL \_~6_combout\ : std_logic;
SIGNAL \V5~q\ : std_logic;
SIGNAL \S6~0_combout\ : std_logic;
SIGNAL \S6~q\ : std_logic;
SIGNAL \_~10_combout\ : std_logic;
SIGNAL \V6~q\ : std_logic;
SIGNAL \S7~0_combout\ : std_logic;
SIGNAL \S7~q\ : std_logic;
SIGNAL \V7~0_combout\ : std_logic;
SIGNAL \Crash~0_combout\ : std_logic;
SIGNAL \V7~1_combout\ : std_logic;
SIGNAL \V7~2_combout\ : std_logic;
SIGNAL \V7~q\ : std_logic;
SIGNAL \Crash~1_combout\ : std_logic;
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Enter <= Enter;
ww_RESET <= RESET;
ww_D <= D;
Win <= ww_Win;
Fail <= ww_Fail;
Crash <= ww_Crash;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\Enter~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Enter~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X11_Y0_N9
\Win~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S7~q\,
	devoe => ww_devoe,
	o => \Win~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\Fail~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V7~q\,
	devoe => ww_devoe,
	o => \Fail~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\Crash~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Crash~1_combout\,
	devoe => ww_devoe,
	o => \Crash~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\Enter~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enter,
	o => \Enter~input_o\);

-- Location: CLKCTRL_G3
\Enter~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Enter~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Enter~inputclkctrl_outclk\);

-- Location: IOIBUF_X11_Y0_N22
\D[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\D[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\D[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\D[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X12_Y1_N6
\_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~0_combout\ = (\D[3]~input_o\ & (\D[0]~input_o\ & (!\D[2]~input_o\ & !\D[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \D[0]~input_o\,
	datac => \D[2]~input_o\,
	datad => \D[1]~input_o\,
	combout => \_~0_combout\);

-- Location: LCCOMB_X12_Y1_N28
\_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~3_combout\ = (\D[3]~input_o\ & (!\D[0]~input_o\ & (!\D[2]~input_o\ & !\D[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \D[0]~input_o\,
	datac => \D[2]~input_o\,
	datad => \D[1]~input_o\,
	combout => \_~3_combout\);

-- Location: LCCOMB_X12_Y1_N14
\_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~2_combout\ = (\D[3]~input_o\ & (!\D[0]~input_o\ & (\D[2]~input_o\ & !\D[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \D[0]~input_o\,
	datac => \D[2]~input_o\,
	datad => \D[1]~input_o\,
	combout => \_~2_combout\);

-- Location: LCCOMB_X12_Y1_N8
\S0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \S0~feeder_combout\);

-- Location: IOIBUF_X0_Y6_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X12_Y1_N9
S0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \S0~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0~q\);

-- Location: LCCOMB_X13_Y1_N8
\_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~7_combout\ = (!\_~0_combout\ & !\S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \_~0_combout\,
	datad => \S0~q\,
	combout => \_~7_combout\);

-- Location: FF_X13_Y1_N9
V0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V0~q\);

-- Location: LCCOMB_X12_Y1_N10
\S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S1~0_combout\ = (\_~0_combout\ & ((\V0~q\) # (!\S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~0_combout\,
	datab => \S0~q\,
	datac => \V0~q\,
	combout => \S1~0_combout\);

-- Location: FF_X12_Y1_N11
S1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \S1~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S1~q\);

-- Location: LCCOMB_X12_Y1_N4
\_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~1_combout\ = (\D[3]~input_o\ & (!\D[0]~input_o\ & (!\D[2]~input_o\ & \D[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \D[0]~input_o\,
	datac => \D[2]~input_o\,
	datad => \D[1]~input_o\,
	combout => \_~1_combout\);

-- Location: LCCOMB_X13_Y1_N18
\_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~4_combout\ = (!\_~1_combout\ & \S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \_~1_combout\,
	datad => \S1~q\,
	combout => \_~4_combout\);

-- Location: FF_X13_Y1_N19
V1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1~q\);

-- Location: LCCOMB_X12_Y1_N22
\S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S2~0_combout\ = (\_~1_combout\ & ((\S1~q\) # (\V1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~q\,
	datac => \_~1_combout\,
	datad => \V1~q\,
	combout => \S2~0_combout\);

-- Location: FF_X12_Y1_N23
S2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \S2~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S2~q\);

-- Location: LCCOMB_X13_Y1_N26
\_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~8_combout\ = (!\_~0_combout\ & \S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \_~0_combout\,
	datad => \S2~q\,
	combout => \_~8_combout\);

-- Location: FF_X13_Y1_N27
V2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~8_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2~q\);

-- Location: LCCOMB_X13_Y1_N22
\S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S3~0_combout\ = (\_~0_combout\ & ((\V2~q\) # (\S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V2~q\,
	datac => \_~0_combout\,
	datad => \S2~q\,
	combout => \S3~0_combout\);

-- Location: FF_X13_Y1_N23
S3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \S3~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S3~q\);

-- Location: LCCOMB_X13_Y1_N16
\_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~5_combout\ = (!\_~2_combout\ & \S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datac => \S3~q\,
	combout => \_~5_combout\);

-- Location: FF_X13_Y1_N17
V3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V3~q\);

-- Location: LCCOMB_X13_Y1_N14
\S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S4~0_combout\ = (\_~2_combout\ & ((\S3~q\) # (\V3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datac => \S3~q\,
	datad => \V3~q\,
	combout => \S4~0_combout\);

-- Location: FF_X13_Y1_N15
S4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \S4~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S4~q\);

-- Location: LCCOMB_X13_Y1_N28
\_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~9_combout\ = (\S4~q\ & !\_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S4~q\,
	datac => \_~0_combout\,
	combout => \_~9_combout\);

-- Location: FF_X13_Y1_N29
V4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~9_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V4~q\);

-- Location: LCCOMB_X13_Y1_N4
\S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S5~0_combout\ = (\_~0_combout\ & ((\S4~q\) # (\V4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S4~q\,
	datac => \_~0_combout\,
	datad => \V4~q\,
	combout => \S5~0_combout\);

-- Location: FF_X13_Y1_N5
S5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \S5~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S5~q\);

-- Location: LCCOMB_X13_Y1_N2
\_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~6_combout\ = (!\_~3_combout\ & \S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~3_combout\,
	datac => \S5~q\,
	combout => \_~6_combout\);

-- Location: FF_X13_Y1_N3
V5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~6_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V5~q\);

-- Location: LCCOMB_X13_Y1_N12
\S6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S6~0_combout\ = (\_~3_combout\ & ((\S5~q\) # (\V5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~3_combout\,
	datac => \S5~q\,
	datad => \V5~q\,
	combout => \S6~0_combout\);

-- Location: FF_X13_Y1_N13
S6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \S6~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S6~q\);

-- Location: LCCOMB_X13_Y1_N6
\_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~10_combout\ = (!\_~0_combout\ & \S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \_~0_combout\,
	datad => \S6~q\,
	combout => \_~10_combout\);

-- Location: FF_X13_Y1_N7
V6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~10_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V6~q\);

-- Location: LCCOMB_X12_Y1_N12
\S7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S7~0_combout\ = (\S7~q\) # ((\_~0_combout\ & ((\S6~q\) # (\V6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~0_combout\,
	datab => \S6~q\,
	datac => \S7~q\,
	datad => \V6~q\,
	combout => \S7~0_combout\);

-- Location: FF_X12_Y1_N13
S7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \S7~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S7~q\);

-- Location: LCCOMB_X13_Y1_N30
\V7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V7~0_combout\ = (\_~2_combout\ & (((!\_~1_combout\ & \V1~q\)))) # (!\_~2_combout\ & ((\V3~q\) # ((!\_~1_combout\ & \V1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datab => \V3~q\,
	datac => \_~1_combout\,
	datad => \V1~q\,
	combout => \V7~0_combout\);

-- Location: LCCOMB_X13_Y1_N0
\Crash~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Crash~0_combout\ = (!\V2~q\ & (!\V4~q\ & (!\V0~q\ & !\V6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2~q\,
	datab => \V4~q\,
	datac => \V0~q\,
	datad => \V6~q\,
	combout => \Crash~0_combout\);

-- Location: LCCOMB_X13_Y1_N24
\V7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V7~1_combout\ = (\_~3_combout\ & (((!\_~0_combout\ & !\Crash~0_combout\)))) # (!\_~3_combout\ & ((\V5~q\) # ((!\_~0_combout\ & !\Crash~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~3_combout\,
	datab => \V5~q\,
	datac => \_~0_combout\,
	datad => \Crash~0_combout\,
	combout => \V7~1_combout\);

-- Location: LCCOMB_X13_Y1_N20
\V7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V7~2_combout\ = (\V7~0_combout\) # ((\V7~q\) # (\V7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V7~0_combout\,
	datac => \V7~q\,
	datad => \V7~1_combout\,
	combout => \V7~2_combout\);

-- Location: FF_X13_Y1_N21
V7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \V7~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V7~q\);

-- Location: LCCOMB_X13_Y1_N10
\Crash~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Crash~1_combout\ = (\V1~q\) # ((\V3~q\) # ((\V5~q\) # (!\Crash~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1~q\,
	datab => \V3~q\,
	datac => \Crash~0_combout\,
	datad => \V5~q\,
	combout => \Crash~1_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_Win <= \Win~output_o\;

ww_Fail <= \Fail~output_o\;

ww_Crash <= \Crash~output_o\;
END structure;


