module aritmetico(input [3:0] a, b, output [3:0] s0,s1,s2,s3,s4,s5);

	assign s0 = a + b;
	assign s1 = a - b; 
	assign s2 = a * b;
	assign s3 = a / b;
	assign s4 = a % 2;
	assign s5 = a ** 2;
endmodule 
