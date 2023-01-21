`timescale 1ns / 1ps
module inv_tb;
reg AA, BB, CC, DD;
wire aa, bb, cc, dd, ee, ff, gg, dpdp;
inv inv_tb(
.A(AA),
.B(BB),
.C(CC),
.D(DD),
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee),
.f(ff),
.g(gg),
.dp(dpdp));
initial begin
    AA = 1'b1;
    BB = 1'b0;
    CC = 1'b1;
    DD = 1'b0;
end
always AA = #7 ~AA;
always BB = #19 ~BB;
always CC = #33 ~CC;
always DD = #56 ~DD;

initial begin
    #3000
    $finish;
end
endmodule