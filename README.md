# 矩阵向量乘法器
## PCM模块
### 预计算模块(PCM)预先计算一组公共子表达式(如1x, 3x, 5x等)
![image](https://github.com/cmy76/Matrix_Vector-Multiplication/assets/49270710/f8253ac5-a683-4d65-a8e7-97abd7b91927)
## SSA模块
### 选择与移位加模块(SSA)选择适当的公共子表达式，通过移位和加法操作生成最终的乘积结果。
![image](https://github.com/cmy76/Matrix_Vector-Multiplication/assets/49270710/08d942af-8a0d-4124-8e05-6fb477b8bc28)
## RMCM模块
### 将多个SSA与PCM模块综合起来，实现并行计算
![image](https://github.com/cmy76/Matrix_Vector-Multiplication/assets/49270710/366068b1-22dc-4f02-806c-9706c6d5d6fb)
## 本仓库尝试复现发表于ACM SIGGRAPH ASIA的论文《ICARUS: A Specialized Architecture for Neural Radiance Fields
Rendering》

