/*
	Comparadores de magnitude(revisitado)
	Projete, utilizando o Verilog, um circuito que se comporte como um comparador
	de magnitude de 4bits. O circuito possui duas entradas, denominadas "a" e "b",
	ambas de 4 bits. O circuito possui três saídas, denominadas de "AeqB", "AgtB" 
	e "AltB", que indicam quando, respectivamente, A = B, A > B e A < B. No seu projeto, 
	utilize os operadors relacionais
*/
module comparadorDeMag(input [3:0] a,b, output AeqB,AgtB,AltB);
	assign AeqB = (a == b);
	assign AgtB = (a > b);
	assign AltB = (a < b);
endmodule
