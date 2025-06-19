`timescale 1ns / 1ps
module half_adder_tb;

  // Declare inputs as reg and outputs as wire
  reg a, b;
  wire sum, carry;

  // Instantiate the Half Adder
  half_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  // Stimulus block
  initial begin
    $display("A B | Sum Carry");
    $display("--------------");
    
    a = 0; b = 0; #10; $display("%b %b |  %b    %b", a, b, sum, carry);
    a = 0; b = 1; #10; $display("%b %b |  %b    %b", a, b, sum, carry);
    a = 1; b = 0; #10; $display("%b %b |  %b    %b", a, b, sum, carry);
    a = 1; b = 1; #10; $display("%b %b |  %b    %b", a, b, sum, carry);
    
    $finish;
  end

endmodule
