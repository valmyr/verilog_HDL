module geradorDeParidadePar(input [3:0] inp, output s);
	//assign s = inp[0] ^ inp [1] ^ inp[2] ^ inp[3];
	assign s = ^inp;//com o operador de redução
endmodule
