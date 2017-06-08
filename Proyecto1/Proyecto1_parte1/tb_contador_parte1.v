`timescale 1ns/100ps

module tb_contador_parte1 ();
	reg clk,rst,up_down,enable;
	wire [7:0] conta;
	
	contador_parte1 U0 (.clk(clk),.rst(rst),.up_down(up_down),.enable(enable),.conta(conta));
	
	initial begin
		clk=0;
		rst=1;
		up_down=0;
		enable=0;
	end
	
	always begin
		#1000 clk = ~clk;
	end
	
	initial begin
		#10000 rst=0;
		#10000 enable = 1;
		#200000 up_down = 1;
		#200000;
		$finish;
	end
	

	
endmodule
