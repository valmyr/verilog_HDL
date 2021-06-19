module somadorDeUmUnicoBitMaiscodificadorBCD(input a,b,output [7:0] outp);
	wire w0,w1;
	somador1bit(a,b,w1,w0);
	displayOutput(w1,w0,outp);
endmodule
