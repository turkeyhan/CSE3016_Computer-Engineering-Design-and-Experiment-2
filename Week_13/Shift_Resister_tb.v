`timescale 1ns / 1ps

module inv_tb;
reg in, clk, rst;
wire[3:0] out;

inv u_inv(in, clk,rst,out);

initial begin
    in=1'b0;
    clk=1'b0;
    rst=1'b0;
end

always in=#15~in;
always clk=#10~clk;
initial rst<=#200 ~rst;


endmodule
