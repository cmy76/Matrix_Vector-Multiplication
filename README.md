# MVM
 一个矩阵向量乘法器的System Verilog实现
## 介绍
 本仓库是一个基于Verilog和System Verilog的矩阵乘法器实现。该乘法器采用了Reconfigurable Multiple Constant Multiplier (RMCM) 结构，包括三个常数乘法IP核、多个Select-Shift-Add (SSA) 模块以及一个Pre-Compute (PCM) 模块。

## 模块
### PCM模块
 PCM (Pre-Compute Module)模块使用三个常数乘法器IP核，预先计算了1x、3x、5x、7x的结果。这些计算结果将用于后续的矩阵乘法操作。
 ![image](https://github.com/cmy76/Matrix_Vector-Multiplication/blob/main/RMCM.png)
### SSA模块
 SSA(Select-Shift Add)模块接受PCM模块的计算结果和权重作为输入。权重是一个9位的数据，其中第一个位为符号位，其余8位被拆分为高4位和低4位，分别用于计算移位。例如，如果权重为-78（二进制表示为1_0100_1110），则将1x的高八位左移6位，7x左移1位，然后相加后拼接符号位即可得到-78x。
 ![image](https://github.com/cmy76/Matrix_Vector-Multiplication/blob/main/SSA.png)
### RMCM 模块
一个RMCM模块包含一个PCM和64个SSA。这样的结构可以用于计算阶数为64的方阵和一个长度为64的向量的乘法。通过适当的扩展，可以实现对256阶矩阵和长为64的向量的乘法。
 ![image](https://github.com/cmy76/Matrix_Vector-Multiplication/blob/main/RMCM1.png)
### MVM顶层文件
仍未完全实现
 ![image](https://github.com/cmy76/Matrix_Vector-Multiplication/blob/main/MVM.png)
## 说明
本项目参考了论文《ICARUS:Specialized Architecture for Neural Radiance Fields Rendering》中的乘法器实现
