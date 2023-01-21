`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/20 15:32:49
// Design Name: 
// Module Name: inv_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module inv_tb;
reg aa, bb, cc, dd;
wire ee, ff, gg;

inv inv_tb(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee),
.f(ff),
.g(gg));

initial begin
    aa = 1'b1;
    bb = 1'b1;
    cc = 1'b1;
    dd = 1'b1;
end

always begin
    aa = #8 ~aa;
    bb = #16 ~bb;
    cc = #32 ~cc;
    dd = #64 ~dd;
end

initial begin
    #3000
    $finish;
end

endmodule
