/*
	Descreve o circuito correspondente ao multiplexador 4x1 em verilog utilizando a abordagem por fluxo de dados.
	
*/
module mux_4para1(input a,b,input [3:0] in,output s);
	assign s = (~a)&(~b)&in[0] | (~a)&(b)&in[1] | a&(~b)&in[2] | a&b&in[3];
endmodule
