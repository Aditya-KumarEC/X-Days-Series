`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_mux_4x1;

    reg  [3:0] I;
    reg  [1:0] sel;
    wire       Y;

    mux_4x1 uut (
        .I(I),
        .sel(sel),
        .Y(Y)
    );

    initial begin
        $display("I      sel | Y");
        $display("----------------");

        I = 4'b1010;

        sel = 2'b00; #10;
        $display("%b  %b | %b", I, sel, Y);

        sel = 2'b01; #10;
        $display("%b  %b | %b", I, sel, Y);

        sel = 2'b10; #10;
        $display("%b  %b | %b", I, sel, Y);

        sel = 2'b11; #10;
        $display("%b  %b | %b", I, sel, Y);

        $stop;
    end

endmodule