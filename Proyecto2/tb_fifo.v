`timescale 1us/100ns

module tb_fifo ();
	reg	  clock;
	reg	[7:0]  data;
	reg	  rdreq;
	reg	  wrreq;
	reg 	  sclr;
	wire	  almost_full;
	wire	  empty;
	wire	  full;
	wire	[7:0]  q;
	wire	[3:0]  usedw;
	
	fifo_rx U0 (.sclr(sclr), .clock(clock), .data(data), .rdreq(rdreq), .wrreq(wrreq), .almost_full(almost_full), .empty(empty), .full(full), .q(q), .usedw(usedw));
	

	initial begin
		clock = 0;
		data = 8'h0;
		rdreq = 0;
		wrreq = 0;	
		sclr = 1;
	end

	always  begin
		#100 clock = ~clock;
	end


	initial begin
		#1000;
		sclr=0;
		data = 8'h56;
		rdreq = 0;
		#1000;
		wrreq = 1;
		#1000;
		data = 8'haa;
		#1000;
		data = 8'hff;
		#1000;
		data = 8'haa;
		#1000;
		wrreq = 0;
		#500;
		rdreq = 1;
		#1000;
		#500;
		rdreq = 0;
		#1000;
		#10000;
		$finish;
 
/*
		#1000;
		data = 8'hee;
		rdreq = 1;
		wrreq = 0;
		#100; rdreq=0;

		#1000;
		data = 8'h34;
		rdreq = 1;
		wrreq = 0;
		#100; rdreq=0;
		#1000;
		data = 8'h23;
		rdreq = 1;
		wrreq = 0;
		#100; rdreq=0;
		#1000;
		data = 8'h12;
		rdreq = 1;
		wrreq = 0;
		#100; rdreq=0;
		#1000;
		data = 8'h78;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'h98;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'h34;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'hff;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'h8e;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'h14;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'h7b;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'h9f;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'h2f;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'h1f;
		rdreq = 0;
		wrreq = 1;
		#100; wrreq=0;
		#1000;
		data = 8'h1a;
		rdreq = 0;
		wrreq = 1;
#100; wrreq=0;	*/
	end

endmodule