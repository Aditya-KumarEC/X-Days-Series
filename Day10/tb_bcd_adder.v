`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_bcd_adder;

    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire [3:0] Tens;
    wire       Cout;

    bcd_adder uut (
        .A(A), .B(B), .Cin(Cin),
        .Sum(Sum), .Tens(Tens), .Cout(Cout)
    );

    initial begin
        $display(" A  B  Cin | Tens Sum Cout");
        $display("--------------------------");

        A = 4'd4;  B = 4'd3;  Cin = 0; #10;
        $display("%2d %2d   %b  |  %b   %b    %b", A, B, Cin, Tens, Sum, Cout);

        A = 4'd5;  B = 4'd5;  Cin = 0; #10;
        A = 4'd9;  B = 4'd8;  Cin = 0; #10;
        A = 4'd2;  B = 4'd9;  Cin = 1; #10;
        A = 4'd0;  B = 4'd0;  Cin = 0; #10;

        $stop;
    end

endmodule
