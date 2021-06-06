//Operadores bit-wise a operação e feita bit a bit

module Bit_Wise(input [3:0] a, b, output [3:0] s0,s1,s2,s3,s4);
	assign	s0 = ~a;  	//~  			NOT
	assign	s1 = a & b;	// & 			AND
	assign	s2 = a | b;	// | 			OR
	assign	s3 = a ^ b; // ^ 			XOR
	assign	s4 = a ~^ b;//~^ ou ^~  XNOR
endmodule
