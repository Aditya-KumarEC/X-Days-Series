`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module binary_to_excess3 (
    input  [3:0] bin,
    output [3:0] ex3
);

    assign ex3 = bin + 4'b0011;

endmodule
