`timescale 1ns / 1ps
module inv(
    input S, R, clk,
    output Q, Qbar
    );
    wire A, B;
    assign A = S&clk;
    assign B = R&clk;
    assign Q = ~(B | Qbar);
    assign Qbar = ~(A | Q);

endmodule