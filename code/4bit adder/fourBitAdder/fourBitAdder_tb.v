`timescale 1ns / 1ps

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

