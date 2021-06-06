/*
	*projeto02.v
	*Descrição:Somador completo de 4-bits em verilog
*/
module somador4B(input [3:0] a,b, input cin, output [3:0] s, output cout);
	//projeto01(output s, cout, input a, b, cin)
	wire [2:0] x;
	somadorCompleto bit1(.s(s[0]),.cout(x[0]),.a(a[0]),.b(b[0]),.cin(cin));
	somadorCompleto bit2(.s(s[1]),.cout(x[1]),.a(a[1]),.b(b[1]),.cin(x[0]));
	
	somadorCompleto bit3(.s(s[2]),.cout(x[2]),.a(a[2]),.b(b[2]),.cin(x[1]));
	somadorCompleto bit3(.s(s[3]),.cout(cout),.a(a[3]),.b(b[3]),.cin(x[2]));
endmodule
