`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/29 21:49:53
// Design Name: 
// Module Name: subMVM
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


module subMVM(
    input           [31:0]  x[63:0],
    input           [8:0]   weight[63:0][63:0],
    
    input                   clk,
    input                   rst_n,
    
    output          [31:0]  y[63:0]
    );
    
    reg             [31:0]  result[63:0];
    reg             [31:0]  partial_p[63:0];
    reg             [5:0]   count;
    reg             [31:0]  x_input;
    reg             [8:0]   weight_input[63:0];
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for(int i = 0;i < 64;i = i+1) begin
                result[i] <= 0;
                count <= 0;
            end
        end
        else begin
            count <= count + 1;
            for(int i = 0;i < 64;i = i + 1) begin
                result[i] <= partial_p[i] + result[i];
            end
        end
    end
    always@(*) begin
        x_input <= x[count];
        weight_input <= weight[count];
    end
    
    RMCM rmcm(
        .weight(weight_input),
        .x(x_input),
        .clk(clk),
        .rst_n(rst_n),
        .partial_p(partial_p)
    );
    assign y = result;
endmodule
