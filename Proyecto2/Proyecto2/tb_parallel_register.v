`timescale 1us/100ns

module tb_parallel_register ();

reg mclk;
reg reset;
reg [3:0] use_dw;
reg [7:0] data_in;
reg wr;

wire [119:0] bus_out;

parallel_register U0 (.mclk(mclk), .reset(reset), .bus_out(bus_out), .data_in(data_in), .use_dw(use_dw), .wr(wr));

initial begin
	mclk = 0;
	wr = 0;
	reset = 1;
	use_dw  = 4'h0;
	data_in = 7'h0; 
end

always begin
	#10 mclk = ~mclk;
end

initial begin
	#100; 
	reset = 0;
	data_in = 8'h45;
	wr =1;
	use_dw = 4'h0;
	
	#20;
	data_in = 8'h87;
	wr =1;
	use_dw = 4'h1;

	#20;
	data_in = 8'h2e;
	wr =1;
	use_dw = 4'h2;

	#20;
	data_in = 8'h6d;
	wr =1;
	use_dw = 4'h3;

	#20;
	data_in = 8'hf2;
	wr =1;
	use_dw = 4'h4;

	#20;
	data_in = 8'hda;
	wr =1;
	use_dw = 4'h5;

	#20;
	data_in = 8'hea;
	wr =1;
	use_dw = 4'h6;

	#20;
	data_in = 8'h9e;
	wr =1;
	use_dw = 4'h7;

	#20;
	data_in = 8'h3a;
	wr =1;
	use_dw = 4'h8;

	#20;
	data_in = 8'hef;
	wr =1;
	use_dw = 4'h9;

	#20;
	data_in = 8'he3;
	wr =1;
	use_dw = 4'ha;

	#20;
	data_in = 8'hd4;
	wr =1;
	use_dw = 4'hb;

	#20;
	data_in = 8'hab;
	wr =1;
	use_dw = 4'hc;

	#20;
	data_in = 8'hfe;
	wr =1;
	use_dw = 4'hd;

	#20;
	data_in = 8'hff;
	wr =1;
	use_dw = 4'he;	
	#20;
	wr=0;
	use_dw = 4'h0;
	data_in = 8'h0;
	
	#1000;
	#100; 
	
	#20;
	data_in = 8'h87;
	wr =1;
	use_dw = 4'he;

	#20;
	data_in = 8'h2e;
	wr =1;
	use_dw = 4'hd;

	#20;
	data_in = 8'h6d;
	wr =1;
	use_dw = 4'hc;

	#20;
	data_in = 8'hf2;
	wr =1;
	use_dw = 4'hb;

	#20;
	data_in = 8'hda;
	wr =1;
	use_dw = 4'ha;

	#20;
	data_in = 8'hea;
	wr =1;
	use_dw = 4'h9;

	#20;
	data_in = 8'h9e;
	wr =1;
	use_dw = 4'h8;

	#20;
	data_in = 8'h3a;
	wr =1;
	use_dw = 4'h7;

	#20;
	data_in = 8'hef;
	wr =1;
	use_dw = 4'h6;

	#20;
	data_in = 8'h2f;
	wr =1;
	use_dw = 4'h5;

	#20;
	data_in = 8'he3;
	wr =1;
	use_dw = 4'h4;

	#20;
	data_in = 8'hd4;
	wr =1;
	use_dw = 4'h3;

	#20;
	data_in = 8'hab;
	wr =1;
	use_dw = 4'h2;

	#20;
	data_in = 8'hfe;
	wr =1;
	use_dw = 4'h1;

	#20;
	data_in = 8'hff;
	wr =1;
	use_dw = 4'h0;	
	#20;
	wr=0;
	use_dw = 4'h0;
	data_in = 8'h0;
	
	#100;
	
end


endmodule
