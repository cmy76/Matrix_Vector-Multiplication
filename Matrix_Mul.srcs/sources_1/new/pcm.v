`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/29 14:31:27
// Design Name: 
// Module Name: pcm
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


module pcm(
    input           [31:0]  x,
    input                   clk,
    input                   rst_n,
    
    output          [31:0]  x1,
    output          [31:0]  x3,
    output          [31:0]  x5,
    output          [31:0]  x7
    );
    
    assign x1 = x;
    
    mult_gen_0 mult0 (
        .CLK(clk),  // input wire CLK
        .A(x),      // input wire [31 : 0] A
        .P(x3)      // output wire [33 : 0] P
    );
    
    mult_gen_1 mult1 (
        .CLK(clk),  // input wire CLK
        .A(x),      // input wire [31 : 0] A
        .P(x5)      // output wire [34 : 0] P
    );
    
    mult_gen_2 mult2 (
        .CLK(clk),  // input wire CLK
        .A(x),      // input wire [31 : 0] A
        .P(x7)      // output wire [34 : 0] P
    );
    
endmodule
