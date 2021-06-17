module testBench();
  logic clock,inp,reset,outp;
  fsmMoore detectorDeSequencia0101_1010(clock,inp,reset,outp);
  initial begin
    $display("Iníco da simulação");
    $monitor("time = %g, clock = %b, inp = %b, rest = %b, output = %b",$time,clock,inp,reset,outp);
    $dumpfile("graphic.vcd");
    $dumpvars(0,detectorDeSequencia0101_1010);
  end
  initial begin
  	clock = 0;
    inp = 0;
    clock = 1;
    reset = 1;
    clock = 0;
    clock = 1;
    reset = 0;
    clock = 0;

  end
  always #1 clock = ~clock;
  initial begin
    #2 inp = 0;
    #2 inp = 0;
    #2 inp = 1;    	
	#2 inp = 0;
    #2 inp = 1;
    #2 inp = 0;
    #2 inp = 0;
    #2 inp = 1;
    #2 inp = 0;
    #2 inp = 1;
    #2 inp = 1;
    #2 inp = 0;
    #2 inp = 1;
    #2 inp = 0;
    #2 inp = 1;
    #20 $finish;
  end
endmodule
