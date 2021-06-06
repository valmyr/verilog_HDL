/*
	*somadorCompleto.v
	*Descrição:Somador completo em verilog
*/
module somadorCompleto(output s, cout, input a, b, cin);
	wire [2:0] x;
	
	xor U1(s,a,b,cin);
	and U2(x[0],a,b);
	and U3(x[1],a,cin);
	and U4(x[2],b,cin);
	or U5(cout,x[0],x[1],x[2]);
endmodule 