`timescale 1ns / 1ps

module numToMors(
    input [4:0] inputNum,
	 input clk,
	 input rst,
    output reg mors
    );
reg [14:0] lt [9:0];
reg [14:0] numTemp;
reg [4:0] index;
always @ (posedge clk)
	if (rst == 1) begin
		lt[1] = 15'b011111111111100;
		lt[2] = 15'b001111111110000;
		lt[3] = 15'b000111111000000;
		lt[4] = 15'b000011100000000;
		lt[5] = 15'b000000000000000;
		lt[6] = 15'b111000000000000;
		lt[7] = 15'b111111000000000;
		lt[8] = 15'b111111111000000;
		lt[9] = 15'b111111111111000;
		lt[0] = 15'b111111111111111;
		index = 5'b11111;
		numTemp = 15'b000000000000000;
	end
	else begin
		if (index == 5'b11111) begin
			index = 5'b00000;
			numTemp = lt[inputNum];
		end
		else begin
			index = index + 1;
			mors = numTemp[14];
			numTemp = {numTemp[13:0],0};
		end
	end

endmodule
