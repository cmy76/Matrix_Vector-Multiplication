`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/29 21:23:12
// Design Name: 
// Module Name: RMCM
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/29 20:59:00
// Design Name: 
// Module Name: RMCM
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


module RMCM(
    input           [8:0]  weight[63:0],
    input           [31:0]  x,
    
    input                   clk,
    input                   rst_n,
    
    output          [31:0]  partial_p[63:0]
    );
    
    wire            [31:0]  x1;
    wire            [31:0]  x3;
    wire            [31:0]  x5;
    wire            [31:0]  x7;
    
    pcm pcm0(
        .x(x),
        .clk(clk),
        .rst_n(rst_n),
        .x1(x1),
        .x3(x3),
        .x5(x5),
        .x7(x7)
    );
    
    genvar i;
    generate
    for(i = 0;i < 64; i=i+1) begin:ssa_array
        ssa ssa_inst(x1, x3, x5, x7, weight[i], partial_p[i]);
    end
    endgenerate
endmodule
