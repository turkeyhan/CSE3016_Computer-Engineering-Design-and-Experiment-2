`timescale 1ns / 1ps
module inv_tb;
reg aa, bb, cc, dd;
wire ee, ff, gg, hh;
inv inv_tb(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee),
.f(ff),
.g(gg),
.h(hh));
initial begin
    aa = 1'b1;
    bb = 1'b1;
    cc = 1'b1;
    dd = 1'b1;
end
always begin
    aa = #4 ~aa;
    bb = #9 ~bb;
    cc = #19 ~cc;
    dd = #35 ~cc;
end
initial begin
    #3000
    $finish;
end
endmodule