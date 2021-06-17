module fsmMoore(input clock, inp, reset, output outp);
	parameter [3:0] s0 = 4'b0000,
						 s1 = 4'b0001,
						 s2 = 4'b0010,
						 s3 = 4'b0011,
						 s4 = 4'b0100,
						 s5 = 4'b0101,
						 s6 = 4'b0110,
						 s7 = 4'b0111,
						 s8 = 4'b1000;
	reg [3:0] currentState, nextState;
  initial  begin 
	 currentState = s0;
    nextState = s0;
  end
  always@({inp,currentState}) begin
		case(currentState)
			s0: nextState  = inp ?(s5) : (s1);
			s1: nextState  = inp ?(s2) : (s1);
			s2: nextState  = inp ?(s5) : (s3);
			s3: nextState  = inp ?(s4) : (s1);
			s4: nextState  = inp ?(s5) : (s1);
			s5: nextState  = inp ?(s5) : (s6);
			s6: nextState  = inp ?(s7) : (s1);
			s7: nextState  = inp ?(s5) : (s8);
			s8: nextState = inp ?(s7) : (s1);
            default: nextState = s0;
		endcase
	end

	//registrador com FFD
	always@(posedge clock) begin
		currentState <= reset ? s0 : nextState;
	end
	//output logic
	 assign outp = ((currentState == s8) || (currentState == s4)) ? 1 : 0;
	//nextState
endmodule
