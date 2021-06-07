module contadorDe4bits(input clock, output reg [3:0] out );

	initial begin
		out = 4'b0000;
	end
	always@(posedge clock) begin
		out = out + 4'b0001;
	end

endmodule
