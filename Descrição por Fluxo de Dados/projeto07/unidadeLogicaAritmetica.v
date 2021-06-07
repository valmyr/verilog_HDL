/*	Unidade Lógica-Aritmética em Verilog
	Implemente, em FPGA e utilize o verilog, uma unidade lógica-aritmética de 4-bits que possua a tabela de operação apresentada ao lado
	
*/
module unidadeLogicaAritmetica(input [2:0] seletor, input [3:0] A, B, output [3:0] S);
 assign S =  (seletor == 0) ? (A + B)  :
				 (seletor == 1) ? (A - B)  : 
				 (seletor == 2) ? (A << B) :
				 (seletor == 3) ? (A >> B) :
				 (seletor == 4) ? (A & B)  :
				 (seletor == 5) ? (A | B)  :
				 (seletor == 6) ? (A ^ B)  : (~A);
endmodule
