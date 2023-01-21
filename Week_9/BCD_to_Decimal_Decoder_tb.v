`timescale 1ns / 1ps
module inv_tb;
reg AA, BB, CC, DD;
wire D1D1, D2D2, D3D3, D4D4, D5D5, D6D6, D7D7, D8D8, D9D9;
inv inv_tb(
.A(AA),
.B(BB),
.C(CC),
.D(DD),
.D1(D1D1),
.D2(D2D2),
.D3(D3D3),
.D4(D4D4),
.D5(D5D5),
.D6(D6D6),
.D7(D7D7),
.D8(D8D8),
.D9(D9D9));

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