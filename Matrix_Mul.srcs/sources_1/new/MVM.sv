`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/30 12:13:13
// Design Name: 
// Module Name: MVM
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


module MVM(
    input           [8:0]   weight[255:0][255:0],
    input           [31:0]  x[255:0],
    
    input                   clk,
    input                   rst_n,
    
    output          [31:0]  y[255:0]
    );
    wire            [31:0]  temp[15:0][63:0];
    
    
    
    subMVM submvm11(
        .x(x[255:192]),          
        .weight(weight[255:192]),
        .clk,              
        .rst_n,                 
        .y(temp[0])
    );
    
    subMVM submvm12(
        .x(x[255:192]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[1])
    );
    
    subMVM submvm13(
        .x(x[255:192]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[2])
    );
    
    subMVM submvm14(
        .x(x[255:192]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[3])
    );
    
    subMVM submvm21(
        .x(x[191:128]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[4])
    );
    
    subMVM submvm22(
        .x(x[191:128]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[5])
    );
    
    subMVM submvm23(
        .x(x[191:128]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[6])
    );
    
    subMVM submvm24(
        .x(x[191:128]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[7])
    );
    
    subMVM submvm31(
        .x(x[127:64]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[8])
    );
    
    subMVM submvm32(
        .x(x[127:64]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[9])
    );
    
    subMVM submvm33(
        .x(x[127:64]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[10])
    );
    
    subMVM submvm34(
        .x(x[127:64]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[11])
    );
    
    subMVM submvm41(
        .x(x[63:0]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[12])
    );
    
    subMVM submvm42(
        .x(x[63:0]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[13])
    );
    
    subMVM submvm43(
        .x(x[63:0]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[14])
    );
    
    subMVM submvm44(
        .x(x[63:0]),          
        .weight(weight),
        .clk,              
        .rst_n,                 
        .y(temp[15])
    );
endmodule
