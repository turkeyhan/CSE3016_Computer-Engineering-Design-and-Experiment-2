`timescale 1ns / 1ps
module inv_tb;
reg DD, clkclk;
wire QQ, QbarQbar;
inv inv_tb(
.D(DD),
.clk(clkclk),
.Q(QQ),
.Qbar(QbarQbar));

initial begin
    DD = 1'b0;
    clkclk = 1'b1;
end

always DD = #7 ~DD;
always clkclk = #19 ~clkclk;

initial begin
    #3000
    $finish;
end
endmodule