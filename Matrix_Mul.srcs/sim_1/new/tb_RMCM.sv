`timescale 1ns/1ps

module RMCM_tb;

  reg [31:0] weight[63:0];
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
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Initial block
  initial begin
    // Initialize inputs
    rst_n = 1;
    x = 32'd12;
    for (int i = 0; i < 64; i = i + 1) begin
      weight[i] = i + 1; // You can modify this initialization as needed
    end

    // Apply reset
    #10 rst_n = 0;
    #10 rst_n = 1;

    // Wait for a few clock cycles
    #50;

    // Display results
  end

endmodule
