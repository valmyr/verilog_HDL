/*
	Multiplexador 2x1 de 4-Bits
	Descreva o circuito correspondente a um multiplexador 2x1 em Verilog utilizando
	a abordagem por fluxo de dados e utilizando atribuição condicional
*/
module mux2x1De4Bits(input seletor, input [3:0] I0,I1, output [3:0] s);
		assign s = seletor ? I1 : I0;
endmodule
