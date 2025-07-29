`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module pipo_sft_reg (
    input clk,
    input rst,
    input [3:0] pin,
    output reg [3:0] pout
);

always @(posedge clk or posedge rst) begin
    if (rst)
        pout <= 4'b0000;
    else
        pout <= pin;
end

endmodule
