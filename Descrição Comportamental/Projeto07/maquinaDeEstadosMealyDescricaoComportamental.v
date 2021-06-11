module maquinaDeEstadosMealyDescricaoComportamental(input in,clock,reset, output reg out);
	reg [1:0] nextState, currentState; 
  	initial begin 
  		nextState = 0;
        currentState = 0;
 	end
	always@({currentState,in}) begin 
		///next state
		case ({currentState,in})
			3'b000: nextState <= 2'b00;
			3'b001: nextState <= 2'b01;
			3'b010: nextState <= 2'b10;
			3'b011: nextState <= 2'b01;
			3'b100: nextState <= 2'b00;
			3'b101: nextState <= 2'b11;
			3'b110: nextState <= 2'b10;
			3'b111: nextState <= 2'b01;
		endcase	
		//output Logic
		case ({currentState,in}) 
			3'b110 :out <= 1;
			default: out <= 0;
		endcase
	end
	//Reg
	always@(posedge clock) begin
		 currentState <= nextState;
	end
endmodule
