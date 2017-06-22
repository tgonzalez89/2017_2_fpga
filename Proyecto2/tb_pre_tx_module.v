`timescale 1us/100ns

module tb_pre_tx_module ();


reg Mclk, Data_Available;
wire fifo_wreq;

pre_tx_module U0 (.Mclk(Mclk),.Data_Available(Data_Available), .fifo_wrreq(fifo_wrreq));	
	

	initial begin 
		Mclk = 0;
		Data_Available = 1;
	end

	always  begin
		#100 Mclk = ~Mclk;
	end


	initial begin
		#51200 Data_Available = 0;
		#10000; Data_Available = 1;
		#51200 Data_Available = 0;
		#10000; Data_Available = 1;
		#51200 Data_Available = 0;
		#10000; Data_Available = 1;
		#51200 Data_Available = 0;
		#10000; Data_Available = 1;
			
		$finish; 
 

	end

endmodule
