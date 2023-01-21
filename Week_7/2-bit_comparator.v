`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/20 15:26:34
// Design Name: 
// Module Name: inv
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


module inv(
    input a1, a2, b1, b2,
    output f1, f2, f3
    );
    assign f1 = (a2&(~b2))|(a1&(~b2)&(~b1))|(a2&a1&(~b1));
    assign f2 = (b2&(~a2))|(b1&(~a2)&(~a1))|(b2&b1&(~a1));
    assign f3 = (~(a1^b1))&(~(a2^b2));
endmodule
