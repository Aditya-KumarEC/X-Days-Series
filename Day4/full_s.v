`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// full_subtractor.v
module full_s (
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
);

    wire d1, b1, b2;

    // First half subtractor
    half_subtractor HS1 (
        .A(A),
        .B(B),
        .Diff(d1),
        .Borrow(b1)
    );

    // Second half subtractor
    half_subtractor HS2 (
        .A(d1),
        .B(Bin),
        .Diff(Diff),
        .Borrow(b2)
    );

    // Final borrow output
    assign Bout = b1 | b2;

endmodule

