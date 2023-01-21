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
reg aa, bb, cc;
wire ee;

inv inv_tb(
.a(aa),
.b(bb),
.c(cc),
.e(ee));

initial begin 
    aa = 1'b1;
    bb = 1'b0;
    cc = 1'b1;
end

always begin
    aa = #10 ~aa;
    bb = #26 ~bb;
    cc = #47 ~cc;
end

initial begin
    #3000
    $finish;
end

endmodule
