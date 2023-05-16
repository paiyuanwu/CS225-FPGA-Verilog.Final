module test;
	reg [1:0]mode;
	reg [9:0]out;
	reg clk;
	parameter clkper = 20;
	final DUT(
		Mode(mode),
		Out(out),
		Clk(clk)
	);
	initial
	begin
		clk = 1;
	end 
	always
	begin
		# (clkper / 2) clk = ~clk;
	end 
endmodule 