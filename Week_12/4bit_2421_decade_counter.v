`timescale 1ns / 1ps

module inv( clk,rst, out2);
input clk, rst;
output[3:0] out2;
reg[3:0] out1, out2;

initial out1=4'b0000;
initial out2=4'b0000;

always @(posedge clk)begin
    if(rst == 1'b1) out1 = 4'b0000;
    else if(out1 == 4'b1001) out1 = out1 + 4'b0111;
    else
    out1 = out1 + 4'b0001;
    out2[3] = out1[3]|(~(~(out1[2]&out1[0])))|(~(~out1[2]|~out1[1]));
    out2[2] = out1[3]|(~(~(out1[2]&out1[1])))|(~(~(out1[2]&(~out1[0]))));
    out2[1] = (~(~((~out1[2])&out1[1])))|(out1[2]&(~out1[1])&out1[0])|out1[3];
    out2[0] = out1[0];
end

endmodule