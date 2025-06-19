`timescale 1ns / 1ps

module basic_gates_tb;
reg A, B ;
wire AND_out, OR_out, NOT_A, NAND_out, NOR_out, XOR_out, XNOR_out;

basic_gates uut (
    .A(A), .B(B),
    .AND_out(AND_out),
    .OR_out(OR_out),
    .NOT_A(NOT_A),
    .NAND_out(NAND_out),
    .NOR_out(NOR_out),
    .XOR_out(XOR_out),
    .XNOR_out(XNOR_out)
);

initial begin
    $display("A B | AND OR NOT NAND NOR XOR XNOR");
    A = 0; B = 0; #10;
    $display("%b %b |  %b   %b   %b    %b    %b   %b    %b", A,B,AND_out,OR_out,NOT_A,NAND_out,NOR_out,XOR_out,XNOR_out);

    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
end

endmodule
