module displayOutput(input s1,s0,output [6:0] outDisp);
	assign outDisp = ({s1,s0} == 0) ? 7'b0111111:
						  ({s1,s0} == 1) ? 7'b0000110:
						  ({s1,s0} == 2) ? 7'b1011011: 7'b1000000;

endmodule
