`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 10:29:27
// Design Name: 
// Module Name: basic_gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module basic_gates(
    input A,
    input B,
    output AND_out,
    output OR_out,
    output NOT_A,
    output NAND_out,
    output NOR_out,
    output XOR_out,
    output XNOR_out
    );
assign AND_out = A & B;
assign OR_out = A | B;
assign NOT_A = ~A;
assign NAND_out = ~(A & B);
assign NOR_out = ~(A | B);
assign XOR_out = A ^ B;
assign XNOR_out = ~(A ^ B);
endmodule
