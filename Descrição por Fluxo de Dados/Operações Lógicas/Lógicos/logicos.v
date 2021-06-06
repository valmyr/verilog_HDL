module logicos(input [3:0]  a, b, output [3:0] s);
	assign s[0] = a || b; 	// OR
	assign s[1] = a && b; 	// AND
	assign s[2] = !a; 		// NOT
	assign s[3] = !b;			// NOT
endmodule
