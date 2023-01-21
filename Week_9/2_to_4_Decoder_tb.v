`timescale 1ns / 1ps
module inv_tb;
reg AA, BB;
wire D0D0, D1D1, D2D2, D3D3;
inv inv_tb(
.A(AA),
.B(BB),
.D0(D0D0),
.D1(D1D1),
.D2(D2D2),
.D3(D3D3));

initial begin
    AA = 1'b1;
    BB = 1'b0;
end
always AA = #7 ~AA;
always BB = #19 ~BB;

initial begin
    #3000
    $finish;
end
endmodule