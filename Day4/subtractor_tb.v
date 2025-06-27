// subtractor_tb.v
`timescale 1ns / 1ps

module subtractor_tb;

    reg A, B, Bin;
    wire Diff_HS, Borrow_HS;
    wire Diff_FS, Borrow_FS;

    // Instantiate half subtractor
    half_subtractor U_HS (
        .A(A),
        .B(B),
        .Diff(Diff_HS),
        .Borrow(Borrow_HS)
    );

    // Instantiate full subtractor
    full_s U_FS (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Diff(Diff_FS),
        .Bout(Borrow_FS)
    );

    initial begin
        $display("Time | A B Bin | HS: Diff Borrow | FS: Diff Borrow");
        $monitor("%4dns | %b %b  %b  |     %b     %b    |     %b     %b",
                 $time, A, B, Bin, Diff_HS, Borrow_HS, Diff_FS, Borrow_FS);

        A=0; B=0; Bin=0; #10;
        A=0; B=0; Bin=1; #10;
        A=0; B=1; Bin=0; #10;
        A=0; B=1; Bin=1; #10;
        A=1; B=0; Bin=0; #10;
        A=1; B=0; Bin=1; #10;
        A=1; B=1; Bin=0; #10;
        A=1; B=1; Bin=1; #10;

        $stop;
    end

endmodule
