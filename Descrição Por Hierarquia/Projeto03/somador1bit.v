module somador1bit(input a,b, output s1,s0);
	assign {s1,s0} = a + b;
endmodule
