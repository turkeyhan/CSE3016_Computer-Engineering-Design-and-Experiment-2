`timescale 1ns / 1ps
module inv_tb;
reg AA, BB, CC, DD;
wire E0E0, E1E1;
inv inv_tb(
.A(AA),
.B(BB),
.C(CC),
.D(DD),
.E0(E0E0),
.E1(E1E1));

initial begin
    AA = 1'b1;
    BB = 1'b0;
    CC = 1'b1;
    DD = 1'b0;
end
always AA = #7 ~AA;
always BB = #19 ~BB;
always CC = #35 ~CC;
always DD = #56 ~DD;


initial begin
    #3000
    $finish;
end
endmodule