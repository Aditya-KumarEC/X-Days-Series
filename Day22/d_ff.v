`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module d_ff(
    input D,
    input clk,
    output reg Q,
    output Qn
);

assign Qn = ~Q;

always @(posedge clk)
    Q <= D;

endmodule
