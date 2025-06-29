`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module tb_demux_1x8;

    // Inputs
    reg in;
    reg [2:0] sel;

    // Output
    wire [7:0] out;

    // Instantiate the DUT (Design Under Test)
    demux_1x8 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        $display("in   sel   |   out");
        $display("---------------------------");

        // Test all selection combinations
        in = 1;

        sel = 3'b000; #10;
        $display("%b   %b | %b", in, sel, out);

        sel = 3'b001; #10;
        $display("%b   %b | %b", in, sel, out);

        sel = 3'b010; #10;
        $display("%b   %b | %b", in, sel, out);

        sel = 3'b011; #10;
        $display("%b   %b | %b", in, sel, out);

        sel = 3'b100; #10;
        $display("%b   %b | %b", in, sel, out);

        sel = 3'b101; #10;
        $display("%b   %b | %b", in, sel, out);

        sel = 3'b110; #10;
        $display("%b   %b | %b", in, sel, out);

        sel = 3'b111; #10;
        $display("%b   %b | %b", in, sel, out);

        // Test with in = 0 (should give all 0s)
        in = 0; sel = 3'b100; #10;
        $display("%b   %b | %b", in, sel, out);

        $stop;
    end

endmodule


