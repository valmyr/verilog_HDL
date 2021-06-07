/*	Unidade Lógica-Aritmética em Verilog
	Implemente, em FPGA e utilize o verilog, uma unidade lógica-aritmética de 4-bits que possua a tabela de operação apresentada ao lado
	
*/
module unidadeLogicaAritmetica_Hierarquia_Mux8x1(input[2:0] sel,input[3:0] A,B, output [3:0] out);
	mux8x1_4bits multiplexador8x1_4Bits(sel,A + B,A - B,A << B,A >> B,A & B, A | B,A ^ B, ~A,out);
endmodule
