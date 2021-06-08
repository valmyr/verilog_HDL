/*
	Registrador de deslocamento 
	Descreva um registrador de 4-bits de deslocamento em Verilog com a seguinte tabebela de operação:
	clear| load| left| right| output 
		1		x		x 		x		clear
		0		1		x		x		Carga
		0		0		1		x		Deslocamento à esquerda
		0		0		0		1     Desloacmento à direita
*/
module registradorDeDeslocamento4bitsDescricaoComportamental(input clear, loade, shiftLeft, shiftRight,clock, input [3:0] D, output reg [3:0] Q);
	initial begin
		Q = 4'b0000;
	end
	always@(posedge clock) begin 
		casex ({clear,loade,shiftLeft,shiftRight})
			4'b1xxx: Q = 4'b0000;
			4'b01xx: Q = D;
			4'b001x: Q = Q << 1;
			4'b0001: Q = Q >> 1;
		endcase
	end
endmodule
