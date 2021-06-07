module multiplexador4bitsComportamentalComCase(input [2:0] seletor,input [3:0] I0,I1,I2,I3,I4,I5,I6,I7, output reg [3:0] outMux);
	always@(*) begin
		case(seletor)
			0:begin
				outMux = I0;
				end
			1:begin
				outMux = I1;
				end
			2:begin
				outMux = I2;
				end
			3: begin 
				outMux = I3;
				end
			4: begin
				outMux = I4;
				end
			5: begin
				outMux = I5;
				end
			6:begin
				outMux = I6;
				end
			7: begin 
				outMux = I7;
				end
			default : begin
				outMux = 0;
				end
		endcase
	end
endmodule 
