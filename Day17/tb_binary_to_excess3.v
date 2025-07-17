`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_binary_to_excess3;

    reg  [3:0] bin;
    wire [3:0] ex3;

    binary_to_excess3 uut (
        .bin(bin),
        .ex3(ex3)
    );

    initial begin
        $display("Binary | Excess-3");
        $display("-----------------");

        bin = 4'd0; #10; $display("%b    |   %b", bin, ex3);
        bin = 4'd1; #10;
        bin = 4'd2; #10;
        bin = 4'd3; #10;
        bin = 4'd4; #10;
        bin = 4'd5; #10;
        bin = 4'd6; #10;
        bin = 4'd7; #10;
        bin = 4'd8; #10;
        bin = 4'd9; #10;

        $finish;
    end

endmodule
