// megafunction wizard: %LPM_ADD_SUB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_ADD_SUB 

// ============================================================
// File Name: part4_add.v
// Megafunction Name(s):
// 			LPM_ADD_SUB
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.1.0 Build 162 10/23/2013 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//lpm_add_sub DEVICE_FAMILY="Cyclone IV E" LPM_REPRESENTATION="SIGNED" LPM_WIDTH=8 ONE_INPUT_IS_CONSTANT="NO" add_sub cout dataa datab overflow result
//VERSION_BEGIN 13.1 cbx_cycloneii 2013:10:23:18:05:48:SJ cbx_lpm_add_sub 2013:10:23:18:05:48:SJ cbx_mgl 2013:10:23:18:06:54:SJ cbx_stratix 2013:10:23:18:05:48:SJ cbx_stratixii 2013:10:23:18:05:48:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lut 17 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  part4_add_add_sub
	( 
	add_sub,
	cout,
	dataa,
	datab,
	overflow,
	result) /* synthesis synthesis_clearbox=1 */;
	input   add_sub;
	output   cout;
	input   [7:0]  dataa;
	input   [7:0]  datab;
	output   overflow;
	output   [7:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   add_sub;
	tri0   [7:0]  dataa;
	tri0   [7:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[8:0]	wire_result_int;

	always @(add_sub or dataa or datab)
		if (add_sub == 1'b1) wire_result_int = dataa + datab;
		else wire_result_int = dataa - datab;
	assign
		result = wire_result_int[7:0],
		cout = wire_result_int[8:8] ^ ~add_sub;
	assign
		overflow = (~(dataa[7:7] ^ datab[7:7]) ^ ~add_sub) & (dataa[7:7] ^ wire_result_int[7:7]);
endmodule //part4_add_add_sub
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module part4_add (
	add_sub,
	dataa,
	datab,
	cout,
	overflow,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  add_sub;
	input	[7:0]  dataa;
	input	[7:0]  datab;
	output	  cout;
	output	  overflow;
	output	[7:0]  result;

	wire  sub_wire0;
	wire  sub_wire1;
	wire [7:0] sub_wire2;
	wire  overflow = sub_wire0;
	wire  cout = sub_wire1;
	wire [7:0] result = sub_wire2[7:0];

	part4_add_add_sub	part4_add_add_sub_component (
				.add_sub (add_sub),
				.datab (datab),
				.dataa (dataa),
				.overflow (sub_wire0),
				.cout (sub_wire1),
				.result (sub_wire2));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "1"
// Retrieval info: PRIVATE: ConstantA NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: Function NUMERIC "2"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: Overflow NUMERIC "1"
// Retrieval info: PRIVATE: RadixA NUMERIC "10"
// Retrieval info: PRIVATE: RadixB NUMERIC "10"
// Retrieval info: PRIVATE: Representation NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
// Retrieval info: PRIVATE: ValidCtB NUMERIC "0"
// Retrieval info: PRIVATE: WhichConstant NUMERIC "0"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: nBit NUMERIC "8"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "SIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
// Retrieval info: USED_PORT: add_sub 0 0 0 0 INPUT NODEFVAL "add_sub"
// Retrieval info: USED_PORT: cout 0 0 0 0 OUTPUT NODEFVAL "cout"
// Retrieval info: USED_PORT: dataa 0 0 8 0 INPUT NODEFVAL "dataa[7..0]"
// Retrieval info: USED_PORT: datab 0 0 8 0 INPUT NODEFVAL "datab[7..0]"
// Retrieval info: USED_PORT: overflow 0 0 0 0 OUTPUT NODEFVAL "overflow"
// Retrieval info: USED_PORT: result 0 0 8 0 OUTPUT NODEFVAL "result[7..0]"
// Retrieval info: CONNECT: @add_sub 0 0 0 0 add_sub 0 0 0 0
// Retrieval info: CONNECT: @dataa 0 0 8 0 dataa 0 0 8 0
// Retrieval info: CONNECT: @datab 0 0 8 0 datab 0 0 8 0
// Retrieval info: CONNECT: cout 0 0 0 0 @cout 0 0 0 0
// Retrieval info: CONNECT: overflow 0 0 0 0 @overflow 0 0 0 0
// Retrieval info: CONNECT: result 0 0 8 0 @result 0 0 8 0
// Retrieval info: GEN_FILE: TYPE_NORMAL part4_add.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL part4_add.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL part4_add.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL part4_add.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL part4_add_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL part4_add_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL part4_add_syn.v TRUE
// Retrieval info: LIB_FILE: lpm
