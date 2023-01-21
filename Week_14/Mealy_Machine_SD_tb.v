`timescale 1ns / 1ps

module inv_tb;
reg clk, rst, M;
wire O;
wire [3:0]out;
inv u_inv(clk,rst,M, O, out);

initial begin
    clk=1'b0;
    rst=1'b0;
    M = 1'b0;
end

always M=#30~M;
always clk=#50~clk;
initial rst<=#1000 ~rst;


endmodule
