`timescale 1ns / 1ps

module inv_tb;
reg clk, rst;
wire[3:0] out;

inv u_inv(clk,rst,out);

initial begin
    clk=1'b0;
    rst=1'b0;
end

always clk=#10~clk;
initial rst<=#200 ~rst;


endmodule
