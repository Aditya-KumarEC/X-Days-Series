`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_comparator_4bit;

    reg [3:0] A, B;
    wire A_gt_B, A_eq_B, A_lt_B;

    comparator_4bit uut (
        .A(A), .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        $display("A     B     | A>B  A==B A<B");
        $display("-----------------------------");

        A = 4'b0000; B = 4'b0000; #10;
        $display("%b  %b |  %b    %b    %b", A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 4'b0010; B = 4'b0001; #10;
        $display("%b  %b |  %b    %b    %b", A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 4'b0110; B = 4'b1110; #10;
        $display("%b  %b |  %b    %b    %b", A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 4'b1010; B = 4'b1010; #10;
        $display("%b  %b |  %b    %b    %b", A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 4'b1111; B = 4'b0001; #10;
        $display("%b  %b |  %b    %b    %b", A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 4'b0000; B = 4'b1000; #10;
        $display("%b  %b |  %b    %b    %b", A, B, A_gt_B, A_eq_B, A_lt_B);

        $stop;
    end

endmodule
