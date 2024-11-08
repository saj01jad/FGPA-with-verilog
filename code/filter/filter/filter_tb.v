`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:51:16 11/08/2024
// Design Name:   filter
// Module Name:   C:/Users/ideapad 5 pro/Documents/uni/FPGA/verilog/code/filter/filter/filter_tb.v
// Project Name:  filter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: filter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module filter_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [15:0] Xn;

	// Outputs
	wire [15:0] Yn;

	// Instantiate the Unit Under Test (UUT)
	filter uut (
		.clk(clk), 
		.reset(reset), 
		.Xn(Xn), 
		.Yn(Yn)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1; #10; reset = 0;
		
		Xn = 0;
	end
   initial forever #5 clk=~clk;
	initial begin
		Xn = 16'd1; #10;
		Xn = 16'd2; #10;
		Xn = 16'd3; #10;
		Xn = 16'd4; #10;
		Xn = 16'd5; #10;
	end
endmodule

