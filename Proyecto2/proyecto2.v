`timescale 1ns/100ps

module proyecto2 (Mclk,nReset,Data_Available,BUS_IN,Read_RQ,BUS_OUT,SPI_clk,SPI_CS,SPI_MOSI,SPI_MISO,Address,rst_clk);

	input Mclk, nReset, Data_Available, Read_RQ, SPI_MISO;
	input [7:0] BUS_IN;
	input [6:0] Address;
	output reg SPI_clk;
	output SPI_CS;
	output SPI_MOSI;
	output [119:0] BUS_OUT;
	
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
	wire CS;
	wire sel;
	
	///RX
	wire [7:0] rx_data_out;
	wire rx_load;
	wire fifo_rx_wrreq;
	wire fifo_rx_rdreq;
	wire fifo_rx_almost_full;
	wire fifo_rx_empty;
	wire fifo_rx_full;
	wire [7:0] fifo_rx_q;
	wire [3:0] fifo_rx_usedw;
	wire rx_data_out_wr;
	reg read_write_addr;
	
	
		
	reg sclr;
	input rst_clk;
	
	always @(posedge Mclk) begin
		if(nReset==0) begin
			sclr <= 1;
		end else begin
			sclr <= 0;
		end
		
		if(Read_RQ) begin
			read_write_addr <= 1;
		end else begin
			read_write_addr <= 0;
		end
		
	end
	
	always @(csi_clk or SPI_CS) begin
		SPI_clk <= ~SPI_CS & csi_clk;
	end
	
	pre_tx_module U0 (.nReset(nReset), .Mclk(Mclk),.Data_Available(Data_Available), .fifo_wrreq(wrreq));
	fifo U1 (.sclr(sclr), .clock(Mclk),  .data(BUS_IN), .rdreq(Reg_Tx_Read_Req), .wrreq(wrreq), .almost_full(almost_full), .empty(empty), .full(full), .q(q), .usedw(usedw));		
	FSM_SPI U2 (.rx_almost_full(fifo_rx_almost_full), .fifo_rx_empty(fifo_rx_empty), .CSI_CLK(csi_clk), .clock(Mclk),.reset(nReset),.tx_almost_full(almost_full), .data_sel(sel),.tx_load(Reg_Tx_Enable),.fifo_tx_read_rq(Reg_Tx_Read_Req),.CS(SPI_CS),.fifo_tx_empty(empty),.data_rx_read_rq(Read_RQ), .rx_load(rx_load), .fifo_rx_wrreq(fifo_rx_wrreq), .fifo_rx_rdreq(fifo_rx_rdreq),.rx_data_out_wr(rx_data_out_wr));
	mux_sel U5 (.addr({{7{read_write_addr}},{Address[6:0]}}),.data(q),.data_out(shifht_reg_data_out),.sel(sel));
	clk_div_mod U4 (.clk(Mclk),.csi_clk(csi_clk),.rst(rst_clk));
	shift_register U3 (.rst(nReset),.clk(csi_clk),.data_in(shifht_reg_data_out),.load(Reg_Tx_Enable),.data_out(SPI_MOSI));
	fifo_rx U6 (.sclr(sclr), .clock(Mclk), .data(rx_data_out), .rdreq(fifo_rx_rdreq), .wrreq(fifo_rx_wrreq), .almost_full(fifo_rx_almost_full), .empty(fifo_rx_empty), .full(fifo_rx_full), .q(fifo_rx_q), .usedw(fifo_rx_usedw));
	rx_shift_register U7 (.spi_clk(csi_clk), .load(rx_load), .data_in(SPI_MISO), .data_out(rx_data_out),.reset(nReset));
   parallel_register U8 (.mclk(Mclk), .reset(nReset), .bus_out(BUS_OUT), .data_in(fifo_rx_q), .use_dw(fifo_rx_usedw), .wr(rx_data_out_wr));
	
endmodule
