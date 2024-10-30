`timescale 1ns / 1ps

module fourBitAdder (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);
	//wire for connect output carry to input carry
    wire [3:0] carry;
	
	//make instance of fullAdder to sum bit with each other
    fullAdder fa0 (a[0], b[0], cin,   sum[0], carry[0]);
    fullAdder fa1 (a[1], b[1], carry[0], sum[1], carry[1]);
    fullAdder fa2 (a[2], b[2], carry[1], sum[2], carry[2]);
    fullAdder fa3 (a[3], b[3], carry[2], sum[3], carry[3]);

	//assgine out carry to cout
    assign cout = carry[3];
endmodule

