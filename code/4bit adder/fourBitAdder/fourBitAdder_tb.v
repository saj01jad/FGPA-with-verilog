`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:21:19 10/30/2024
// Design Name:   fourBitAdder
// Module Name:   C:/Users/ideapad 5 pro/Documents/uni/FPGA/verilog/code/4bit adder/fourBitAdder/fourBitAdder_tb.v
// Project Name:  fourBitAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourBitAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fourBitAdder_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fourBitAdder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		a = 0;
		forever #30 a = $random();
	end
	
	initial begin 
		b = 0;
		forever #30 b = $random();
	end
	
	initial begin 
		cin = 0;
		//forever #30 cin = ~cin;
	end
      
endmodule

