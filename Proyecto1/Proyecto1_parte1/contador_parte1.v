`timescale 1ns/100ps

module contador_parte1 (clk,rst,up_down,enable,conta);
	input clk, rst, up_down, enable;
	output reg [7:0] conta;
	
	always @(posedge clk) begin
		if(rst) begin
			conta <= 0;
		end else begin
			if(up_down && enable) begin
				conta <= conta + 1;
			end else if(~up_down && enable) begin
				conta <= conta - 1;
			end else begin
				conta <= conta;
			end
		end
	end
endmodule
