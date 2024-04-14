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

// 用加法器将Temp的值加到row上
module MVM(
    input           [8:0]   weight11[63:0][63:0],
    input           [8:0]   weight12[63:0][63:0],
    input           [8:0]   weight13[63:0][63:0],
    input           [8:0]   weight14[63:0][63:0],
    
    input           [8:0]   weight21[63:0][63:0],
    input           [8:0]   weight22[63:0][63:0],
    input           [8:0]   weight23[63:0][63:0],
    input           [8:0]   weight24[63:0][63:0],
    
    input           [8:0]   weight31[63:0][63:0],
    input           [8:0]   weight32[63:0][63:0],
    input           [8:0]   weight33[63:0][63:0],
    input           [8:0]   weight34[63:0][63:0],
    
    input           [8:0]   weight41[63:0][63:0],
    input           [8:0]   weight42[63:0][63:0],
    input           [8:0]   weight43[63:0][63:0],
    input           [8:0]   weight44[63:0][63:0],
    
    input           [31:0]  x[255:0],
    
    input                   clk,
    input                   rst_n,
    
    output          [31:0]  y[255:0]
    );
    
    wire            [31:0]  temp[15:0][63:0];
    
    wire            [31:0]  row0[63:0];
    wire            [31:0]  row1[63:0];
    wire            [31:0]  row2[63:0];
    wire            [31:0]  row3[63:0];
    
    wire            [15:0]  valid;
    
    assign y = {row0, row1, row2, row3};
    
    subMVM submvm11(
        .x(x[255:192]),          
        .weight(weight11),
        .clk,              
        .rst_n,                 
        .y(temp[0]),
        .valid(valid[0])
    );
    
    subMVM submvm12(
        .x(x[255:192]),          
        .weight(weight12),
        .clk,              
        .rst_n,                 
        .y(temp[1]),
        .valid(valid[1])
    );
    
    subMVM submvm13(
        .x(x[255:192]),          
        .weight(weight13),
        .clk,              
        .rst_n,                 
        .y(temp[2]),
        .valid(valid[2])
    );
    
    subMVM submvm14(
        .x(x[255:192]),          
        .weight(weight14),
        .clk,              
        .rst_n,                 
        .y(temp[3]),
        .valid(valid[3])
    );
    
    subMVM submvm21(
        .x(x[191:128]),          
        .weight(weight21),
        .clk,              
        .rst_n,                 
        .y(temp[4]),
        .valid(valid[4])
    );
    
    subMVM submvm22(
        .x(x[191:128]),          
        .weight(weight22),
        .clk,              
        .rst_n,                 
        .y(temp[5]),
        .valid(valid[5])
    );
    
    subMVM submvm23(
        .x(x[191:128]),          
        .weight(weight23),
        .clk,              
        .rst_n,                 
        .y(temp[6]),
        .valid(valid[6])
    );
    
    subMVM submvm24(
        .x(x[191:128]),          
        .weight(weight24),
        .clk,              
        .rst_n,                 
        .y(temp[7]),
        .valid(valid[7])
    );
    
    subMVM submvm31(
        .x(x[127:64]),          
        .weight(weight31),
        .clk,              
        .rst_n,                 
        .y(temp[8]),
        .valid(valid[8])
    );
    
    subMVM submvm32(
        .x(x[127:64]),          
        .weight(weight32),
        .clk,              
        .rst_n,                 
        .y(temp[9]),
        .valid(valid[9])
    );
    
    subMVM submvm33(
        .x(x[127:64]),          
        .weight(weight33),
        .clk,              
        .rst_n,                 
        .y(temp[10]),
        .valid(valid[10])
    );
    
    subMVM submvm34(
        .x(x[127:64]),          
        .weight(weight34),
        .clk,              
        .rst_n,                 
        .y(temp[11]),
        .valid(valid[11])
    );
    
    subMVM submvm41(
        .x(x[63:0]),          
        .weight(weight41),
        .clk,              
        .rst_n,                 
        .y(temp[12]),
        .valid(valid[12])
    );
    
    subMVM submvm42(
        .x(x[63:0]),          
        .weight(weight42),
        .clk,              
        .rst_n,                 
        .y(temp[13]),
        .valid(valid[13])
    );
    
    subMVM submvm43(
        .x(x[63:0]),          
        .weight(weight43),
        .clk,              
        .rst_n,                 
        .y(temp[14]),
        .valid(valid[14])
    );
    
    subMVM submvm44(
        .x(x[63:0]),          
        .weight(weight44),
        .clk,              
        .rst_n,                 
        .y(temp[15]),
        .valid(valid[15])
    );
endmodule
