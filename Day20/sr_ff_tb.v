`timescale 1ns / 1ps

module sr_ff_tb;

    reg S, R, clk;
    wire Q, Qn;

    // Instantiate the SR Flip-Flop module
    sr_ff uut (
        .S(S),
        .R(R),
        .clk(clk),
        .Q(Q),
        .Qn(Qn)
    );
    // Generate clock signal (10ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    // Apply input stimulus
    initial begin
        $display("Time\tS R | Q Qn");
        $monitor("%g\t%b %b | %b  %b", $time, S, R, Q, Qn);

        // Initial state
        S = 0; R = 0; #10;
        // Set (S=1, R=0)
        S = 1; R = 0; #10;
        // Reset (S=0, R=1)
        S = 0; R = 1; #10;
        // Hold (S=0, R=0)
        S = 0; R = 0; #10;
        // Invalid (S=1, R=1)
        S = 1; R = 1; #10;
        // Return to hold
        S = 0; R = 0; #10;
        $stop;
    end
endmodule
