module mux_sel (addr,data,data_out,sel);
	input [7:0] addr;
	input [7:0] data;
	output [7:0] data_out;
	input sel;
	reg [7:0] tmp_data;
	
	always @(addr, data, sel) begin
		if(sel) begin
			tmp_data = data;
		end else begin
			tmp_data = addr;
		end
	end
	
			
	assign data_out = tmp_data;

endmodule
