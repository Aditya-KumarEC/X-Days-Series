`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_t_ff;

    reg T, clk;
    wire Q, Qn;

    t_ff uut (
        .T(T),
        .clk(clk),
        .Q(Q),
        .Qn(Qn)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time | T | Q | Qn");
        $display("-------------------");

        T = 0; #10;
        T = 1; #10;
        T = 1; #10;
        T = 0; #10;
        T = 1; #10;
        T = 0; #10;

        $stop;
    end

endmodule
