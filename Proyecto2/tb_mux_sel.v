module tb_mux_sel ();
	reg [7:0] addr;
	reg [7:0] data;
	wire [7:0] data_out;
	reg sel;
	
	mux_sel M0 (.addr(addr),.data(data),.data_out(data_out),.sel(sel));
	
	initial begin
		addr = 8'h0;
		data = 8'h0;
		sel = 0;
	end
	

	initial begin
		#1000;
		addr = 8'h50;
		data = 8'h90;
		sel = 1;
		
		#1000;
		addr = 8'haa;
		data = 8'hf4;
		sel = 0;

		#1000;
		addr = 8'h5c;
		data = 8'hb3;
		sel = 1;

		#1000;
		addr = 8'h5c;
		data = 8'h21;
		sel = 1;

		#1000;
		addr = 8'h2e;
		data = 8'h5a;
		sel = 0;

		#1000;
		addr = 8'h6b;
		data = 8'h1c;
		sel = 1;
		$finish;
		
	end
	

endmodule
