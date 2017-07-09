//scfifo ADD_RAM_OUTPUT_REGISTER="OFF" ALMOST_FULL_VALUE=15 CBX_SINGLE_OUTPUT_FILE="ON" INTENDED_DEVICE_FAMILY=""Cyclone V"" LPM_HINT="RAM_BLOCK_TYPE=MLAB" LPM_NUMWORDS=16 LPM_SHOWAHEAD="OFF" LPM_TYPE="scfifo" LPM_WIDTH=8 LPM_WIDTHU=4 OVERFLOW_CHECKING="ON" UNDERFLOW_CHECKING="ON" USE_EAB="OFF" almost_full clock data empty full q rdreq sclr usedw wrreq
//VERSION_BEGIN 16.1 cbx_mgl 2017:01:18:18:27:06:SJ cbx_stratixii 2017:01:18:18:20:37:SJ cbx_util_mgl 2017:01:18:18:20:37:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2017  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel MegaCore Function License Agreement, or other 
//  applicable license agreement, including, without limitation, 
//  that your use is for the sole purpose of programming logic 
//  devices manufactured by Intel and sold by Intel or its 
//  authorized distributors.  Please refer to the applicable 
//  agreement for further details.



//synthesis_resources = scfifo 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mg6k01
	( 
	almost_full,
	clock,
	data,
	empty,
	full,
	q,
	rdreq,
	sclr,
	usedw,
	wrreq) /* synthesis synthesis_clearbox=1 */;
	output   almost_full;
	input   clock;
	input   [7:0]  data;
	output   empty;
	output   full;
	output   [7:0]  q;
	input   rdreq;
	input   sclr;
	output   [3:0]  usedw;
	input   wrreq;

	wire  wire_mgl_prim1_almost_full;
	wire  wire_mgl_prim1_empty;
	wire  wire_mgl_prim1_full;
	wire  [7:0]   wire_mgl_prim1_q;
	wire  [3:0]   wire_mgl_prim1_usedw;

	scfifo   mgl_prim1
	( 
	.almost_full(wire_mgl_prim1_almost_full),
	.clock(clock),
	.data(data),
	.empty(wire_mgl_prim1_empty),
	.full(wire_mgl_prim1_full),
	.q(wire_mgl_prim1_q),
	.rdreq(rdreq),
	.sclr(sclr),
	.usedw(wire_mgl_prim1_usedw),
	.wrreq(wrreq));
	defparam
		mgl_prim1.add_ram_output_register = "OFF",
		mgl_prim1.almost_full_value = 15,
		mgl_prim1.intended_device_family = ""Cyclone V"",
		mgl_prim1.lpm_numwords = 16,
		mgl_prim1.lpm_showahead = "OFF",
		mgl_prim1.lpm_type = "scfifo",
		mgl_prim1.lpm_width = 8,
		mgl_prim1.lpm_widthu = 4,
		mgl_prim1.overflow_checking = "ON",
		mgl_prim1.underflow_checking = "ON",
		mgl_prim1.use_eab = "OFF",
		mgl_prim1.lpm_hint = "RAM_BLOCK_TYPE=MLAB";
	assign
		almost_full = wire_mgl_prim1_almost_full,
		empty = wire_mgl_prim1_empty,
		full = wire_mgl_prim1_full,
		q = wire_mgl_prim1_q,
		usedw = wire_mgl_prim1_usedw;
endmodule //mg6k01
//VALID FILE
