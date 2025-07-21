`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_alu_4bit;

    reg  [3:0] A, B;
    reg  [2:0] sel;
    wire [3:0] result;
    wire       zero;

    alu_4bit uut (
        .A(A),
        .B(B),
        .sel(sel),
        .result(result),
        .zero(zero)
    );

    initial begin
        $display("SEL | A | B | Result | Zero");
        $display("----------------------------");

        A = 4'd5; B = 4'd3;
        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        $stop;
    end

endmodule
