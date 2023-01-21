`timescale 1ns / 1ps
module inv_tb;
reg aa, bb, FF;
wire AA, BB, CC, DD;
inv inv_tb(
.a(aa),
.b(bb),
.F(FF),
.A(AA),
.B(BB),
.C(CC),
.D(DD));

initial begin
    aa = 1'b1;
    bb = 1'b0;
    FF = 1'b1;
end
always aa = #7 ~aa;
always bb = #19 ~bb;
always FF = #26 ~FF;


initial begin
    #3000
    $finish;
end
endmodule