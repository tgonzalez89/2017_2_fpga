module latch_SR (clk,r,s,qa,qb);
	input clk,r,s;
	output qa,qb;
	reg Rg,Sg;
	
	always @(clk or r or s) begin
		Rg = (r & clk);
		Sg = (s & clk); 		
	end
	
	assign qa  = ~(Rg | qb);
	assign qb = ~(Sg | qa);
	
endmodule
