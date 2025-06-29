// ripple_carry_adder_4bit_tb.v
`timescale 1ns / 1ps

module tb_ripple_carry_adder_4bit;

    reg  [3:0] A;
    reg  [3:0] B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    // Instantiate the DUT (Device Under Test)
    ripple_carry_adder_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // Test case 1
        A = 4'b0001; B = 4'b0010; Cin = 0; #10;
        // Test case 2
        A = 4'b0101; B = 4'b0011; Cin = 1; #10;
        // Test case 3
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        // Test case 4
        A = 4'b1010; B = 4'b0101; Cin = 1; #10;
        // Test case 5
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;

        $stop;
    end

endmodule
