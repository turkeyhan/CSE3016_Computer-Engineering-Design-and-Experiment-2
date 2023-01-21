`timescale 1ns / 1ps


module inv(
    input A, B, C, D,
    output D1, D2, D3, D4, D5, D6, D7, D8, D9
    );
    assign D1 = (~A)&(~B)&(~C)&D;
    assign D2 = (~B)&C&(~D);
    assign D3 = (~B)&C&D;
    assign D4 = B&(~C)&(~D);
    assign D5 = B&(~C)&D;
    assign D6 = B&C&(~D);
    assign D7 = B&C&D;
    assign D8 = A&(~D);
    assign D9 = A&D;
    
    

    
endmodule
