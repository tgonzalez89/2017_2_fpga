`timescale 1ns/100ps

module rx_shift_register (spi_clk, load, data_in, data_out,reset);

	input spi_clk, load, reset, data_in;
	output reg [7:0] data_out;
	
	always @(negedge spi_clk) begin
		if(reset==0) begin
			data_out <= 8'h0;
		end else if(load) begin
			data_out <= data_out << 1; 
			data_out[0] <= data_in;
		end
		
	end
	
	endmodule
