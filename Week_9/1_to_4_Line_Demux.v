`timescale 1ns / 1ps


module inv(
    input a, b, F,
    output A, B, C, D
    );
    assign A = F&(~a)&(~b);
    assign B = F&a&(~b);
    assign C = F&(~a)&b;
    assign D = F&a&b;
    
endmodule
