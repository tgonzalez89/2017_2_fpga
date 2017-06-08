module tb_latch_SR ();
	reg clk,r,s;
	wire q,qb;

	latch_SR U4 (.clk(clk),.r(r),.s(s),.q(q),.qb(qb));
	
	initial begin
		clk = 0;
		r = 0;
		s = 0;
	end
	
	always begin
		#1000 clk = ~clk;
	end
	
	initial begin
		#10000 r=0; s=0;
		#10000 r=0; s=1;
		#10000 r=1; s=0;
		#10000 r=1; s=1;
		$finish;
		
	end
	
endmodule