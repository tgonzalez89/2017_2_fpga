module pre_tx_module (Mclk,Data_Available, fifo_wrreq,nReset);
	input Mclk, Data_Available,nReset;
	output reg fifo_wrreq; 
	reg old_data;
	reg dat_pos;
	
	
	always @(negedge Mclk) begin		
	
		if(nReset==0) begin
			fifo_wrreq <= 0;			
		end
		
	
		if(Data_Available && ~old_data) begin
			fifo_wrreq <= 1;
		end else begin
			fifo_wrreq <= 0;
		end
		
		old_data <= Data_Available;
	end

endmodule
 