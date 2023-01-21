`timescale 1ns / 1ps
module inv(
    input S, R, clk,
    output Q, Qbar
    );
    wire A, B;
    assign A = ~(S&clk);
    assign B = ~(R&clk);
    assign Q = ~(A & Qbar);
    assign Qbar = ~(B & Q);

endmodule