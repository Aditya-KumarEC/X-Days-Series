`timescale 1ns / 1ps


module comparator_4bit (
    input  [3:0] A,
    input  [3:0] B,
    output  A_gt_B,
    output  A_eq_B,
    output  A_lt_B
);

    assign A_gt_B = (A > B) ? 1 : 0;
    assign A_eq_B = (A == B) ? 1 : 0;
    assign A_lt_B = (A < B) ? 1 : 0;

endmodule
