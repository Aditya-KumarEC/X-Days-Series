`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
module tb_mux_8x1;

    reg  [7:0] I;
    reg  [2:0] sel;
    wire       Y;

    mux_8x1 uut (
        .I(I),
        .sel(sel),
        .Y(Y)
    );

    initial begin
        $display(" I       sel | Y ");
        $display("------------------");

        I = 8'b10101010;

        sel = 3'b000; #10;
        $display("%b  %b | %b", I, sel, Y);

        sel = 3'b001; #10;
        $display("%b  %b | %b", I, sel, Y);

        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        $stop;
    end

endmodule
