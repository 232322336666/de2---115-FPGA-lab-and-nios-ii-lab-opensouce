-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/19/2019 12:42:34"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab1 IS
    PORT (
	DECODER : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0)
	);
END lab1;

-- Design Ports Information
-- DECODER[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DECODER : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL \DECODER[6]~output_o\ : std_logic;
SIGNAL \DECODER[5]~output_o\ : std_logic;
SIGNAL \DECODER[4]~output_o\ : std_logic;
SIGNAL \DECODER[3]~output_o\ : std_logic;
SIGNAL \DECODER[2]~output_o\ : std_logic;
SIGNAL \DECODER[1]~output_o\ : std_logic;
SIGNAL \DECODER[0]~output_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|Decoder0~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|HEX~0_combout\ : std_logic;
SIGNAL \inst|Decoder3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Decoder3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Decoder0~0_combout\ : std_logic;

BEGIN

DECODER <= ww_DECODER;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_Decoder3~0_combout\ <= NOT \inst|Decoder3~0_combout\;
\inst|ALT_INV_WideOr0~0_combout\ <= NOT \inst|WideOr0~0_combout\;
\inst|ALT_INV_Decoder0~1_combout\ <= NOT \inst|Decoder0~1_combout\;
\inst|ALT_INV_Decoder0~0_combout\ <= NOT \inst|Decoder0~0_combout\;

-- Location: IOOBUF_X115_Y69_N2
\DECODER[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \DECODER[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\DECODER[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \DECODER[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\DECODER[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \DECODER[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\DECODER[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \DECODER[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\DECODER[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|HEX~0_combout\,
	devoe => ww_devoe,
	o => \DECODER[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\DECODER[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|HEX~0_combout\,
	devoe => ww_devoe,
	o => \DECODER[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\DECODER[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Decoder3~0_combout\,
	devoe => ww_devoe,
	o => \DECODER[0]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X114_Y47_N24
\inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~0_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \inst|Decoder0~0_combout\);

-- Location: LCCOMB_X114_Y47_N10
\inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~1_combout\ = (!\SW[2]~input_o\ & !\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \inst|Decoder0~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y47_N12
\inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X114_Y47_N22
\inst|HEX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|HEX~0_combout\ = (\SW[2]~input_o\) # ((\SW[3]~input_o\) # (\SW[0]~input_o\ $ (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|HEX~0_combout\);

-- Location: LCCOMB_X114_Y47_N8
\inst|Decoder3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder3~0_combout\ = (!\SW[2]~input_o\ & (\SW[0]~input_o\ & !\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \inst|Decoder3~0_combout\);

ww_DECODER(6) <= \DECODER[6]~output_o\;

ww_DECODER(5) <= \DECODER[5]~output_o\;

ww_DECODER(4) <= \DECODER[4]~output_o\;

ww_DECODER(3) <= \DECODER[3]~output_o\;

ww_DECODER(2) <= \DECODER[2]~output_o\;

ww_DECODER(1) <= \DECODER[1]~output_o\;

ww_DECODER(0) <= \DECODER[0]~output_o\;
END structure;


