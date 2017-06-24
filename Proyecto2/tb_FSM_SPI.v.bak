`timescale 1us/100ns

module tb_FSM_SPI ();

	 reg clock;
    reg reset;
    reg tx_almost_full;
    reg CSI_CLK;
	 wire data_sel;
    wire tx_load;
    wire fifo_rx_read_rq;
    wire CS;

FSM_SPI  U1 (.CSI_CLK(CSI_CLK), .clock(clock),.reset(reset),.tx_almost_full(tx_almost_full),.data_sel(data_sel),.tx_load(tx_load),.fifo_rx_read_rq(fifo_rx_read),.CS(CS));

	initial begin
		clock = 0;
		reset = 1;
		tx_almost_full = 0;
		CSI_CLK=0;
	end
	
	always begin
		#10 clock = ~clock;
	end
	
	always begin
		#5120 CSI_CLK = ~CSI_CLK;
	end
	
	
	initial begin
		#10000 	reset=0; 
		tx_almost_full = 1;
		#200000;
		
		
		$finish;
	end
	
	
		

endmodule
