//a = 2'b0101
module reducao(input [3:0] a, output [3:0] s0,s1,s2,s3,s4,s5,s6);
	assign	s0 = ~a;  	//~  			NOT -> 2'b1010
	assign	s1 = &a;		// & 			AND -> 2'b0
	assign	s2 = ~&a;	// ~& 		NAND-> 2'b1
	assign	s3 = |a;		// | 			OR  -> 2'b1
	assign	s4 = ~|a;	// ~| 		NOR -> 2'b0
	assign	s5 = ^a; 	// ^ 			XOR -> 2'b0 -> quantidade impar de 1s resultado HIGH, caso contrário LOW
	assign	s6 =  ~^a;	//~^ ou ^~ 	XNOR-> 2'b1 -> quantidade par de 1s resultado HIGH, caso contrário LOW;
endmodule
