`timescale 1ns/100ps

module clk_div_mod (clk,csi_clk,rst);
	input clk,rst;
	output reg csi_clk;
	
	reg [11:0] div_cont;
	
	always @(posedge clk) begin
		if(rst) begin
			csi_clk <= 0;
			div_cont <= 12'h000;
		end else if (div_cont == 12'h200) begin
			csi_clk <= ~csi_clk;
			div_cont <= 12'h000;
		end else begin
			div_cont <= div_cont + 1;
		end
		
		
			
	end	 
	

endmodule
