`timescale 1ns/100ps

module parallel_register (mclk, reset, bus_out, data_in, use_dw, wr);
	input mclk, wr, reset;
	input [3:0] use_dw;
	input [7:0] data_in;
	output reg [119:0] bus_out;
	
	always @(posedge mclk) begin
		if(reset==0) begin
			bus_out <= 119'h00000000;
		end else if(wr) begin
			 case (use_dw)
				0:  bus_out[7:0]     <= data_in[7:0];
				1:  bus_out[15:8]    <= data_in[7:0];
				2:  bus_out[23:16]   <= data_in[7:0];
				3:  bus_out[31:24]   <= data_in[7:0];
				4:  bus_out[39:32]   <= data_in[7:0];
				5:  bus_out[47:40]   <= data_in[7:0];
				6:  bus_out[55:48]   <= data_in[7:0];
				7:  bus_out[63:56]   <= data_in[7:0];
				8:  bus_out[71:64]   <= data_in[7:0];
				9:  bus_out[79:72]   <= data_in[7:0];
				10: bus_out[87:80]   <= data_in[7:0];
				11: bus_out[95:88]   <= data_in[7:0];
				12: bus_out[103:96]  <= data_in[7:0];
				13: bus_out[111:104] <= data_in[7:0];
				14: bus_out[119:112] <= data_in[7:0];
			 endcase
		end
	end
	
endmodule

