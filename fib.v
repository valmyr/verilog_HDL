// Code your design here
module somador(input cin,input [10:0] A,B,output[10:0] s, output cout);
  assign {cout,s} = A+B+cin;
endmodule

module regis(input clk,reset, input  [10:0]d, output reg [10:0] q);
  always@(posedge clk || reset) begin
   	q <= reset ? 0:d;
  end 
endmodule

module fib(input clk,reset, output reg [6:0] outp1,outp2,outp3,outp4);
  reg [10:0] d1 = 1, d2 =1;
  reg [10:0] q1, q2;
  wire cout;
  wire [10:0] A;
  reg [10:0] dig1,dig2,dig3,dig4;
  
  somador s(0,d1,d2,A,cout);
  disp dis1(dig1,outp1);
  disp dis2(dig2,outp2);
  disp dis3(dig3,outp3);
  disp dis4(dig4,outp4);
  always @(posedge clk) begin
    d2 = d1;
    d1 = A;
    dig4 =  (d2%10);
    dig3 = (d2/10)%10;
    dig2 = (d2/100)%10;
    dig1 = (d2/1000)%10;    
    if(d2 > 9999) begin
      d1 = 1;
      d2 = 1;
    end
  end
endmodule
module disp(input [10:0] inp, output [6:0] outp);
  assign outp =	(inp == 0)? 8'b0000001:
    		   	(inp == 1)? 8'b0011111:
    			(inp == 2)? 8'b0010010:
    			(inp == 3)? 8'b0000110:
    			(inp == 4)? 8'b1001100:
    			(inp == 5)? 8'b0100100:
    			(inp == 6)? 8'b0100000:
    			(inp == 7)? 8'b0001111:
    			(inp == 8)? 8'b0000000:8'b0000100;
endmodule
  
