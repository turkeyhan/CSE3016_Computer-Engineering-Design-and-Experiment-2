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
    input a, b, c, d,
    output e, f, g, h
    );
    assign e = ((~(~(b&c)))|~(~((~(~(b&d))))|a));
    assign f = ~(~(a|(b&(~d)))|~(~(b&c)));
    assign g = ~(~((a|((~b)&c)|(b&(~c)&d))));
    assign h = d;
endmodule
