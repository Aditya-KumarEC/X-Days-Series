`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module universal_sft_reg (
    input clk,
    input rst,
    input [1:0] sel,
    input [3:0] pin,
    output reg [3:0] pout
);
always @(posedge clk or posedge rst) begin
    if (rst)
        pout <= 4'b0000;
    else begin
        case (sel)
            2'b00: pout <= pout;                     // Hold
            2'b01: pout <= {1'b0, pout[3:1]};        // Shift Right
            2'b10: pout <= {pout[2:0], 1'b0};        // Shift Left
            2'b11: pout <= pin;                     // Parallel Load
            default: pout <= pout;
        endcase
    end
end

endmodule
