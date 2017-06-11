`timescale 1ns/100ps

module proyecto1_parte1 (clk,r,s,q,qb,a,b,control,result,overflow,rst,up_down,enable,conta);

	input clk,r,s,control,rst,up_down,enable;
	input [15:0] a,b;
	
	output q,qb,overflow;
	output [15:0] result;
	output [7:0] conta;
	
	latch_SR R1 (.clk(clk),.r(r),.s(s),.qa(qa),.qb(qb));
	sumador_16bits R2 (.a(a),.b(b),.control(control),.result(result),.overflow(overflow));
	contador_parte1 R3 (.clk(clk),.rst(rst),.up_down(up_down),.enable(enable),.conta(conta));

	
endmodule
