/*
	*projeto02.v
	*Descrição:Somador completo de 4-bits em verilog.
*/
module projeto02(input [3:0] aa,bb, input ccin, output [3:0] ss, output ccout);
	//projeto01(output s, cout, input a, b, cin)
	wire [2:0] x;
	somadorCompleto bit1(.s(ss[0]),.cout(x[0]),.a(aa[0]),.b(bb[0]),.cin(ccin));
	somadorCompleto bit2(.s(ss[1]),.cout(x[1]),.a(aa[1]),.b(bb[1]),.cin(x[0]));
	
	somadorCompleto bit3(.s(ss[2]),.cout(x[2]),.a(aa[2]),.b(bb[2]),.cin(x[1]));
	somadorCompleto bit4(.s(ss[3]),.cout(ccout),.a(aa[3]),.b(bb[3]),.cin(x[2]));
endmodule
