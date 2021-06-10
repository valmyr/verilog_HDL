module MaquinaDeEstadosDescricaoComportamental(input clock, reset, in, output y);
	reg [1:0] nextState, currentState;
	//output ok
	assign y = (~currentState[0])&(~currentState[1]) | (currentState[0])&(currentState[1]);
	//Registrador ok
	always@(posedge clock || reset) begin
		if(reset) begin
			currentState = 0;
		end
		else begin
			currentState = nextState;
		end
	end
	//Next State
	always@({currentState,in}) begin
		casex ({currentState,in})
			3'b000: nextState <= 2'b01;
			3'b001: nextState <= 2'b00;
			3'b010: nextState <= 2'b01;
			3'b011: nextState <= 2'b10;
			3'b10x: nextState <= 2'b11;
			3'b11x: nextState <= 2'b00;
		endcase
	end
endmodule
	
		