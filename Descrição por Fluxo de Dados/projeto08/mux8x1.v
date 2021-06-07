module mux8x1(input[2:0] sel, input  I0,I1,I2,I3,I4,I5,I6,I7, output out);

	assign out = ((~sel[2])&(~sel[1])&(~sel[0])&I0)|((~sel[2])&(~sel[1])&(sel[0]&I1))|
					 ((~sel[2])&(sel[1])&(~sel[0])&I2) |((~sel[2])&(sel[1])&(sel[0]&I3))|	 
					 ((sel[2])&(~sel[1])&(~sel[0])&I4) |((sel[2])&(~sel[1])&(sel[0]&I5))|
					 ((sel[2])&(sel[1])&(~sel[0])&I6)  |((sel[2])&(sel[1])&(sel[0]&I7));
endmodule
