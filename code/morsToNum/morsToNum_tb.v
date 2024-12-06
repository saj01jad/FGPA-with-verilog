`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:26:03 12/06/2024
// Design Name:   morsToNum
// Module Name:   C:/Users/ideapad 5 pro/Documents/uni/FPGA/verilog/code/morsToNum/morsToNum_tb.v
// Project Name:  morsToNum
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: morsToNum
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module morsToNum_tb;

	// Inputs
	reg mors;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] num;

	// Instantiate the Unit Under Test (UUT)
	morsToNum uut (
		.mors(mors), 
		.clk(clk), 
		.rst(rst), 
		.num(num)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#40;
      rst = 0;  
		// Add stimulus here

	end
   initial forever #20 clk = ~clk;
	
	initial begin
		#40;
		mors = 0;
		#40;
		mors = 1;
		#160;
		mors = 0;
		#120;
//		mors = 1;
//		#600;
//		mors = 0;
//		#120;
	end
endmodule

