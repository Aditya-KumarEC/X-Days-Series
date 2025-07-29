`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_universal_sft_reg;

    reg clk, rst;
    reg [1:0] sel;
    reg [3:0] pin;
    wire [3:0] pout;

    universal_sft_reg uut (
        .clk(clk),
        .rst(rst),
        .sel(sel),
        .pin(pin),
        .pout(pout)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; sel = 2'b00; pin = 4'b0000; #10;
        rst = 0;

        // Parallel Load
        sel = 2'b11; pin = 4'b1010; #10;

        // Hold
        sel = 2'b00; #10;

        // Shift Right
        sel = 2'b01; #10;

        // Shift Left
        sel = 2'b10; #10;

        $stop;
    end

endmodule
