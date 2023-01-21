`timescale 1ns / 1ps
module inv(
    input D, clk,
    output Q, Qbar
    );
    wire A, B;
    assign A = (~D)&clk;
    assign B = D&clk;
    assign Q = ~(A | Qbar);
    assign Qbar = ~(B | Q);

endmodule