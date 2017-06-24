`timescale 1ns/100ps

module proyecto2 (Mclk,nReset,Data_Available,BUS_IN,Read_RQ,BUS_OUT,SPI_clk,SPI_CS,SPI_MOSI,SPI_MISO,Address,rst_clk);

	input Mclk, nReset, Data_Available, Read_RQ, SPI_MISO;
	input [7:0] BUS_IN, Address;
	output reg SPI_clk;
	output SPI_CS;
	output SPI_MOSI;
	output [120:0] BUS_OUT;
	
	wire almost_full;
	wire empty;
	wire full;
	wire [7:0] q;
	wire [3:0] usedw;
	wire Reg_Tx_Enable;
	wire Reg_Tx_Empty;
	wire Reg_Tx_Req_Data;
	wire Mux_Addr_Tx_Sel;
	wire Reg_Tx_Read_Req;
	wire csi_clk;
	wire [7:0] shifht_reg_data_out;
	reg rdreq;
	wire wrreq;
	wire CS;
	wire sel;
	reg sclr;
	input rst_clk;
	
	always @(posedge Mclk) begin
		if(nReset) begin
			sclr <= 1;
		end else begin
			sclr <= 0;
		end
	end
	
	always @(csi_clk or SPI_CS) begin
		SPI_clk <= ~SPI_CS & csi_clk;
	end
	
	pre_tx_module U0 (.nReset(nReset), .Mclk(Mclk),.Data_Available(Data_Available), .fifo_wrreq(wrreq));
	fifo U1 (.sclr(sclr), .clock(Mclk),  .data(BUS_IN), .rdreq(Reg_Tx_Read_Req), .wrreq(wrreq), .almost_full(almost_full), .empty(empty), .full(full), .q(q), .usedw(usedw));		
//	FSM_SPI U2 (.clock(Mclk),.reset(nReset),.FIFO_almost_empty(almost_full),.FIFO_empty(empty),.Reg_Tx_Empty(Reg_Tx_Empty),.Reg_Tx_Enable(Reg_Tx_Enable),.Mux_Addr_Tx_Sel(Mux_Addr_Tx_Sel),.Reg_Tx_Req_Data(Reg_Tx_Req_Data),.Reg_Tx_Read_Req(Reg_Tx_Read_Req));
	FSM_SPI U2 (.CSI_CLK(csi_clk), .clock(Mclk),.reset(nReset),.tx_almost_full(almost_full), .data_sel(sel),.tx_load(Reg_Tx_Enable),.fifo_tx_read_rq(Reg_Tx_Read_Req),.CS(SPI_CS),.fifo_tx_empty(empty));
	mux_sel U5 (.addr(Address),.data(q),.data_out(shifht_reg_data_out),.sel(sel));
	clk_div_mod U4 (.clk(Mclk),.csi_clk(csi_clk),.rst(rst_clk));
	shift_register U3 (.rst(nReset),.clk(csi_clk),.data_in(shifht_reg_data_out),.load(Reg_Tx_Enable),.data_out(SPI_MOSI));
	
	
endmodule
