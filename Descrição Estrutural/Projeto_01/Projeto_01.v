/*
	*Projeto01.v
	*Descrição:SOmador completo em verilog.
*/
module Projeto_01(input a, b, cin, output s, cout);
	wire [2:0] x;
	
   xor U1(x[0],a,b);
   xor U2(cout,cin,x[0]);
	and U3(x[1],cin,x[0]);
	and U4(x[2],a,b);
	or  U5(s,x[1],x[2]);
endmodule
