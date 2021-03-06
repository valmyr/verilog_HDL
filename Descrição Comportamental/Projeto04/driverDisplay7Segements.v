/*
	Driver para display de 7 Segmentos
	Implemente, iltiizando o verilog e a abordagem comportamental um circuito que converta um número 
	BCD de entrada para a representação para display de set segmentos ânodo comum
*/
module driverDisplay7Segements(input [3:0] inDriver, output reg [6:0] outDisp);
	always@(*) begin
		case (inDriver)
			0: outDisp = 7'b1000000;
			1: outDisp = 7'b1111001;
			2: outDisp = 7'b0100100;
			3: outDisp = 7'b0110000;
			4: outDisp = 7'b0011001;
			5: outDisp = 7'b0010010;
			6: outDisp = 7'b0000010;
			7: outDisp = 7'b1111000;
			8: outDisp = 7'b0000000;
			9: outDisp = 7'b0010000;
			default:
				outDisp = 7'b1111111;
		endcase
	end
endmodule

