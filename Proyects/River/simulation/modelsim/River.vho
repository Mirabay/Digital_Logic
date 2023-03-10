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

-- DATE "03/09/2023 16:57:42"

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
-- Win	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fail	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Crash	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \_~10_combout\ : std_logic;
SIGNAL \_~0_combout\ : std_logic;
SIGNAL \_~1_combout\ : std_logic;
SIGNAL \S0~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \S0~q\ : std_logic;
SIGNAL \_~8_combout\ : std_logic;
SIGNAL \V0~q\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;
SIGNAL \S1~q\ : std_logic;
SIGNAL \_~2_combout\ : std_logic;
SIGNAL \_~6_combout\ : std_logic;
SIGNAL \V1~q\ : std_logic;
SIGNAL \S2~0_combout\ : std_logic;
SIGNAL \S2~q\ : std_logic;
SIGNAL \_~9_combout\ : std_logic;
SIGNAL \V2~q\ : std_logic;
SIGNAL \S3~0_combout\ : std_logic;
SIGNAL \S3~q\ : std_logic;
SIGNAL \_~4_combout\ : std_logic;
SIGNAL \V3~q\ : std_logic;
SIGNAL \_~12_combout\ : std_logic;
SIGNAL \C2~q\ : std_logic;
SIGNAL \_~7_combout\ : std_logic;
SIGNAL \C5~q\ : std_logic;
SIGNAL \C3~0_combout\ : std_logic;
SIGNAL \C3~q\ : std_logic;
SIGNAL \_~5_combout\ : std_logic;
SIGNAL \C6~feeder_combout\ : std_logic;
SIGNAL \C6~q\ : std_logic;
SIGNAL \S4~0_combout\ : std_logic;
SIGNAL \S4~1_combout\ : std_logic;
SIGNAL \S4~q\ : std_logic;
SIGNAL \_~11_combout\ : std_logic;
SIGNAL \V4~q\ : std_logic;
SIGNAL \S5~0_combout\ : std_logic;
SIGNAL \S5~q\ : std_logic;
SIGNAL \_~3_combout\ : std_logic;
SIGNAL \V5~q\ : std_logic;
SIGNAL \S7~0_combout\ : std_logic;
SIGNAL \S7~q\ : std_logic;
SIGNAL \V7~1_combout\ : std_logic;
SIGNAL \Crash~1_combout\ : std_logic;
SIGNAL \V7~0_combout\ : std_logic;
SIGNAL \V7~2_combout\ : std_logic;
SIGNAL \V7~q\ : std_logic;
SIGNAL \Crash~0_combout\ : std_logic;
SIGNAL \Crash~2_combout\ : std_logic;
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

-- Location: LCCOMB_X11_Y13_N16
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

-- Location: IOOBUF_X3_Y0_N30
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

-- Location: IOOBUF_X3_Y0_N16
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

-- Location: IOOBUF_X3_Y0_N23
\Crash~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Crash~2_combout\,
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

-- Location: IOIBUF_X3_Y0_N8
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

-- Location: IOIBUF_X0_Y2_N15
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

-- Location: IOIBUF_X0_Y2_N1
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

-- Location: IOIBUF_X3_Y0_N1
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

-- Location: LCCOMB_X2_Y1_N18
\_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~10_combout\ = (!\D[2]~input_o\ & (\D[3]~input_o\ & !\D[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datac => \D[3]~input_o\,
	datad => \D[1]~input_o\,
	combout => \_~10_combout\);

-- Location: LCCOMB_X2_Y1_N28
\_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~0_combout\ = (!\D[2]~input_o\ & (!\D[1]~input_o\ & (\D[3]~input_o\ & \D[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \D[1]~input_o\,
	datac => \D[3]~input_o\,
	datad => \D[0]~input_o\,
	combout => \_~0_combout\);

-- Location: LCCOMB_X2_Y1_N22
\_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~1_combout\ = (!\D[2]~input_o\ & (\D[1]~input_o\ & (\D[3]~input_o\ & !\D[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \D[1]~input_o\,
	datac => \D[3]~input_o\,
	datad => \D[0]~input_o\,
	combout => \_~1_combout\);

-- Location: LCCOMB_X2_Y1_N20
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

-- Location: FF_X2_Y1_N21
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

-- Location: LCCOMB_X3_Y1_N24
\_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~8_combout\ = (!\_~0_combout\ & !\S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~0_combout\,
	datad => \S0~q\,
	combout => \_~8_combout\);

-- Location: FF_X3_Y1_N25
V0 : dffeas
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
	q => \V0~q\);

-- Location: LCCOMB_X2_Y1_N12
\S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S1~0_combout\ = (\_~0_combout\ & ((\V0~q\) # (!\S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~0_combout\,
	datac => \V0~q\,
	datad => \S0~q\,
	combout => \S1~0_combout\);

-- Location: FF_X2_Y1_N13
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

-- Location: LCCOMB_X2_Y1_N4
\_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~2_combout\ = (\D[2]~input_o\ & (!\D[1]~input_o\ & (\D[3]~input_o\ & !\D[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \D[1]~input_o\,
	datac => \D[3]~input_o\,
	datad => \D[0]~input_o\,
	combout => \_~2_combout\);

-- Location: LCCOMB_X2_Y1_N30
\_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~6_combout\ = (\S1~q\ & (!\_~2_combout\ & !\_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~q\,
	datab => \_~2_combout\,
	datac => \_~1_combout\,
	combout => \_~6_combout\);

-- Location: FF_X2_Y1_N31
V1 : dffeas
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
	q => \V1~q\);

-- Location: LCCOMB_X2_Y1_N6
\S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S2~0_combout\ = (\_~1_combout\ & ((\V1~q\) # (\S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~1_combout\,
	datac => \V1~q\,
	datad => \S1~q\,
	combout => \S2~0_combout\);

-- Location: FF_X2_Y1_N7
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

-- Location: LCCOMB_X3_Y1_N30
\_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~9_combout\ = (\S2~q\ & !\_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S2~q\,
	datad => \_~0_combout\,
	combout => \_~9_combout\);

-- Location: FF_X3_Y1_N31
V2 : dffeas
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
	q => \V2~q\);

-- Location: LCCOMB_X2_Y1_N26
\S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S3~0_combout\ = (\_~0_combout\ & ((\V2~q\) # (\S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~0_combout\,
	datac => \V2~q\,
	datad => \S2~q\,
	combout => \S3~0_combout\);

-- Location: FF_X2_Y1_N27
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

-- Location: LCCOMB_X2_Y1_N24
\_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~4_combout\ = (!\_~2_combout\ & \S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~2_combout\,
	datac => \S3~q\,
	combout => \_~4_combout\);

-- Location: FF_X2_Y1_N25
V3 : dffeas
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
	q => \V3~q\);

-- Location: LCCOMB_X2_Y1_N14
\_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~12_combout\ = (\S1~q\ & (\_~2_combout\ & !\_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~q\,
	datab => \_~2_combout\,
	datac => \_~1_combout\,
	combout => \_~12_combout\);

-- Location: FF_X2_Y1_N15
C2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~12_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2~q\);

-- Location: LCCOMB_X3_Y1_N18
\_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~7_combout\ = (!\_~0_combout\ & \C2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~0_combout\,
	datad => \C2~q\,
	combout => \_~7_combout\);

-- Location: FF_X3_Y1_N19
C5 : dffeas
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
	q => \C5~q\);

-- Location: LCCOMB_X2_Y1_N0
\C3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3~0_combout\ = (\_~0_combout\ & ((\C2~q\) # (\C5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~0_combout\,
	datac => \C2~q\,
	datad => \C5~q\,
	combout => \C3~0_combout\);

-- Location: FF_X2_Y1_N1
C3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \C3~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3~q\);

-- Location: LCCOMB_X2_Y1_N10
\_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~5_combout\ = (!\_~1_combout\ & \C3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \_~1_combout\,
	datad => \C3~q\,
	combout => \_~5_combout\);

-- Location: LCCOMB_X3_Y1_N26
\C6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6~feeder_combout\ = \_~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \_~5_combout\,
	combout => \C6~feeder_combout\);

-- Location: FF_X3_Y1_N27
C6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \C6~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6~q\);

-- Location: LCCOMB_X2_Y1_N16
\S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S4~0_combout\ = (\_~1_combout\ & ((\C3~q\) # (\C6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3~q\,
	datac => \_~1_combout\,
	datad => \C6~q\,
	combout => \S4~0_combout\);

-- Location: LCCOMB_X2_Y1_N8
\S4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S4~1_combout\ = (\S4~0_combout\) # ((\_~2_combout\ & ((\S3~q\) # (\V3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~q\,
	datab => \V3~q\,
	datac => \_~2_combout\,
	datad => \S4~0_combout\,
	combout => \S4~1_combout\);

-- Location: FF_X2_Y1_N9
S4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \S4~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S4~q\);

-- Location: LCCOMB_X3_Y1_N8
\_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~11_combout\ = (\S4~q\ & ((\D[0]~input_o\) # (!\_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \_~10_combout\,
	datad => \S4~q\,
	combout => \_~11_combout\);

-- Location: FF_X3_Y1_N9
V4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~11_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V4~q\);

-- Location: LCCOMB_X3_Y1_N10
\S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S5~0_combout\ = (\_~10_combout\ & ((\D[0]~input_o\ & (\V4~q\)) # (!\D[0]~input_o\ & ((\S4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V4~q\,
	datab => \_~10_combout\,
	datac => \D[0]~input_o\,
	datad => \S4~q\,
	combout => \S5~0_combout\);

-- Location: FF_X3_Y1_N11
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

-- Location: LCCOMB_X3_Y1_N12
\_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~3_combout\ = (!\_~0_combout\ & \S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~0_combout\,
	datad => \S5~q\,
	combout => \_~3_combout\);

-- Location: FF_X3_Y1_N13
V5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~inputclkctrl_outclk\,
	d => \_~3_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V5~q\);

-- Location: LCCOMB_X3_Y1_N28
\S7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S7~0_combout\ = (\S7~q\) # ((\_~0_combout\ & ((\S5~q\) # (\V5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S5~q\,
	datab => \_~0_combout\,
	datac => \S7~q\,
	datad => \V5~q\,
	combout => \S7~0_combout\);

-- Location: FF_X3_Y1_N29
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

-- Location: LCCOMB_X3_Y1_N22
\V7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V7~1_combout\ = (!\_~1_combout\ & ((\C6~q\) # (\V1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~1_combout\,
	datac => \C6~q\,
	datad => \V1~q\,
	combout => \V7~1_combout\);

-- Location: LCCOMB_X3_Y1_N6
\Crash~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Crash~1_combout\ = (!\V2~q\ & (!\C5~q\ & (!\V4~q\ & !\V0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2~q\,
	datab => \C5~q\,
	datac => \V4~q\,
	datad => \V0~q\,
	combout => \Crash~1_combout\);

-- Location: LCCOMB_X3_Y1_N16
\V7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V7~0_combout\ = (\V7~q\) # ((!\_~0_combout\ & ((\V5~q\) # (!\Crash~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V5~q\,
	datab => \_~0_combout\,
	datac => \V7~q\,
	datad => \Crash~1_combout\,
	combout => \V7~0_combout\);

-- Location: LCCOMB_X3_Y1_N14
\V7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V7~2_combout\ = (\V7~1_combout\) # ((\V7~0_combout\) # ((!\_~2_combout\ & \V3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datab => \V3~q\,
	datac => \V7~1_combout\,
	datad => \V7~0_combout\,
	combout => \V7~2_combout\);

-- Location: FF_X3_Y1_N15
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

-- Location: LCCOMB_X3_Y1_N0
\Crash~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Crash~0_combout\ = (\V1~q\) # ((\C6~q\) # (\V3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1~q\,
	datac => \C6~q\,
	datad => \V3~q\,
	combout => \Crash~0_combout\);

-- Location: LCCOMB_X3_Y1_N20
\Crash~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Crash~2_combout\ = (\Crash~0_combout\) # ((\V5~q\) # (!\Crash~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Crash~0_combout\,
	datac => \Crash~1_combout\,
	datad => \V5~q\,
	combout => \Crash~2_combout\);

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


