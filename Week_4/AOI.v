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
    input a,b ,c ,d,
    output e,f,g
    );
    assign e = a&b;
    assign f = c&d;
    assign g = ~(e|f);
endmodule
