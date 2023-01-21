`timescale 1ns / 1ps

module inv(clk,rst,M, O, out);
input clk,rst,M;
output O;
output [3:0]out;
reg [3:0]out;
reg O;

initial begin
    out=4'b0000;
    O=1'b0;
end

always @(posedge clk) begin 
if(rst) begin
    out = 4'b0000;
    O = 1'b0;
end
else begin
    out[3] = out[2];
    out[2] = out[1];
    out[1] = out[0];
    out[0] = M;
    if(out == 4'b1101) O = 1'b1;
    else O = 1'b0;
end

end
endmodule