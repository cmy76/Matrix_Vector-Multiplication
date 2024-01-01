`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/29 16:44:08
// Design Name: 
// Module Name: ssa
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ssa(
    input           [31:0]  x1,
    input           [31:0]  x3,
    input           [31:0]  x5,
    input           [31:0]  x7,
    
    input           [8:0]   weight,
    
    output          [31:0]  result
    );
    
    reg             [3:0]   higher_part;
    reg             [3:0]   lower_part;
    reg             [31:0]  higher_shifted;
    reg             [31:0]  lower_shifted;
    reg             [39:0]  sum;
    always@(weight) begin
        higher_part = weight[8:4];
        lower_part = weight[3:0];
    end
    always@(*) begin
        begin
        case(higher_part)
            4'd0:  higher_shifted = 0;
            4'd1:  higher_shifted = x1 << 4;
            4'd2:  higher_shifted = x1 << 5;
            4'd3:  higher_shifted = x3 << 4;
            4'd4:  higher_shifted = x1 << 6;
            4'd5:  higher_shifted = x5 << 4;
            4'd6:  higher_shifted = x3 << 5;
            4'd7:  higher_shifted = x7 << 4;
            4'd8:  higher_shifted = x1 << 7;
            4'd9:  higher_shifted = x1 << 7;
            4'd10: higher_shifted = x5 << 5;
            4'd11: higher_shifted = x5 << 5;
            4'd12: higher_shifted = x3 << 6;
            4'd13: higher_shifted = x3 << 6;
            4'd14: higher_shifted = x7 << 5;
            4'd15: higher_shifted = x7 << 5;
        endcase
    end
    
    end
    always@(*) begin
        begin
        case(lower_part)
            4'd0:  lower_shifted = 0;
            4'd1:  lower_shifted = x1;
            4'd2:  lower_shifted = x1 << 1;
            4'd3:  lower_shifted = x3;
            4'd4:  lower_shifted = x1 << 2;
            4'd5:  lower_shifted = x5;
            4'd6:  lower_shifted = x3 << 1;
            4'd7:  lower_shifted = x7;
            4'd8:  lower_shifted = x1 << 3;
            4'd9:  lower_shifted = x1 << 3;
            4'd10: lower_shifted = x5 << 1;
            4'd11: lower_shifted = x5 << 1;
            4'd12: lower_shifted = x3 << 2;
            4'd13: lower_shifted = x3 << 2;
            4'd14: lower_shifted = x7 << 1;
            4'd15: lower_shifted = x7 << 1;
        endcase
    end
    end
    always @(higher_shifted, lower_shifted)
    begin
        sum = higher_shifted + lower_shifted;
    end

    assign result = sum;
endmodule
