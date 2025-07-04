`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module tb_encoder_8to3;

  reg [7:0] in;
  wire [2:0] out;

  encoder_8to3 uut (
    .in(in),
    .out(out)
  );

  initial begin
    $display("Input       | Output");
    $display("---------------------");

    in = 8'b00000001; #10;  // in[0]
    $display("%b | %b", in, out);

    in = 8'b00000010; #10;  // in[1]
    $display("%b | %b", in, out);

    in = 8'b00000100; #10;  // in[2]
    $display("%b | %b", in, out);

    in = 8'b00001000; #10;  // in[3]
    $display("%b | %b", in, out);

    in = 8'b00010000; #10;  // in[4]
    $display("%b | %b", in, out);

    in = 8'b00100000; #10;  // in[5]
    $display("%b | %b", in, out);

    in = 8'b01000000; #10;  // in[6]
    $display("%b | %b", in, out);

    in = 8'b10000000; #10;  // in[7]
    $display("%b | %b", in, out);

    $finish;
  end
endmodule

