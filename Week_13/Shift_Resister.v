`timescale 1ns / 1ps

module inv(in,clk,rst,out);
input in,clk,rst;
output [3:0]out;
reg [3:0]out;

initial out = 4'b0000;

always @(posedge clk) begin 
if(rst) out = 4'b0000;
else begin
out[3] <= out[2];
out[2] <= out[1];
out[1] <= out[0];
out[0] <= in;
end
end

endmodule