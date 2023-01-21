`timescale 1ns / 1ps
module inv_tb;
reg aa1, aa2, bb1, bb2;
wire ff1, ff2, ff3;
inv inv_tb(
.a1(aa1),
.a2(aa2),
.b1(bb1),
.b2(bb2),
.f1(ff1),
.f2(ff2),
.f3(ff3));
initial begin
    aa1 = 1'b1;
    aa2 = 1'b0;
    bb1 = 1'b1;
    bb2 = 1'b0;
end
always aa1 = #7 ~aa1;
always aa2 = #19 ~aa2;
always bb1 = #33 ~bb1;
always bb2 = #56 ~bb2;

initial begin
    #3000
    $finish;
end
endmodule