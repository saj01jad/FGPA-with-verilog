`timescale 1ns / 1ps
module random (
    input clk,
    input reset,
    output reg [15:0] q
);
    wire feedback = q[15] ^ q[13] ^ q[12] ^ q[10]; // Tap positions

    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 16'b1110110110010110; // Non-zero initial value
        else
            q <= {q[14:0], feedback};
    end
endmodule

