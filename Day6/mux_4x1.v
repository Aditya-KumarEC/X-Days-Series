`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module mux_4x1 (
    input  wire [3:0] I,       // Inputs: I0, I1, I2, I3
    input  wire [1:0] sel,     // Select lines
    output wire       Y        // Output
);

    assign Y = (sel == 2'b00) ? I[0] :
               (sel == 2'b01) ? I[1] :
               (sel == 2'b10) ? I[2] :
                               I[3];

endmodule
