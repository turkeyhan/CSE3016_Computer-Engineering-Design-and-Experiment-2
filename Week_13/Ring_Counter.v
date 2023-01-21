`timescale 1ns / 1ps

module inv(clk,rst,out);
input clk,rst;
output [3:0]out;
reg [3:0]out;

initial out = 4'b0110;

always @(posedge clk) begin 
if(rst) out = 4'b0110;
else begin
out[3] <= out[2];
out[2] <= out[1];
out[1] <= out[0];
out[0] <= out[3];
end
end
endmodule