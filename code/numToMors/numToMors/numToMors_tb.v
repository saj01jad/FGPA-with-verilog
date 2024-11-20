`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:55:35 11/20/2024
// Design Name:   numToMors
// Module Name:   C:/Users/ideapad 5 pro/Documents/uni/FPGA/verilog/code/numToMors/numToMors/numToMors_tb.v
// Project Name:  numToMors
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: numToMors
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module numToMors_tb;

	// Inputs
	reg [4:0] inputNum;
	reg clk;
	reg rst;

	// Outputs
	wire mors;

	// Instantiate the Unit Under Test (UUT)
	numToMors uut (
		.inputNum(inputNum), 
		.clk(clk), 
		.rst(rst), 
		.mors(mors)
	);

	initial begin
		// Initialize Inputs
		inputNum = 1;
		clk = 0;
		rst = 1;
		#40;
		rst = 0;
		#600;
		inputNum = 2;
		#600;
		inputNum = 3;
	end
   initial forever #20 clk=~clk;   
endmodule

