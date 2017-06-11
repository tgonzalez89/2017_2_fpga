`timescale 1ns/100ps

module sumador_16bits (a,b,control,result,overflow);
	input [15:0] a;
	input [15:0] b;
	input control; //0 -> Resta  1 -> Suma
	output [15:0] result;
	output overflow;
	reg [15:0] tmp_result;
	reg tmp_ovf;
	
	always @(control or a or b) begin
		if(control==1) begin
			{tmp_ovf,tmp_result} = a + b;
		end else begin
			{tmp_ovf,tmp_result} = a - b;
		end		
	end
	
	assign result = tmp_result;
	assign overflow = tmp_ovf;
endmodule
