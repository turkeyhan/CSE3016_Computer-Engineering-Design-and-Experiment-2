`timescale 1ns / 1ps
module inv_tb;
reg aa, bb, AA, BB, CC, DD;
wire EE;
inv inv_tb(
.a(aa),
.b(bb),
.A(AA),
.B(BB),
.C(CC),
.D(DD),
.E(EE));

initial begin
    aa = 1'b1;
    bb = 1'b0;
    AA = 1'b1;
    BB = 1'b0;
    CC = 1'b1;
    DD = 1'b0;
end
always aa = #7 ~aa;
always bb = #19 ~bb;
always AA = #26 ~AA;
always BB = #35 ~BB;
always CC = #47 ~CC;
always DD = #56 ~DD;


initial begin
    #3000
    $finish;
end
endmodule