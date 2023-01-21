`timescale 1ns / 1ps

module inv(clk,rst,M,out,a,b,c,d,e,f,g,dp,digit);
input clk,rst,M;
output [3:0]out;
output a,b,c,d,e,f,g, dp, digit;
reg [3:0]out;
reg a,b,c,d,e,f,g,dp, digit;

initial begin
out = 4'b0000;
digit = 1'b1;
a = 0;
b = 0;
c = 0;
d = 0;
e = 0;
f = 0;
g = 0;
dp = 0;
end

always @(posedge clk) begin 
if(rst) out <= 4'b0000;
else if(M) begin
    a <= 1'b0;
    b <= 1'b1;
    c <= 1'b1;
    d <= 1'b1;
    e <= 1'b1;
    f <= 1'b1;
    g <= 1'b0;
    dp <= a | b | c | d | e | f | g;
    out <= out + 4'b0001;
end
else begin
    a <= 0;
    b <= 1;
    c <= 1;
    d <= 1;
    e <= 1;
    f <= 0;
    g <= 1;
    dp <= a | b | c | d | e | f | g;
    out <= out - 4'b0001;
end 
end
endmodule