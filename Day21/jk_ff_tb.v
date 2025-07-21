`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module jk_ff_tb;

    reg J, K, clk;
    wire Q, Qn;

    jk_ff uut (
        .J(J),
        .K(K),
        .clk(clk),
        .Q(Q),
        .Qn(Qn)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time | J K | Q Qn");
        $display("--------------------");

        J = 0; K = 0; #10;
        J = 1; K = 0; #10;
        J = 0; K = 1; #10;
        J = 1; K = 1; #10;
        J = 0; K = 0; #10;
        J = 1; K = 1; #10;

        $stop;
    end

endmodule
