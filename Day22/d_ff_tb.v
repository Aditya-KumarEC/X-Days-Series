`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module d_ff_tb;

    reg D, clk;
    wire Q, Qn;

    d_ff uut (
        .D(D),
        .clk(clk),
        .Q(Q),
        .Qn(Qn)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time | D | Q | Qn");
        $display("--------------------");

        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;
        D = 1; #10;
        D = 0; #10;

        $stop;
    end

endmodule
