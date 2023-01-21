`timescale 1ns / 1ps
module inv_tb;
reg aa, bb, cc, dd;
wire ee;
inv inv_tb(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee));
initial begin
    aa = 1'b1;
    bb = 1'b0;
    cc = 1'b1;
    dd = 1'b0;
end
always aa = #10 ~aa;
always bb = #34 ~bb;
always cc = #51 ~cc;
always dd = #75 ~cc;

initial begin
    #3000
    $finish;
end
endmodule