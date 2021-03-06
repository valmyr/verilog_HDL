module unidadeLogicaAritmeticaDescricaoComportamental(input [2:0] seletor,input [3:0] a,b,output reg [3:0] s);
	always@(*) begin
		case (seletor)
			0: begin 
					s = a + b;
				end
			1:begin
					s = a - b;
				end
			2:begin
					s = a << b;
				end
			3:begin
					s = a >> b;
				end
			4: begin
					s = a & b;
				end
			5: begin 
					s = a | b;
				end
			6:begin 
					s = a ^ b;
				end
			7:begin 
					s = ~a;
				end	
			default: begin 
					s = 0;
				end
		endcase
	end
	
endmodule
	