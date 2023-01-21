`timescale 1ns / 1ps
module inv_tb;
reg aa, bb, cc;
wire dd, ee;
inv inv_tb(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee));
initial begin
    aa = 1'b1;
    bb = 1'b1;
    cc = 1'b1;
end
always begin
    aa = #8 ~aa;
    bb = #16 ~bb;
    cc = #44 ~cc;
end
initial begin
    #3000
    $finish;
end
endmodule