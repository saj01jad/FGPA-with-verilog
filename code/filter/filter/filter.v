`timescale 1ns / 1ps
module filter (
    input clk,
    input reset,
    input [15:0] Xn,   // X[n]
    output reg [15:0] Yn  // Y[n]
);

    reg [15:0] Xn_1;  // X[n-1]
    reg [15:0] Yn_1;  // Y[n-1]

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Xn_1 = 0;
            Yn_1 = 0;
            Yn = 0;
        end 
		  else begin 
            Yn = Xn + Xn_1 + Yn_1;
            Xn_1 = Xn;
            Yn_1 = Yn;
        end
    end
endmodule
