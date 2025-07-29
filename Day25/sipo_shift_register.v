`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module sipo_shift_register (
    input clk,
    input rst,
    input sin,
    output reg [3:0] pout
);

always @(posedge clk or posedge rst) begin
    if (rst)
        pout <= 4'b0000;
    else
        pout <= {pout[2:0], sin};
end

endmodule
