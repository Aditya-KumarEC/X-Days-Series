`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module bcd_adder(
    input [3:0] A,
    input [3:0] B,
    input       Cin,
    output [3:0] Sum,
    output [3:0] Tens,
    output       Cout
    );
    wire [4:0] binary_sum;
    wire [4:0] corrected_sum;
    wire       carry_out;
    
    assign binary_sum = A+B+Cin;
    assign carry_out=(binary_sum > 9) ? 1:0;
    assign corrected_sum=(carry_out) ? (binary_sum + 5'd6) : binary_sum;
    assign Sum = corrected_sum[3:0];
    assign Tens = (carry_out) ? 4'b0001 : 4'b0000;
    assign Cout = corrected_sum[4];
    
endmodule
