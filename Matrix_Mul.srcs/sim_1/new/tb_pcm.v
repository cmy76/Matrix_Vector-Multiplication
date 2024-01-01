`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/29 14:42:35
// Design Name: 
// Module Name: tb_pcm
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


module tb_pcm;
reg [31:0] x;
  reg clk;
  reg rst_n;
  reg enable;

  wire [31:0] x1;
  wire [31:0] x3;
  wire [31:0] x5;
  wire [31:0] x7;

  pcm uut (
    .x(x),
    .clk(clk),
    .rst_n(rst_n),
    .x1(x1),
    .x3(x3),
    .x5(x5),
    .x7(x7)
  );

  initial begin
    // Initialize inputs
    x = 32'h0000_0001;
    clk = 0;
    rst_n = 1;
    enable = 1;

    // Apply reset
    rst_n = 0;
    #10;
    rst_n = 1;

    // Toggle clock
    forever #5 clk = ~clk;
  end
endmodule
