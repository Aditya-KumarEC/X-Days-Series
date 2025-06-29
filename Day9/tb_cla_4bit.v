`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_cla_4bit;

    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    cla_4bit uut (
        .A(A), .B(B), .Cin(Cin),
        .Sum(Sum), .Cout(Cout)
    );

    initial begin
        $display(" A    B   Cin | Sum  Cout ");
        $display("---------------------------");

        A = 4'b0001; B = 4'b0011; Cin = 0; #10;
        $display("%b  %b   %b   | %b    %b", A, B, Cin, Sum, Cout);

        A = 4'b0101; B = 4'b0110; Cin = 0; #10;
        A = 4'b1111; B = 4'b1111; Cin = 0; #10;
        A = 4'b1010; B = 4'b1001; Cin = 1; #10;
        A = 4'b0000; B = 4'b0000; Cin = 1; #10;

        $stop;
    end

endmodule
