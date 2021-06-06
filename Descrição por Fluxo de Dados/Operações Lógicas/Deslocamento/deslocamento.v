/*
	Projeto 08 Deslocadores barrel em Verilog
	Projete um deslocador barrel â esquerda em Verilog.O deslocador em questão possui uma entrada A, de *bits, que indica o dado a ser deslocado e uma entrada sh, de 3bits que indica quantos deslocamentos devem ser dadis ao número A. A saída é apresentada em B, Também de 8its
*/
module deslocamento(input[2:0] sh, input [7:0] A, output [7:0] B);
	assign B = A << sh;
endmodule
