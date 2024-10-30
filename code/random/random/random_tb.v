`timescale 1ns / 1ps



module random_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [15:0] q;

	// Instantiate the Unit Under Test (UUT)
	random uut (
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;
		#40;
		reset = 0;
	end
	
   initial forever #20 clk = ~clk;   
	
endmodule

