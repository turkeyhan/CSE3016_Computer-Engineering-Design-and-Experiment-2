`timescale 1ns / 1ps

module inv_tb;
reg clk, rst, M;
wire[3:0] out;
wire a, b, c, d, e, f, g, dp, digit;

inv u_inv(clk,rst,M, out, a, b, c, d, e, f, g, dp, digit);

initial begin
    clk=1'b0;
    rst=1'b0;
    M = 1'b0;
end

always M=#100~M;
always clk=#20~clk;
initial rst<=#200 ~rst;


endmodule
