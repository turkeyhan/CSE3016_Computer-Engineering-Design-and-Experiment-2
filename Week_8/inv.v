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
    input A, B, C, D,
    output a, b, c, d, e, f, g, dp, dg
    );
    assign a = (A&(~D))|((~A)&B&D)|(A&(~B)&(~C))|((~A)&C)|(B&C)|((~B)&(~D));
    assign b = ((~A)&(~C)&(~D))|(A&(~C)&D)|((~A)&C&D)|((~B)&(~C))|((~B)&(~D));
    assign c = ((~B)&D)|((~B)&(~C))|((A&(~B))|((~C)&D)|((~A)&B));
    assign d = ((~B)&(~C)&(~D))|((~B)&C&D)|((~A)&C&(~D))|(B&(~C)&D)|(A&B&(~D));
    assign e = (A&B)|(A&C)|((~B)&(~D))|(C&(~D));
    assign f = ((~C)&(~D))|((~A)&B&(~C))|(B&(~D))|(A&C)|(A&(~B));
    assign g = ((~A)&B&(~D))|((~B)&C)|(B&(~C)&D)|(A&C)|(A&(~B));
    assign dp = 1;
    assign dg = a|b|c|d|e|f|g|dp;
endmodule
