module shift_register (rst,clk,data_in,load,data_out);

	input rst, clk,load;
	input [7:0] data_in;
	output reg data_out;
	
	
	reg [7:0] current_data;
	
	
	always @(posedge clk) begin
		if(rst) begin
			current_data <= 8'h0;
			data_out <= 1'h0;
		end
		
		if(load) begin
			current_data <= data_in;			
			data_out <= 1'hz;
		end

		if(~load) begin						
				data_out <= current_data[0];
				current_data <= current_data >> 1;
		end
	end

endmodule
