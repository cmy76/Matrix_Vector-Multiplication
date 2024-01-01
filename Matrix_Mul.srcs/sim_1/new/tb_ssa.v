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
// ����ʱ�Ӻ������ź�
    reg [31:0] x1_tb;
    reg [31:0] x3_tb;
    reg [31:0] x5_tb;
    reg [31:0] x7_tb;
    reg [8:0] weight_tb;

    // ��������ź�
    wire [31:0] result_tb;

    // ʵ����������ģ��
    ssa uut(
        .x1(x1_tb),
        .x3(x3_tb),
        .x5(x5_tb),
        .x7(x7_tb),
        .weight(weight_tb),
        .result(result_tb)
    );

    // ��ʼ������ֵ
    initial begin
        x1_tb = 12;
        x3_tb = 36;
        x5_tb = 60;
        x7_tb = 84;
        weight_tb = 9'b101001110;
    end

    // ʹ��monitor���������
    // ��ÿ��x1_tb��x3_tb��x5_tb��
    // x7_tb����ֵʱ����
    // %m��ģ������%t��ʱ�䣬%d�����ֵ
    // $display("result = %d", result_tb);      // ���Ҫ���������̨��ȡ��ע��
    
    initial
    begin
        #10 x1_tb = 12;
        #10 x3_tb = 36;
        #10 x5_tb = 60;
        #10 x7_tb = 84;
        #10 weight_tb = 9'b101001110;
    end
endmodule
