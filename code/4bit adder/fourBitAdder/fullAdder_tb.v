`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:28:17 10/30/2024
// Design Name:   fullAdder
// Module Name:   C:/Users/ideapad 5 pro/Documents/uni/FPGA/verilog/code/4bit adder/fourBitAdder/fullAdder_tb.v
// Project Name:  fourBitAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fullAdder_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire cout;
	wire sum;

	// Instantiate the Unit Under Test (UUT)
	fullAdder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout), 
		.sum(sum)
	);

	initial begin
		a = 0;
		forever #30 a = ~a;
	end
	
	initial begin 
		b = 1;
		forever #30 b = ~b;
	end
	
	initial begin 
		cin = 0;
		forever #30 cin = ~cin;
	end
	
endmodule

