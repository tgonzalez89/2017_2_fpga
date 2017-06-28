`timescale 1ns/100ps

module pre_rx_module (SPI_MISO, read_rq,reset,rx_load, spi_clk);
	input read_rq;
	input SPI_MISO;
	input spi_clk;
	input reset;
	
	output reg rx_load;
	reg [2:0] cont;
	
	always @(negedge spi_clk) begin
		if (reset==0) begin
			rx_load <= 0;
			cont <= 3'h0;
		end else if(read_rq) begin
				rx_load <= 1;
				cont <= cont + 1;
		end else if(cont == 1'h1) begin
				rx_load <= 0;
		end else begin
				rx_load <= 0;
		end	
	end
endmodule
