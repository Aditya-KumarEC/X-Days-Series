`timescale 1ns / 1ps

module alu_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] sel,
    output reg [3:0] result,
    output       zero
);

    always @(*) begin
        case (sel)
            3'b000: result = A + B;
            3'b001: result = A - B;
            3'b010: result = A & B;
            3'b011: result = A | B;
            3'b100: result = A ^ B;
            3'b101: result = ~A;
            3'b110: result = A + 1;
            3'b111: result = B - 1;
            default: result = 4'b0000;
        endcase
    end

    assign zero = (result == 4'b0000);

endmodule
