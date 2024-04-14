`timescale 1ns/1ps

module RMCM_tb;

  reg [8:0] weight[63:0];
  reg [31:0] x;
  reg clk;
  reg rst_n;
  wire [31:0] partial_p[63:0];

  // Instantiate the RMCM module
  RMCM uut (
    .weight(weight),
    .x(x),
    .clk(clk),
    .rst_n(rst_n),
    .partial_p(partial_p)
  );

  // Clock generation
  initial begin
    clk = 1;
    forever #5 clk = ~clk;
    x = x + 1;
  end

  // Initial block
  initial begin
    // Initialize inputs
    rst_n = 0;
    for (int i = 0; i < 64; i = i + 1) begin
      weight[i] = i+1; // You can modify this initialization as needed
    end
    x=1;
    // Apply reset
    #8 rst_n = 1;

    // Wait for a few clock cycles
    #50;
  end
  
  always #10 begin
    x = x+1;
  end

endmodule
