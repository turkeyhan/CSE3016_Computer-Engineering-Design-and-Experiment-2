`timescale 1ns / 1ps
module inv_tb;
reg RR, SS, clkclk;
wire QQ, QbarQbar;
inv inv_tb(
.R(RR),
.S(SS),
.clk(clkclk),
.Q(QQ),
.Qbar(QbarQbar));

initial begin
    RR = 1'b1;
    SS = 1'b0;
    clkclk = 1'b1;
end

always RR = #7 ~RR;
always SS = #19 ~SS;
always clkclk = #37 ~clkclk;

initial begin
    #3000
    $finish;
end
endmodule