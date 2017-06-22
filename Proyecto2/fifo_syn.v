// megafunction wizard: %FIFO%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: scfifo 

// ============================================================
// File Name: fifo.v
// Megafunction Name(s):
// 			scfifo
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 16.1.2 Build 203 01/18/2017 SJ Lite Edition
// ************************************************************


//Copyright (C) 2017  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Intel and sold by Intel or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.


//scfifo ADD_RAM_OUTPUT_REGISTER="OFF" ALMOST_FULL_VALUE=15 DEVICE_FAMILY="Cyclone V" LPM_NUMWORDS=16 LPM_SHOWAHEAD="OFF" LPM_WIDTH=8 LPM_WIDTHU=4 OVERFLOW_CHECKING="ON" RAM_BLOCK_TYPE="MLAB" UNDERFLOW_CHECKING="ON" USE_EAB="ON" almost_full clock data empty full q rdreq sclr usedw wrreq INTENDED_DEVICE_FAMILY="Cyclone V" lpm_hint="RAM_BLOCK_TYPE=MLAB"
//VERSION_BEGIN 16.1 cbx_altdpram 2017:01:18:18:20:37:SJ cbx_altera_counter 2017:01:18:18:20:37:SJ cbx_altera_syncram 2017:01:18:18:20:37:SJ cbx_altera_syncram_nd_impl 2017:01:18:18:20:37:SJ cbx_altsyncram 2017:01:18:18:20:37:SJ cbx_cycloneii 2017:01:18:18:20:37:SJ cbx_fifo_common 2017:01:18:18:20:37:SJ cbx_lpm_add_sub 2017:01:18:18:20:37:SJ cbx_lpm_compare 2017:01:18:18:20:37:SJ cbx_lpm_counter 2017:01:18:18:20:37:SJ cbx_lpm_decode 2017:01:18:18:20:37:SJ cbx_lpm_mux 2017:01:18:18:20:37:SJ cbx_mgl 2017:01:18:18:27:06:SJ cbx_nadder 2017:01:18:18:20:37:SJ cbx_scfifo 2017:01:18:18:20:37:SJ cbx_stratix 2017:01:18:18:20:37:SJ cbx_stratixii 2017:01:18:18:20:37:SJ cbx_stratixiii 2017:01:18:18:20:37:SJ cbx_stratixv 2017:01:18:18:20:37:SJ cbx_util_mgl 2017:01:18:18:20:37:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



//a_dpfifo ADD_RAM_OUTPUT_REGISTER="OFF" ALLOW_RWCYCLE_WHEN_FULL="OFF" DEVICE_FAMILY="Cyclone V" LPM_NUMWORDS=16 LPM_SHOWAHEAD="OFF" lpm_width=8 lpm_widthu=4 OVERFLOW_CHECKING="ON" UNDERFLOW_CHECKING="ON" clock data empty full q rreq sclr usedw wreq INTENDED_DEVICE_FAMILY="Cyclone V" lpm_hint="RAM_BLOCK_TYPE=MLAB"
//VERSION_BEGIN 16.1 cbx_altdpram 2017:01:18:18:20:37:SJ cbx_altera_counter 2017:01:18:18:20:37:SJ cbx_altera_syncram 2017:01:18:18:20:37:SJ cbx_altera_syncram_nd_impl 2017:01:18:18:20:37:SJ cbx_altsyncram 2017:01:18:18:20:37:SJ cbx_cycloneii 2017:01:18:18:20:37:SJ cbx_fifo_common 2017:01:18:18:20:37:SJ cbx_lpm_add_sub 2017:01:18:18:20:37:SJ cbx_lpm_compare 2017:01:18:18:20:37:SJ cbx_lpm_counter 2017:01:18:18:20:37:SJ cbx_lpm_decode 2017:01:18:18:20:37:SJ cbx_lpm_mux 2017:01:18:18:20:37:SJ cbx_mgl 2017:01:18:18:27:06:SJ cbx_nadder 2017:01:18:18:20:37:SJ cbx_scfifo 2017:01:18:18:20:37:SJ cbx_stratix 2017:01:18:18:20:37:SJ cbx_stratixii 2017:01:18:18:20:37:SJ cbx_stratixiii 2017:01:18:18:20:37:SJ cbx_stratixv 2017:01:18:18:20:37:SJ cbx_util_mgl 2017:01:18:18:20:37:SJ  VERSION_END


//a_fefifo ALLOW_RWCYCLE_WHEN_FULL="OFF" LPM_NUMWORDS=16 lpm_widthad=4 OVERFLOW_CHECKING="ON" UNDERFLOW_CHECKING="ON" aclr clock empty full rreq sclr usedw_out wreq
//VERSION_BEGIN 16.1 cbx_cycloneii 2017:01:18:18:20:37:SJ cbx_fifo_common 2017:01:18:18:20:37:SJ cbx_lpm_add_sub 2017:01:18:18:20:37:SJ cbx_lpm_compare 2017:01:18:18:20:37:SJ cbx_lpm_counter 2017:01:18:18:20:37:SJ cbx_lpm_decode 2017:01:18:18:20:37:SJ cbx_mgl 2017:01:18:18:27:06:SJ cbx_nadder 2017:01:18:18:20:37:SJ cbx_stratix 2017:01:18:18:20:37:SJ cbx_stratixii 2017:01:18:18:20:37:SJ  VERSION_END


//lpm_counter DEVICE_FAMILY="Cyclone V" lpm_width=4 aclr clock cnt_en q sclr updown
//VERSION_BEGIN 16.1 cbx_cycloneii 2017:01:18:18:20:37:SJ cbx_lpm_add_sub 2017:01:18:18:20:37:SJ cbx_lpm_compare 2017:01:18:18:20:37:SJ cbx_lpm_counter 2017:01:18:18:20:37:SJ cbx_lpm_decode 2017:01:18:18:20:37:SJ cbx_mgl 2017:01:18:18:27:06:SJ cbx_nadder 2017:01:18:18:20:37:SJ cbx_stratix 2017:01:18:18:20:37:SJ cbx_stratixii 2017:01:18:18:20:37:SJ  VERSION_END

//synthesis_resources = lut 4 reg 4 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  fifo_cntr
	( 
	aclr,
	clock,
	cnt_en,
	q,
	sclr,
	updown) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clock;
	input   cnt_en;
	output   [3:0]  q;
	input   sclr;
	input   updown;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   cnt_en;
	tri0   sclr;
	tri1   updown;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire	[3:0]	wire_counter_reg_bit_d;
	wire	[3:0]	wire_counter_reg_bit_asdata;
	reg	[3:0]	counter_reg_bit;
	wire	[3:0]	wire_counter_reg_bit_ena;
	wire	[3:0]	wire_counter_reg_bit_sload;
	wire  [0:0]   wire_counter_comb_bita_0cout;
	wire  [0:0]   wire_counter_comb_bita_1cout;
	wire  [0:0]   wire_counter_comb_bita_2cout;
	wire  [0:0]   wire_counter_comb_bita_0sumout;
	wire  [0:0]   wire_counter_comb_bita_1sumout;
	wire  [0:0]   wire_counter_comb_bita_2sumout;
	wire  [0:0]   wire_counter_comb_bita_3sumout;
	wire  aclr_actual;
	wire clk_en;
	wire [3:0]  data;
	wire  external_cin;
	wire  lsb_cin;
	wire  [3:0]  s_val;
	wire  [3:0]  safe_q;
	wire sload;
	wire sset;
	wire  updown_dir;
	wire  updown_lsb;
	wire  updown_other_bits;

	// synopsys translate_off
	initial
		counter_reg_bit[0:0] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[0:0] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[0:0] == 1'b1) 
			if (sclr == 1'b1) counter_reg_bit[0:0] <= 1'b0;
			else if (wire_counter_reg_bit_sload[0:0] == 1'b1) counter_reg_bit[0:0] <= wire_counter_reg_bit_asdata[0:0];
			else  counter_reg_bit[0:0] <= wire_counter_reg_bit_d[0:0];
	// synopsys translate_off
	initial
		counter_reg_bit[1:1] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[1:1] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[1:1] == 1'b1) 
			if (sclr == 1'b1) counter_reg_bit[1:1] <= 1'b0;
			else if (wire_counter_reg_bit_sload[1:1] == 1'b1) counter_reg_bit[1:1] <= wire_counter_reg_bit_asdata[1:1];
			else  counter_reg_bit[1:1] <= wire_counter_reg_bit_d[1:1];
	// synopsys translate_off
	initial
		counter_reg_bit[2:2] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[2:2] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[2:2] == 1'b1) 
			if (sclr == 1'b1) counter_reg_bit[2:2] <= 1'b0;
			else if (wire_counter_reg_bit_sload[2:2] == 1'b1) counter_reg_bit[2:2] <= wire_counter_reg_bit_asdata[2:2];
			else  counter_reg_bit[2:2] <= wire_counter_reg_bit_d[2:2];
	// synopsys translate_off
	initial
		counter_reg_bit[3:3] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[3:3] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[3:3] == 1'b1) 
			if (sclr == 1'b1) counter_reg_bit[3:3] <= 1'b0;
			else if (wire_counter_reg_bit_sload[3:3] == 1'b1) counter_reg_bit[3:3] <= wire_counter_reg_bit_asdata[3:3];
			else  counter_reg_bit[3:3] <= wire_counter_reg_bit_d[3:3];
	assign
		wire_counter_reg_bit_asdata = (({4{sset}} & s_val) | ({4{(~ sset)}} & data)),
		wire_counter_reg_bit_d = {wire_counter_comb_bita_3sumout[0:0], wire_counter_comb_bita_2sumout[0:0], wire_counter_comb_bita_1sumout[0:0], wire_counter_comb_bita_0sumout[0:0]};
	assign
		wire_counter_reg_bit_ena = {4{(clk_en & (((cnt_en | sclr) | sset) | sload))}},
		wire_counter_reg_bit_sload = {4{(sset | sload)}};
	cyclonev_lcell_comb   counter_comb_bita_0
	( 
	.cin(lsb_cin),
	.combout(),
	.cout(wire_counter_comb_bita_0cout[0:0]),
	.datad(counter_reg_bit[0]),
	.dataf(updown_lsb),
	.shareout(),
	.sumout(wire_counter_comb_bita_0sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datac(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		counter_comb_bita_0.extended_lut = "off",
		counter_comb_bita_0.lut_mask = 64'h000000000000FF00,
		counter_comb_bita_0.shared_arith = "off",
		counter_comb_bita_0.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   counter_comb_bita_1
	( 
	.cin(wire_counter_comb_bita_0cout[0:0]),
	.combout(),
	.cout(wire_counter_comb_bita_1cout[0:0]),
	.datad(counter_reg_bit[1]),
	.dataf(updown_other_bits),
	.shareout(),
	.sumout(wire_counter_comb_bita_1sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datac(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		counter_comb_bita_1.extended_lut = "off",
		counter_comb_bita_1.lut_mask = 64'h0000FF000000FF00,
		counter_comb_bita_1.shared_arith = "off",
		counter_comb_bita_1.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   counter_comb_bita_2
	( 
	.cin(wire_counter_comb_bita_1cout[0:0]),
	.combout(),
	.cout(wire_counter_comb_bita_2cout[0:0]),
	.datad(counter_reg_bit[2]),
	.dataf(updown_other_bits),
	.shareout(),
	.sumout(wire_counter_comb_bita_2sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datac(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		counter_comb_bita_2.extended_lut = "off",
		counter_comb_bita_2.lut_mask = 64'h0000FF000000FF00,
		counter_comb_bita_2.shared_arith = "off",
		counter_comb_bita_2.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   counter_comb_bita_3
	( 
	.cin(wire_counter_comb_bita_2cout[0:0]),
	.combout(),
	.cout(),
	.datad(counter_reg_bit[3]),
	.dataf(updown_other_bits),
	.shareout(),
	.sumout(wire_counter_comb_bita_3sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datac(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		counter_comb_bita_3.extended_lut = "off",
		counter_comb_bita_3.lut_mask = 64'h0000FF000000FF00,
		counter_comb_bita_3.shared_arith = "off",
		counter_comb_bita_3.lpm_type = "cyclonev_lcell_comb";
	assign
		aclr_actual = aclr,
		clk_en = 1'b1,
		data = {4{1'b0}},
		external_cin = 1'b1,
		lsb_cin = 1'b0,
		q = safe_q,
		s_val = {4{1'b1}},
		safe_q = counter_reg_bit,
		sload = 1'b0,
		sset = 1'b0,
		updown_dir = updown,
		updown_lsb = updown_dir,
		updown_other_bits = ((~ external_cin) | updown_dir);
endmodule //fifo_cntr

//synthesis_resources = lut 4 reg 6 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  fifo_a_fefifo
	( 
	aclr,
	clock,
	empty,
	full,
	rreq,
	sclr,
	usedw_out,
	wreq) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clock;
	output   empty;
	output   full;
	input   rreq;
	input   sclr;
	output   [3:0]  usedw_out;
	input   wreq;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri0   rreq;
	tri0   sclr;
	tri0   wreq;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	b_full;
	reg	b_non_empty;
	wire  [3:0]   wire_count_usedw_q;
	wire  [3:0]  equal_af1;
	wire  [3:0]  equal_one;
	wire  is_almost_empty0;
	wire  is_almost_empty1;
	wire  is_almost_empty2;
	wire  is_almost_empty3;
	wire  is_almost_full0;
	wire  is_almost_full1;
	wire  is_almost_full2;
	wire  is_almost_full3;
	wire  [3:0]  usedw;
	wire  valid_rreq;
	wire  valid_wreq;

	// synopsys translate_off
	initial
		b_full = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) b_full <= 1'b0;
		else  b_full <= ((b_full & (b_full ^ (sclr | rreq))) | (((~ b_full) & b_non_empty) & ((~ sclr) & ((is_almost_full3 & wreq) & (~ rreq)))));
	// synopsys translate_off
	initial
		b_non_empty = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) b_non_empty <= 1'b0;
		else  b_non_empty <= (((b_full & (b_full ^ sclr)) | (((~ b_non_empty) & wreq) & (~ sclr))) | (((~ b_full) & b_non_empty) & (((~ b_full) & b_non_empty) ^ (sclr | ((is_almost_empty3 & rreq) & (~ wreq))))));
	fifo_cntr   count_usedw
	( 
	.aclr(aclr),
	.clock(clock),
	.cnt_en((valid_wreq ^ valid_rreq)),
	.q(wire_count_usedw_q),
	.sclr(sclr),
	.updown(valid_wreq));
	assign
		empty = (~ b_non_empty),
		equal_af1 = {4{1'b0}},
		equal_one = {{3{1'b1}}, 1'b0},
		full = b_full,
		is_almost_empty0 = (usedw[0] ^ equal_one[0]),
		is_almost_empty1 = ((usedw[1] ^ equal_one[1]) & is_almost_empty0),
		is_almost_empty2 = ((usedw[2] ^ equal_one[2]) & is_almost_empty1),
		is_almost_empty3 = ((usedw[3] ^ equal_one[3]) & is_almost_empty2),
		is_almost_full0 = (usedw[0] ^ equal_af1[0]),
		is_almost_full1 = ((usedw[1] ^ equal_af1[1]) & is_almost_full0),
		is_almost_full2 = ((usedw[2] ^ equal_af1[2]) & is_almost_full1),
		is_almost_full3 = ((usedw[3] ^ equal_af1[3]) & is_almost_full2),
		usedw = wire_count_usedw_q,
		usedw_out = usedw,
		valid_rreq = (rreq & b_non_empty),
		valid_wreq = (wreq & (~ b_full));
endmodule //fifo_a_fefifo


//altsyncram ADDRESS_ACLR_A="NONE" ADDRESS_ACLR_B="NONE" ADDRESS_REG_B="CLOCK1" DEVICE_FAMILY="Cyclone V" ENABLE_ECC="FALSE" INDATA_ACLR_A="NONE" NUMWORDS_A=16 NUMWORDS_B=16 OPERATION_MODE="DUAL_PORT" OUTDATA_ACLR_B="NONE" OUTDATA_REG_B="UNREGISTERED" RAM_BLOCK_TYPE="MLAB" RDCONTROL_ACLR_B="NONE" RDCONTROL_REG_B="CLOCK0" READ_DURING_WRITE_MODE_MIXED_PORTS="DONT_CARE" WIDTH_A=8 WIDTH_B=8 WIDTH_ECCSTATUS=2 WIDTHAD_A=4 WIDTHAD_B=4 WRCONTROL_ACLR_A="NONE" address_a address_b clock0 clock1 clocken1 data_a q_b wren_a
//VERSION_BEGIN 16.1 cbx_altera_syncram_nd_impl 2017:01:18:18:20:37:SJ cbx_altsyncram 2017:01:18:18:20:37:SJ cbx_cycloneii 2017:01:18:18:20:37:SJ cbx_lpm_add_sub 2017:01:18:18:20:37:SJ cbx_lpm_compare 2017:01:18:18:20:37:SJ cbx_lpm_decode 2017:01:18:18:20:37:SJ cbx_lpm_mux 2017:01:18:18:20:37:SJ cbx_mgl 2017:01:18:18:27:06:SJ cbx_nadder 2017:01:18:18:20:37:SJ cbx_stratix 2017:01:18:18:20:37:SJ cbx_stratixii 2017:01:18:18:20:37:SJ cbx_stratixiii 2017:01:18:18:20:37:SJ cbx_stratixv 2017:01:18:18:20:37:SJ cbx_util_mgl 2017:01:18:18:20:37:SJ  VERSION_END

//synthesis_resources = MLAB 1 reg 4 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"OPTIMIZE_POWER_DURING_SYNTHESIS=NORMAL_COMPILATION"} *)
module  fifo_altsyncram
	( 
	address_a,
	address_b,
	clock0,
	clock1,
	clocken1,
	data_a,
	q_b,
	wren_a) /* synthesis synthesis_clearbox=1 */;
	input   [3:0]  address_a;
	input   [3:0]  address_b;
	input   clock0;
	input   clock1;
	input   clocken1;
	input   [7:0]  data_a;
	output   [7:0]  q_b;
	input   wren_a;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   [3:0]  address_b;
	tri1   clock0;
	tri1   clock1;
	tri1   clocken1;
	tri1   [7:0]  data_a;
	tri0   wren_a;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	(* ALTERA_ATTRIBUTE = {"PRESERVE_REGISTER=ON"} *)
	reg	[3:0]	rdaddr_reg;
	wire  [7:0]   wire_lutrama_portbdataout;
	wire  [7:0]  datain_wire;
	wire  [7:0]  dataout_wire;
	wire  [3:0]  rdaddr_wire;
	wire  wr_en;
	wire  [3:0]  wraddr_wire;

	// synopsys translate_off
	initial
		rdaddr_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock1)
		if (clocken1 == 1'b1)   rdaddr_reg <= address_b;
	cyclonev_mlab_cell   lutrama_0
	( 
	.clk0(clock0),
	.ena0(wr_en),
	.portaaddr(wraddr_wire[3:0]),
	.portadatain(datain_wire[0]),
	.portbaddr(rdaddr_wire[3:0]),
	.portbdataout(wire_lutrama_portbdataout[0:0])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr(1'b0),
	.ena1(1'b1),
	.ena2(1'b1),
	.portabyteenamasks({2{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		lutrama_0.address_width = 4,
		lutrama_0.data_width = 1,
		lutrama_0.first_address = 0,
		lutrama_0.first_bit_number = 0,
		lutrama_0.last_address = 15,
		lutrama_0.logical_ram_depth = 16,
		lutrama_0.logical_ram_name = "altdpram_instance",
		lutrama_0.logical_ram_width = 8,
		lutrama_0.mixed_port_feed_through_mode = "dont care",
		lutrama_0.lpm_type = "cyclonev_mlab_cell";
	cyclonev_mlab_cell   lutrama_1
	( 
	.clk0(clock0),
	.ena0(wr_en),
	.portaaddr(wraddr_wire[3:0]),
	.portadatain(datain_wire[1]),
	.portbaddr(rdaddr_wire[3:0]),
	.portbdataout(wire_lutrama_portbdataout[1:1])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr(1'b0),
	.ena1(1'b1),
	.ena2(1'b1),
	.portabyteenamasks({2{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		lutrama_1.address_width = 4,
		lutrama_1.data_width = 1,
		lutrama_1.first_address = 0,
		lutrama_1.first_bit_number = 1,
		lutrama_1.last_address = 15,
		lutrama_1.logical_ram_depth = 16,
		lutrama_1.logical_ram_name = "altdpram_instance",
		lutrama_1.logical_ram_width = 8,
		lutrama_1.mixed_port_feed_through_mode = "dont care",
		lutrama_1.lpm_type = "cyclonev_mlab_cell";
	cyclonev_mlab_cell   lutrama_2
	( 
	.clk0(clock0),
	.ena0(wr_en),
	.portaaddr(wraddr_wire[3:0]),
	.portadatain(datain_wire[2]),
	.portbaddr(rdaddr_wire[3:0]),
	.portbdataout(wire_lutrama_portbdataout[2:2])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr(1'b0),
	.ena1(1'b1),
	.ena2(1'b1),
	.portabyteenamasks({2{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		lutrama_2.address_width = 4,
		lutrama_2.data_width = 1,
		lutrama_2.first_address = 0,
		lutrama_2.first_bit_number = 2,
		lutrama_2.last_address = 15,
		lutrama_2.logical_ram_depth = 16,
		lutrama_2.logical_ram_name = "altdpram_instance",
		lutrama_2.logical_ram_width = 8,
		lutrama_2.mixed_port_feed_through_mode = "dont care",
		lutrama_2.lpm_type = "cyclonev_mlab_cell";
	cyclonev_mlab_cell   lutrama_3
	( 
	.clk0(clock0),
	.ena0(wr_en),
	.portaaddr(wraddr_wire[3:0]),
	.portadatain(datain_wire[3]),
	.portbaddr(rdaddr_wire[3:0]),
	.portbdataout(wire_lutrama_portbdataout[3:3])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr(1'b0),
	.ena1(1'b1),
	.ena2(1'b1),
	.portabyteenamasks({2{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		lutrama_3.address_width = 4,
		lutrama_3.data_width = 1,
		lutrama_3.first_address = 0,
		lutrama_3.first_bit_number = 3,
		lutrama_3.last_address = 15,
		lutrama_3.logical_ram_depth = 16,
		lutrama_3.logical_ram_name = "altdpram_instance",
		lutrama_3.logical_ram_width = 8,
		lutrama_3.mixed_port_feed_through_mode = "dont care",
		lutrama_3.lpm_type = "cyclonev_mlab_cell";
	cyclonev_mlab_cell   lutrama_4
	( 
	.clk0(clock0),
	.ena0(wr_en),
	.portaaddr(wraddr_wire[3:0]),
	.portadatain(datain_wire[4]),
	.portbaddr(rdaddr_wire[3:0]),
	.portbdataout(wire_lutrama_portbdataout[4:4])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr(1'b0),
	.ena1(1'b1),
	.ena2(1'b1),
	.portabyteenamasks({2{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		lutrama_4.address_width = 4,
		lutrama_4.data_width = 1,
		lutrama_4.first_address = 0,
		lutrama_4.first_bit_number = 4,
		lutrama_4.last_address = 15,
		lutrama_4.logical_ram_depth = 16,
		lutrama_4.logical_ram_name = "altdpram_instance",
		lutrama_4.logical_ram_width = 8,
		lutrama_4.mixed_port_feed_through_mode = "dont care",
		lutrama_4.lpm_type = "cyclonev_mlab_cell";
	cyclonev_mlab_cell   lutrama_5
	( 
	.clk0(clock0),
	.ena0(wr_en),
	.portaaddr(wraddr_wire[3:0]),
	.portadatain(datain_wire[5]),
	.portbaddr(rdaddr_wire[3:0]),
	.portbdataout(wire_lutrama_portbdataout[5:5])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr(1'b0),
	.ena1(1'b1),
	.ena2(1'b1),
	.portabyteenamasks({2{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		lutrama_5.address_width = 4,
		lutrama_5.data_width = 1,
		lutrama_5.first_address = 0,
		lutrama_5.first_bit_number = 5,
		lutrama_5.last_address = 15,
		lutrama_5.logical_ram_depth = 16,
		lutrama_5.logical_ram_name = "altdpram_instance",
		lutrama_5.logical_ram_width = 8,
		lutrama_5.mixed_port_feed_through_mode = "dont care",
		lutrama_5.lpm_type = "cyclonev_mlab_cell";
	cyclonev_mlab_cell   lutrama_6
	( 
	.clk0(clock0),
	.ena0(wr_en),
	.portaaddr(wraddr_wire[3:0]),
	.portadatain(datain_wire[6]),
	.portbaddr(rdaddr_wire[3:0]),
	.portbdataout(wire_lutrama_portbdataout[6:6])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr(1'b0),
	.ena1(1'b1),
	.ena2(1'b1),
	.portabyteenamasks({2{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		lutrama_6.address_width = 4,
		lutrama_6.data_width = 1,
		lutrama_6.first_address = 0,
		lutrama_6.first_bit_number = 6,
		lutrama_6.last_address = 15,
		lutrama_6.logical_ram_depth = 16,
		lutrama_6.logical_ram_name = "altdpram_instance",
		lutrama_6.logical_ram_width = 8,
		lutrama_6.mixed_port_feed_through_mode = "dont care",
		lutrama_6.lpm_type = "cyclonev_mlab_cell";
	cyclonev_mlab_cell   lutrama_7
	( 
	.clk0(clock0),
	.ena0(wr_en),
	.portaaddr(wraddr_wire[3:0]),
	.portadatain(datain_wire[7]),
	.portbaddr(rdaddr_wire[3:0]),
	.portbdataout(wire_lutrama_portbdataout[7:7])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clk1(1'b0),
	.clr(1'b0),
	.ena1(1'b1),
	.ena2(1'b1),
	.portabyteenamasks({2{1'b1}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		lutrama_7.address_width = 4,
		lutrama_7.data_width = 1,
		lutrama_7.first_address = 0,
		lutrama_7.first_bit_number = 7,
		lutrama_7.last_address = 15,
		lutrama_7.logical_ram_depth = 16,
		lutrama_7.logical_ram_name = "altdpram_instance",
		lutrama_7.logical_ram_width = 8,
		lutrama_7.mixed_port_feed_through_mode = "dont care",
		lutrama_7.lpm_type = "cyclonev_mlab_cell";
	assign
		datain_wire = data_a,
		dataout_wire = wire_lutrama_portbdataout,
		q_b = dataout_wire,
		rdaddr_wire = rdaddr_reg,
		wr_en = wren_a,
		wraddr_wire = address_a;
endmodule //fifo_altsyncram


//lpm_counter DEVICE_FAMILY="Cyclone V" lpm_direction="UP" lpm_port_updown="PORT_UNUSED" lpm_width=4 aclr clock cnt_en q sclr
//VERSION_BEGIN 16.1 cbx_cycloneii 2017:01:18:18:20:37:SJ cbx_lpm_add_sub 2017:01:18:18:20:37:SJ cbx_lpm_compare 2017:01:18:18:20:37:SJ cbx_lpm_counter 2017:01:18:18:20:37:SJ cbx_lpm_decode 2017:01:18:18:20:37:SJ cbx_mgl 2017:01:18:18:27:06:SJ cbx_nadder 2017:01:18:18:20:37:SJ cbx_stratix 2017:01:18:18:20:37:SJ cbx_stratixii 2017:01:18:18:20:37:SJ  VERSION_END

//synthesis_resources = lut 4 reg 4 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  fifo_cntr1
	( 
	aclr,
	clock,
	cnt_en,
	q,
	sclr) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clock;
	input   cnt_en;
	output   [3:0]  q;
	input   sclr;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   cnt_en;
	tri0   sclr;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire	[3:0]	wire_counter_reg_bit_d;
	wire	[3:0]	wire_counter_reg_bit_asdata;
	reg	[3:0]	counter_reg_bit;
	wire	[3:0]	wire_counter_reg_bit_ena;
	wire	[3:0]	wire_counter_reg_bit_sload;
	wire  [0:0]   wire_counter_comb_bita_0cout;
	wire  [0:0]   wire_counter_comb_bita_1cout;
	wire  [0:0]   wire_counter_comb_bita_2cout;
	wire  [0:0]   wire_counter_comb_bita_0sumout;
	wire  [0:0]   wire_counter_comb_bita_1sumout;
	wire  [0:0]   wire_counter_comb_bita_2sumout;
	wire  [0:0]   wire_counter_comb_bita_3sumout;
	wire  aclr_actual;
	wire clk_en;
	wire [3:0]  data;
	wire  external_cin;
	wire  lsb_cin;
	wire  [3:0]  s_val;
	wire  [3:0]  safe_q;
	wire sload;
	wire sset;
	wire  updown_dir;
	wire  updown_lsb;
	wire  updown_other_bits;

	// synopsys translate_off
	initial
		counter_reg_bit[0:0] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[0:0] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[0:0] == 1'b1) 
			if (sclr == 1'b1) counter_reg_bit[0:0] <= 1'b0;
			else if (wire_counter_reg_bit_sload[0:0] == 1'b1) counter_reg_bit[0:0] <= wire_counter_reg_bit_asdata[0:0];
			else  counter_reg_bit[0:0] <= wire_counter_reg_bit_d[0:0];
	// synopsys translate_off
	initial
		counter_reg_bit[1:1] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[1:1] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[1:1] == 1'b1) 
			if (sclr == 1'b1) counter_reg_bit[1:1] <= 1'b0;
			else if (wire_counter_reg_bit_sload[1:1] == 1'b1) counter_reg_bit[1:1] <= wire_counter_reg_bit_asdata[1:1];
			else  counter_reg_bit[1:1] <= wire_counter_reg_bit_d[1:1];
	// synopsys translate_off
	initial
		counter_reg_bit[2:2] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[2:2] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[2:2] == 1'b1) 
			if (sclr == 1'b1) counter_reg_bit[2:2] <= 1'b0;
			else if (wire_counter_reg_bit_sload[2:2] == 1'b1) counter_reg_bit[2:2] <= wire_counter_reg_bit_asdata[2:2];
			else  counter_reg_bit[2:2] <= wire_counter_reg_bit_d[2:2];
	// synopsys translate_off
	initial
		counter_reg_bit[3:3] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[3:3] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[3:3] == 1'b1) 
			if (sclr == 1'b1) counter_reg_bit[3:3] <= 1'b0;
			else if (wire_counter_reg_bit_sload[3:3] == 1'b1) counter_reg_bit[3:3] <= wire_counter_reg_bit_asdata[3:3];
			else  counter_reg_bit[3:3] <= wire_counter_reg_bit_d[3:3];
	assign
		wire_counter_reg_bit_asdata = (({4{sset}} & s_val) | ({4{(~ sset)}} & data)),
		wire_counter_reg_bit_d = {wire_counter_comb_bita_3sumout[0:0], wire_counter_comb_bita_2sumout[0:0], wire_counter_comb_bita_1sumout[0:0], wire_counter_comb_bita_0sumout[0:0]};
	assign
		wire_counter_reg_bit_ena = {4{(clk_en & (((cnt_en | sclr) | sset) | sload))}},
		wire_counter_reg_bit_sload = {4{(sset | sload)}};
	cyclonev_lcell_comb   counter_comb_bita_0
	( 
	.cin(lsb_cin),
	.combout(),
	.cout(wire_counter_comb_bita_0cout[0:0]),
	.datad(counter_reg_bit[0]),
	.dataf(updown_lsb),
	.shareout(),
	.sumout(wire_counter_comb_bita_0sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datac(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		counter_comb_bita_0.extended_lut = "off",
		counter_comb_bita_0.lut_mask = 64'h000000000000FF00,
		counter_comb_bita_0.shared_arith = "off",
		counter_comb_bita_0.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   counter_comb_bita_1
	( 
	.cin(wire_counter_comb_bita_0cout[0:0]),
	.combout(),
	.cout(wire_counter_comb_bita_1cout[0:0]),
	.datad(counter_reg_bit[1]),
	.dataf(updown_other_bits),
	.shareout(),
	.sumout(wire_counter_comb_bita_1sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datac(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		counter_comb_bita_1.extended_lut = "off",
		counter_comb_bita_1.lut_mask = 64'h0000FF000000FF00,
		counter_comb_bita_1.shared_arith = "off",
		counter_comb_bita_1.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   counter_comb_bita_2
	( 
	.cin(wire_counter_comb_bita_1cout[0:0]),
	.combout(),
	.cout(wire_counter_comb_bita_2cout[0:0]),
	.datad(counter_reg_bit[2]),
	.dataf(updown_other_bits),
	.shareout(),
	.sumout(wire_counter_comb_bita_2sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datac(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		counter_comb_bita_2.extended_lut = "off",
		counter_comb_bita_2.lut_mask = 64'h0000FF000000FF00,
		counter_comb_bita_2.shared_arith = "off",
		counter_comb_bita_2.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   counter_comb_bita_3
	( 
	.cin(wire_counter_comb_bita_2cout[0:0]),
	.combout(),
	.cout(),
	.datad(counter_reg_bit[3]),
	.dataf(updown_other_bits),
	.shareout(),
	.sumout(wire_counter_comb_bita_3sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datac(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		counter_comb_bita_3.extended_lut = "off",
		counter_comb_bita_3.lut_mask = 64'h0000FF000000FF00,
		counter_comb_bita_3.shared_arith = "off",
		counter_comb_bita_3.lpm_type = "cyclonev_lcell_comb";
	assign
		aclr_actual = aclr,
		clk_en = 1'b1,
		data = {4{1'b0}},
		external_cin = 1'b1,
		lsb_cin = 1'b0,
		q = safe_q,
		s_val = {4{1'b1}},
		safe_q = counter_reg_bit,
		sload = 1'b0,
		sset = 1'b0,
		updown_dir = 1'b1,
		updown_lsb = updown_dir,
		updown_other_bits = ((~ external_cin) | updown_dir);
endmodule //fifo_cntr1

//synthesis_resources = lut 12 MLAB 1 reg 18 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  fifo_a_dpfifo
	( 
	clock,
	data,
	empty,
	full,
	q,
	rreq,
	sclr,
	usedw,
	wreq) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   [7:0]  data;
	output   empty;
	output   full;
	output   [7:0]  q;
	input   rreq;
	input   sclr;
	output   [3:0]  usedw;
	input   wreq;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   sclr;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  wire_fifo_state_empty;
	wire  wire_fifo_state_full;
	wire  [3:0]   wire_fifo_state_usedw_out;
	wire  [7:0]   wire_FIFOram_q_b;
	wire  [3:0]   wire_rd_ptr_count_q;
	wire  [3:0]   wire_wr_ptr_q;
	wire aclr;
	wire  [3:0]  rd_ptr;
	wire  valid_rreq;
	wire  valid_wreq;

	fifo_a_fefifo   fifo_state
	( 
	.aclr(aclr),
	.clock(clock),
	.empty(wire_fifo_state_empty),
	.full(wire_fifo_state_full),
	.rreq(rreq),
	.sclr(sclr),
	.usedw_out(wire_fifo_state_usedw_out),
	.wreq(wreq));
	fifo_altsyncram   FIFOram
	( 
	.address_a(wire_wr_ptr_q),
	.address_b(({4{(~ sclr)}} & rd_ptr)),
	.clock0(clock),
	.clock1(clock),
	.clocken1((valid_rreq | sclr)),
	.data_a(data),
	.q_b(wire_FIFOram_q_b),
	.wren_a(valid_wreq));
	fifo_cntr1   rd_ptr_count
	( 
	.aclr(aclr),
	.clock(clock),
	.cnt_en(valid_rreq),
	.q(wire_rd_ptr_count_q),
	.sclr(sclr));
	fifo_cntr1   wr_ptr
	( 
	.aclr(aclr),
	.clock(clock),
	.cnt_en(valid_wreq),
	.q(wire_wr_ptr_q),
	.sclr(sclr));
	assign
		aclr = 1'b0,
		empty = wire_fifo_state_empty,
		full = wire_fifo_state_full,
		q = wire_FIFOram_q_b,
		rd_ptr = wire_rd_ptr_count_q,
		usedw = wire_fifo_state_usedw_out,
		valid_rreq = (rreq & (~ wire_fifo_state_empty)),
		valid_wreq = (wreq & (~ wire_fifo_state_full));
endmodule //fifo_a_dpfifo

//synthesis_resources = lut 12 MLAB 1 reg 19 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  fifo_scfifo
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
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   sclr;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  wire_dpfifo_empty;
	wire  wire_dpfifo_full;
	wire  [7:0]   wire_dpfifo_q;
	wire  [3:0]   wire_dpfifo_usedw;
	reg	dffe_af;
	wire  comparison_af0;
	wire  comparison_af1;
	wire  comparison_af2;
	wire  comparison_af3;
	wire  comparison_pre_af0;
	wire  comparison_pre_af1;
	wire  comparison_pre_af2;
	wire  comparison_pre_af3;
	wire  [3:0]  wire_af;
	wire  [3:0]  wire_pre_af;

	fifo_a_dpfifo   dpfifo
	( 
	.clock(clock),
	.data(data),
	.empty(wire_dpfifo_empty),
	.full(wire_dpfifo_full),
	.q(wire_dpfifo_q),
	.rreq(rdreq),
	.sclr(sclr),
	.usedw(wire_dpfifo_usedw),
	.wreq(wrreq));
	// synopsys translate_off
	initial
		dffe_af = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		  dffe_af <= ((dffe_af & (dffe_af ^ (sclr | ((comparison_af3 & (~ wrreq)) & rdreq)))) | ((~ dffe_af) & ((((~ sclr) & comparison_pre_af3) & wrreq) & (~ rdreq))));
	assign
		almost_full = dffe_af,
		comparison_af0 = (wire_dpfifo_usedw[0] ^ wire_af[0]),
		comparison_af1 = ((wire_dpfifo_usedw[1] ^ wire_af[1]) & comparison_af0),
		comparison_af2 = ((wire_dpfifo_usedw[2] ^ wire_af[2]) & comparison_af1),
		comparison_af3 = ((wire_dpfifo_usedw[3] ^ wire_af[3]) & comparison_af2),
		comparison_pre_af0 = (wire_dpfifo_usedw[0] ^ wire_pre_af[0]),
		comparison_pre_af1 = ((wire_dpfifo_usedw[1] ^ wire_pre_af[1]) & comparison_pre_af0),
		comparison_pre_af2 = ((wire_dpfifo_usedw[2] ^ wire_pre_af[2]) & comparison_pre_af1),
		comparison_pre_af3 = ((wire_dpfifo_usedw[3] ^ wire_pre_af[3]) & comparison_pre_af2),
		empty = wire_dpfifo_empty,
		full = wire_dpfifo_full,
		q = wire_dpfifo_q,
		usedw = wire_dpfifo_usedw,
		wire_af = {4{1'b0}},
		wire_pre_af = {{3{1'b0}}, 1'b1};
endmodule //fifo_scfifo
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module fifo (
	clock,
	data,
	rdreq,
	sclr,
	wrreq,
	almost_full,
	empty,
	full,
	q,
	usedw)/* synthesis synthesis_clearbox = 1 */;

	input	  clock;
	input	[7:0]  data;
	input	  rdreq;
	input	  sclr;
	input	  wrreq;
	output	  almost_full;
	output	  empty;
	output	  full;
	output	[7:0]  q;
	output	[3:0]  usedw;

	wire  sub_wire0;
	wire  sub_wire1;
	wire  sub_wire2;
	wire [7:0] sub_wire3;
	wire [3:0] sub_wire4;
	wire  almost_full = sub_wire0;
	wire  empty = sub_wire1;
	wire  full = sub_wire2;
	wire [7:0] q = sub_wire3[7:0];
	wire [3:0] usedw = sub_wire4[3:0];

	fifo_scfifo	fifo_scfifo_component (
				.clock (clock),
				.data (data),
				.rdreq (rdreq),
				.sclr (sclr),
				.wrreq (wrreq),
				.almost_full (sub_wire0),
				.empty (sub_wire1),
				.full (sub_wire2),
				.q (sub_wire3),
				.usedw (sub_wire4));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AlmostEmpty NUMERIC "0"
// Retrieval info: PRIVATE: AlmostEmptyThr NUMERIC "-1"
// Retrieval info: PRIVATE: AlmostFull NUMERIC "1"
// Retrieval info: PRIVATE: AlmostFullThr NUMERIC "15"
// Retrieval info: PRIVATE: CLOCKS_ARE_SYNCHRONIZED NUMERIC "0"
// Retrieval info: PRIVATE: Clock NUMERIC "0"
// Retrieval info: PRIVATE: Depth NUMERIC "16"
// Retrieval info: PRIVATE: Empty NUMERIC "1"
// Retrieval info: PRIVATE: Full NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: LE_BasedFIFO NUMERIC "0"
// Retrieval info: PRIVATE: LegacyRREQ NUMERIC "1"
// Retrieval info: PRIVATE: MAX_DEPTH_BY_9 NUMERIC "0"
// Retrieval info: PRIVATE: OVERFLOW_CHECKING NUMERIC "0"
// Retrieval info: PRIVATE: Optimize NUMERIC "2"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: UNDERFLOW_CHECKING NUMERIC "0"
// Retrieval info: PRIVATE: UsedW NUMERIC "1"
// Retrieval info: PRIVATE: Width NUMERIC "8"
// Retrieval info: PRIVATE: dc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: diff_widths NUMERIC "0"
// Retrieval info: PRIVATE: msb_usedw NUMERIC "0"
// Retrieval info: PRIVATE: output_width NUMERIC "8"
// Retrieval info: PRIVATE: rsEmpty NUMERIC "1"
// Retrieval info: PRIVATE: rsFull NUMERIC "1"
// Retrieval info: PRIVATE: rsUsedW NUMERIC "1"
// Retrieval info: PRIVATE: sc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: sc_sclr NUMERIC "1"
// Retrieval info: PRIVATE: wsEmpty NUMERIC "1"
// Retrieval info: PRIVATE: wsFull NUMERIC "1"
// Retrieval info: PRIVATE: wsUsedW NUMERIC "1"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: ADD_RAM_OUTPUT_REGISTER STRING "OFF"
// Retrieval info: CONSTANT: ALMOST_FULL_VALUE NUMERIC "15"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: LPM_HINT STRING "RAM_BLOCK_TYPE=MLAB"
// Retrieval info: CONSTANT: LPM_NUMWORDS NUMERIC "16"
// Retrieval info: CONSTANT: LPM_SHOWAHEAD STRING "OFF"
// Retrieval info: CONSTANT: LPM_TYPE STRING "scfifo"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
// Retrieval info: CONSTANT: LPM_WIDTHU NUMERIC "4"
// Retrieval info: CONSTANT: OVERFLOW_CHECKING STRING "ON"
// Retrieval info: CONSTANT: UNDERFLOW_CHECKING STRING "ON"
// Retrieval info: CONSTANT: USE_EAB STRING "ON"
// Retrieval info: USED_PORT: almost_full 0 0 0 0 OUTPUT NODEFVAL "almost_full"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: data 0 0 8 0 INPUT NODEFVAL "data[7..0]"
// Retrieval info: USED_PORT: empty 0 0 0 0 OUTPUT NODEFVAL "empty"
// Retrieval info: USED_PORT: full 0 0 0 0 OUTPUT NODEFVAL "full"
// Retrieval info: USED_PORT: q 0 0 8 0 OUTPUT NODEFVAL "q[7..0]"
// Retrieval info: USED_PORT: rdreq 0 0 0 0 INPUT NODEFVAL "rdreq"
// Retrieval info: USED_PORT: sclr 0 0 0 0 INPUT NODEFVAL "sclr"
// Retrieval info: USED_PORT: usedw 0 0 4 0 OUTPUT NODEFVAL "usedw[3..0]"
// Retrieval info: USED_PORT: wrreq 0 0 0 0 INPUT NODEFVAL "wrreq"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 8 0 data 0 0 8 0
// Retrieval info: CONNECT: @rdreq 0 0 0 0 rdreq 0 0 0 0
// Retrieval info: CONNECT: @sclr 0 0 0 0 sclr 0 0 0 0
// Retrieval info: CONNECT: @wrreq 0 0 0 0 wrreq 0 0 0 0
// Retrieval info: CONNECT: almost_full 0 0 0 0 @almost_full 0 0 0 0
// Retrieval info: CONNECT: empty 0 0 0 0 @empty 0 0 0 0
// Retrieval info: CONNECT: full 0 0 0 0 @full 0 0 0 0
// Retrieval info: CONNECT: q 0 0 8 0 @q 0 0 8 0
// Retrieval info: CONNECT: usedw 0 0 4 0 @usedw 0 0 4 0
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fifo_syn.v TRUE
// Retrieval info: LIB_FILE: altera_mf
