`timescale 1ns / 1ps

module binary_multiplier_4x4(
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] product
);

    assign product = a * b;

endmodule
