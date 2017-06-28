module tb_rx_shift_register ();
	
	reg spi_clk;
	reg load;
	reg data_in;
	reg reset;
	
	wire [7:0] data_out;
	
	rx_shift_register U2 (.spi_clk(spi_clk), .load(load), .data_in(data_in), .data_out(data_out),.reset(reset));
	
	initial begin 
		reset = 1;
		data_in = 0;
		load = 0;
		spi_clk = 0;
	end
	
	always begin
		#10 spi_clk = ~spi_clk;
	end
	
	initial begin
		#100 reset = 0; load = 1;
		#20 data_in = 0;
		#20 data_in = 1;
		#20 data_in = 1;
		#20 data_in = 0;
		#20 data_in = 1;
		#20 data_in = 0;
		#20 data_in = 0;
		#20 data_in = 1;
		#20 load = 0;
		#100;
		
		$finish;
	end
	
	
	
endmodule
