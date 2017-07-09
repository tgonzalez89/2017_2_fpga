`timescale 1ns / 100ps

module tb_maquina_estados;

reg clk, rst, s1, s2;
wire enter,exit;
wire [31:0] cnt;


parte2_maquina_estados U0(
    .clock(clk),.reset(rst),.sensor1(s1),.sensor2(s2),
    .enters(enter),.exits(exit),.count(cnt));

initial begin
clk = 0;
rst = 0;
s1 = 0;
s2 = 0;
end

always begin
	#100 clk = ~clk;
end

initial begin
	#10000 rst = 1;
	#1000 rst = 0;
	
	//Carro entra
	//Carros en el parqueo = 1
	#10000 s1 = 1;
	
	#50000 s2 = 1;
	
	#50000 s1 = 0;
	
	#50000 s2 = 0;
	
	
	//Carro entra
	//Carros en el parqueo = 2
	#60000 s1 = 1;
	
	#30000 s2 = 1;
	
	#30000 s1 = 0;
	
	#30000 s2 = 0;
	
	
	//Carro entra
	//Carros en el parqueo = 3
	#20000 s1 = 1;
	
	#50000 s2 = 1;
	
	#50000 s1 = 0;
	
	#50000 s2 = 0;


	//Carro sale
	//Carros en el parqueo = 2
	#100000 s2 = 1;
	
	#50000 s1 = 1;
	
	#50000 s2 = 0;
	
	#50000 s1 = 0;
	

	//Carro sale
	//Carros en el parqueo = 1
	#40000 s2 = 1;
	
	#50000 s1 = 1;
	
	#50000 s2 = 0;
	
	#50000 s1 = 0;

	//Persona camina por los sensores
	//Carros en el parqueo = 1
	#20000 s1 = 1;
	
	#10000 s1 = 0;
	
	#20000 s2 = 1;
	
	#10000 s2 = 0;	
	
	#10000 $finish;

end


endmodule
