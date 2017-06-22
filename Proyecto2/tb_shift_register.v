`timescale 1us/100ns

module tb_shift_register ();

	reg rst, clk, load;
	reg [7:0] data_in;
	wire data_out;


	shift_register A0 (.rst(rst),.clk(clk),.data_in(data_in),.load(load),.data_out(data_out));
	
	initial begin
		rst =0;
		clk=0;
		load=0;
		data_in= 8'h0;	
	end
	
	always begin
		#10 clk = ~clk;
	end
	
	initial begin
		#1000 rst=0;
				data_in = 8'hf3;
				load = 1;
		#20;
				load = 0;
		#1000;
				load = 1;				
				data_in = 8'h34;
		#20;
				load = 0;
		#1000;
				load = 1;				
				data_in = 8'h67;
		#20;
				load = 0;
		#1000;
				load = 1;				
				data_in = 8'h78;
		#20;
				load = 0;
		#1000;
				load = 1;				
				data_in = 8'h23;
		#20;
				load = 0;
		#1000;
				load = 1;				
				data_in = 8'h90;
		#20;
				load = 0;				
				$finish;
	end

	
endmodule
