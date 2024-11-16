`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:45:45 11/16/2024
// Design Name:   clock_divider
// Module Name:   C:/Users/ideapad 5 pro/Documents/uni/FPGA/verilog/code/freq_divider/clk_div/clock_divider_tb.v
// Project Name:  clk_div
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_divider_tb;

	// Inputs
	reg clk_100MHz;
	reg rst;

	// Outputs
	wire clk_50MHz;
	wire clk_10MHz;

	// Instantiate the Unit Under Test (UUT)
	clock_divider uut (
		.clk_100MHz(clk_100MHz),
		.rst(rst),
		.clk_50MHz(clk_50MHz), 
		.clk_10MHz(clk_10MHz)
	);

	initial begin
		// Initialize Inputs
		clk_100MHz = 0;
		rst = 1;
		#20;
		rst = 0;

	end
   initial forever #5 clk_100MHz = ~clk_100MHz;   
endmodule

