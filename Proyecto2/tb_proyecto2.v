`timescale 1ns/100ps

module tb_proyecto2 ();

	reg Mclk;
	reg nReset;
	reg Data_Available;
	reg [7:0] BUS_IN;
	reg Read_RQ;
	reg SPI_MISO;
	reg [6:0] Address;
	reg rst_clk;
	
	wire [119:0] BUS_OUT;
	wire SPI_clk;
	wire SPI_CS;
	wire SPI_MOSI;
	
	proyecto2 U0 (.Mclk(Mclk),.nReset(nReset),.Data_Available(Data_Available),.BUS_IN(BUS_IN),.Read_RQ(Read_RQ),.BUS_OUT(BUS_OUT),.SPI_clk(SPI_clk),.SPI_CS(SPI_CS),.SPI_MOSI(SPI_MOSI),.SPI_MISO(SPI_MISO),.Address(Address),.rst_clk(rst_clk));
	
	initial begin
		Mclk=0;
		nReset = 0;
		Data_Available = 1;
		BUS_IN = 8'h00;
		Read_RQ = 0;
		SPI_MISO = 0;
		Address = 7'h5A;	
		rst_clk=0;
	end
	
	always begin
		#10 Mclk = ~Mclk;
	end
	
	initial begin		
	
	//RX
	#100 rst_clk=1;
	#10000 nReset = 1; 
	#1000;
	#20 Read_RQ = 1;
	#1300; SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
    Read_RQ = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;	
	
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;	

	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;	

	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;	

	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;	

	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;	

	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;	

	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;	

	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;	

	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;	

	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;	

	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;	

	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;	

	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;
	#160;  SPI_MISO = 1;
	#160;  SPI_MISO = 0;		
	#1000000;
	
	//TX
		#100 rst_clk=1;
		#10000 nReset = 1; Data_Available = 1; BUS_IN = 8'h3f;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;

		#100 Data_Available = 1; BUS_IN = 8'ha0;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;

		#100 Data_Available = 1; BUS_IN = 8'hbc;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;

		#100 Data_Available = 1; BUS_IN = 8'hfa;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	
		
		
		#100 Data_Available = 1; BUS_IN = 8'hdf;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'he3;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'h41;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'h00;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'h21;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'hbb;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'hc9;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'hfa;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'he2;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'h5a;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'h1f;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	
		
		
		#100 rst_clk=1;
		#10000 nReset = 1; Data_Available = 1; BUS_IN = 8'h2f;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;

		#100 Data_Available = 1; BUS_IN = 8'h90;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;

		#100 Data_Available = 1; BUS_IN = 8'h09;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;

		#100 Data_Available = 1; BUS_IN = 8'h21;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	
		
		
		#100 Data_Available = 1; BUS_IN = 8'hf4;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'ha2;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'h54;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'he4;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'hff;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'h00;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'h12;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'hdc;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'hbb;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'haa;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	

		#100 Data_Available = 1; BUS_IN = 8'h45;
		#5120 Data_Available = 0;
		#5120 Data_Available = 1;	
		
		#100000;
		
		$finish;
	end
	
endmodule
