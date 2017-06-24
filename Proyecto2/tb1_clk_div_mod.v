`timescale 1ns/100ps

module tb1_clk_div_mod ();

reg clk;
reg rst;
wire csi_clk;

clk_div_mod U1 (clk,csi_clk,rst);

initial begin
	rst=1;
	clk=0;
end

always begin
	#10 clk = ~clk;
end

initial begin
	#1000 rst=0;
end


endmodule
