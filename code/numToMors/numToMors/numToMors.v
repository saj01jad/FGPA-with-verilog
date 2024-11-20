`timescale 1ns / 1ps

module numToMors(
    input [4:0] inputNum,
	 input clk,
	 input rst,
    output reg mors
    );
reg [20:0] lt [0:9];
reg [20:0] numTemp;
reg [1:0] index;
always @ (posedge clk)
	if (rst == 1) begin
		lt[1] <= 21'b101110111011101110000;
		lt[2] <= 21'b101011101110111000000;
		lt[3] <= 21'b101010111011100000000;
		lt[4] <= 21'b101010101110000000000;
		lt[5] <= 21'b101010101000000000000;
		lt[6] <= 21'b111010101010000000000;
		lt[7] <= 21'b111011101010100000000;
		lt[8] <= 21'b111011101110101000000;
		lt[9] <= 21'b111011101110111010000;
		lt[0] <= 21'b111011101110111011100;
		index <= 2'b10;
		numTemp <= 21'b000000000000000;
	end
	else begin
		if (index == 2) begin
			index <= 2'b00;
			numTemp <= lt[inputNum];
		end
		else begin
			if (numTemp[20] == 0) begin
				mors <= numTemp[20];
				index <= index + 1;
			end
			else begin
				mors <= numTemp[20];
				index <= 0;
			end
			numTemp <= {numTemp[19:0],1'b0};
		end
	end

endmodule
