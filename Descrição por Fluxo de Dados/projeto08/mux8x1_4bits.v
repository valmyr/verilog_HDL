module mux8x1_4bits(input[2:0] sel, input [3:0] I0,I1,I2,I3,I4,I5,I6,I7, output [3:0] out);

	mux8x1 mux1(sel,I0[0],I1[0],I2[0],I3[0],I4[0],I5[0],I6[0],I7[0],out[0]);
	mux8x1 mux2(sel,I0[1],I1[1],I2[1],I3[1],I4[1],I5[1],I6[1],I7[1],out[1]);
	mux8x1 mux3(sel,I0[2],I1[2],I2[2],I3[2],I4[2],I5[2],I6[2],I7[2],out[2]);
	mux8x1 mux4(sel,I0[3],I1[3],I2[3],I3[3],I4[3],I5[3],I6[3],I7[3],out[3]);
endmodule
