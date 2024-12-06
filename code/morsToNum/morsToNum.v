`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:05 12/06/2024 
// Design Name: 
// Module Name:    morsToNum 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module morsToNum(
    input mors,
    input clk,
    input rst,
    output reg [3:0] num
    );
reg [1:0] counterOne;
reg [3:0] counterZero;
reg zeroFlag;
reg oneFlag;
reg [4:0] morsNum;
always @ (posedge clk)
	if (rst == 1)
		begin
		counterOne <= 0;
		counterZero <= 0;
		zeroFlag <= 0;
		oneFlag <= 0;
		end
	else
		if (mors == 1)
			begin
			counterOne <= counterOne + 1;
			counterZero <= 0;
			zeroFlag <= 0;
			if (counterOne == 1)
				oneFlag <= 1;
			else if (counterOne == 3)
				oneFlag <= 1;
			else 
				oneFlag <= 0;
			end
		else if (mors == 0)
			begin
			counterZero <= counterZero + 1;
			counterOne <= 0;
			oneFlag <= 0;
			if (counterZero == 3)
				zeroFlag <= 1;
//			else if (counterZero == 7)
//				begin
//				zeroFlag <= 1;
//				end
			end
always @(posedge clk)
	if (rst == 1)
		morsNum <= 0;
	else
		if ((oneFlag == 1) && (counterOne == 1))
			morsNum <= {morsNum[3:0], 1'b0};
		else if ((oneFlag == 1) && (counterOne == 3))
			morsNum <= {morsNum[3:0], 1};
always @(posedge clk)
	if (zeroFlag == 1)
		case (morsNum)
			5'b00000: num <= 5;
			5'b10000: num <= 6;
			5'b11000: num <= 7;
			5'b11100: num <= 8;
			5'b11110: num <= 9;
			5'b11111: num <= 0;
			5'b01111: num <= 1;
			5'b00111: num <= 2;
			5'b00011: num <= 3;
			5'b00001: num <= 4;
		endcase
endmodule
