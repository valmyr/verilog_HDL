module concatenacao(input [3: 0] a, input [2:0] b, output [5:0] s);
	assign s = {a,b};
endmodule
