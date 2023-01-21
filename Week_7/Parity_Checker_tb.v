`timescale 1ns / 1ps
module inv_tb;
reg aa, bb, cc, dd, pp;
wire ee;
inv inv_tb(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.p(pp),
.e(ee));
initial begin
    aa = 1'b1;
    bb = 1'b0;
    cc = 1'b1;
    dd = 1'b0;
    pp = 1'b1;
end
always aa = #7 ~aa;
always bb = #19 ~bb;
always cc = #33 ~cc;
always dd = #56 ~cc;
always pp = #67 ~pp;

initial begin
    #3000
    $finish;
end
endmodule