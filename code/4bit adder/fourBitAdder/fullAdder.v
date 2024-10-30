`timescale 1ns / 1ps

module fullAdder(
    input a,
    input b,
    input cin,
	 output sum,
    output cout
    );
	
	// add a and b and cin and put result in s and carry bit in cout.
	//assign {cout, sum} = a + b + cin;
	
	// Sum using XOR gates 
	assign sum = a ^ b ^ cin; 
	// Carry out using XOR gates 
	assign cout = (a & b) | (a & cin) | (b & cin);

endmodule
