`timescale 1ns / 1ps

module tb_sipo_shift_register;

    reg clk, rst, sin;
    wire [3:0] pout;

    sipo_shift_register uut (
        .clk(clk),
        .rst(rst),
        .sin(sin),
        .pout(pout)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; sin = 0; #10;
        rst = 0;

        // Input: 1 0 1 1
        sin = 1; #10;
        sin = 0; #10;
        sin = 1; #10;
        sin = 1; #10;

        #40; // Hold to observe parallel output
        $stop;
    end

endmodule
