`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/30 11:32:45
// Design Name: 
// Module Name: subMVM_tb
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


`timescale 1ns/1ps

module subMVM_tb;

  reg [31:0] x[63:0];
  reg [8:0] weight[63:0][63:0];
  reg clk;
  reg rst_n;
  wire [31:0] y[63:0];
  wire          valid;

  // Instantiate the subMVM module
  subMVM uut (
    .x(x),
    .weight(weight),
    .clk(clk),
    .rst_n(rst_n),
    .y(y),
    .valid(valid)
  );

  // Clock generation
  initial begin
    clk = 1;
    forever #5 clk = ~clk;
  end

  // Initial block
  initial begin
    // Initialize inputs
    rst_n = 1;
    for (int i = 0; i < 64; i = i + 1) begin
      x[i] = i * 1; // Modify this initialization as needed
      for (int j = 0; j < 64; j = j + 1) begin
        weight[i][j] = i + j; // Modify this initialization as needed
      end
    end

    // Apply reset
    #10 rst_n = 0;
    #10 rst_n = 1;

    // Wait for a few clock cycles

    // End simulation
    $finish;
  end

endmodule

