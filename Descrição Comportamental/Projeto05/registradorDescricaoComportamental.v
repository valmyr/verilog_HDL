/*
	Registrador de carga paralela
	Descreva um registrador de carga paralela de 4 bits em Verilog utilzando
	a abordagem comportamental. O registrador possui uma entrada ld, que quando
	ld = 1, deve-se efetuar a carga no registrador. Caso contrário(ld = 0), 
	o último valor é mantido. O registrador é sensível à borda de descida do relógio.
	
*/
module registradorDescricaoComportamental(input [3:0] d, input clock, ld, output reg [3:0] Q);
	initial begin 
		Q = 4'b0000;
	end
	always@(negedge clock) begin
		if(ld == 1) begin
			Q = d;
		end
	end
endmodule
