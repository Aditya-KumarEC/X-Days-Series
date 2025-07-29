`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module pipo_sft_reg_tb;

    reg clk, rst;
    reg [3:0] pin;
    wire [3:0] pout;

    pipo_sft_reg uut (
        .clk(clk),
        .rst(rst),
        .pin(pin),
        .pout(pout)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; pin = 4'b0000; #10;
        rst = 0;

        pin = 4'b1010; #10;
        pin = 4'b1100; #10;
        pin = 4'b1111; #10;

        #20;
        $stop;
    end
endmodule
