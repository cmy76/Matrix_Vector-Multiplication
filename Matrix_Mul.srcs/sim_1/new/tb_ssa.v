`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/29 17:10:29
// Design Name: 
// Module Name: tb_ssa
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


module tb_ssa;
// 定义时钟和输入信号
    reg [31:0] x1_tb;
    reg [31:0] x3_tb;
    reg [31:0] x5_tb;
    reg [31:0] x7_tb;
    reg [8:0] weight_tb;

    // 定义输出信号
    wire [31:0] result_tb;

    // 实例化被测试模块
    ssa uut(
        .x1(x1_tb),
        .x3(x3_tb),
        .x5(x5_tb),
        .x7(x7_tb),
        .weight(weight_tb),
        .result(result_tb)
    );

    // 初始化输入值
    initial begin
        x1_tb = 12;
        x3_tb = 36;
        x5_tb = 60;
        x7_tb = 84;
        weight_tb = 9'b101001110;
    end

    // 使用monitor输出仿真结果
    // 在每次x1_tb，x3_tb，x5_tb或
    // x7_tb有新值时触发
    // %m：模块名，%t：时间，%d：输出值
    // $display("result = %d", result_tb);      // 如果要输出到控制台请取消注释
    
    initial
    begin
        #10 x1_tb = 12;
        #10 x3_tb = 36;
        #10 x5_tb = 60;
        #10 x7_tb = 84;
        #10 weight_tb = 9'b101001110;
    end
endmodule
