`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module mux_8x1(
    input  wire [7:0] I,       // Inputs I0 to I7
    input  wire [2:0] sel,     // 3-bit selector
    output wire       Y        // Output
);

    assign Y = (sel == 3'b000) ? I[0] :
               (sel == 3'b001) ? I[1] :
               (sel == 3'b010) ? I[2] :
               (sel == 3'b011) ? I[3] :
               (sel == 3'b100) ? I[4] :
               (sel == 3'b101) ? I[5] :
               (sel == 3'b110) ? I[6] :
                                 I[7];

endmodule
