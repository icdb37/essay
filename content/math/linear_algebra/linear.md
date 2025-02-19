+++
date = '2025-01-17T22:05:00+08:00'
draft = false
title = '线性方程'
weight = 911
author = 'Liang'
location = '北京,昌平'
tags = ["数学"]
categories = ["数学"]
LastModifierDisplayName = 'Liang'
LastModifierEmail = 'icdb37@163.com'
menuPre = ''
headingPre = ''
+++

## 名词
a system of linear equation

## 解线性方程
两个线性方程组具有相同的解时，即这两个方程相等。


线性方程变换不影响解：
* 互换列
* 数乘（非零）
* 行相加

解方法：
* 消元法
* 

线性方程组对应系数矩阵；
$$
a_{11}x_1 + a_{12} + \cdots + a_{1n}x_n = b_1 \\
a_{21}x_1 + a_{22} + \cdots + a_{2n}x_n = b_2 \\
\vdots \\
a_{m1}x_1 + a_{m2} + \cdots + a_{mn}x_n = b_m
$$

$$
\mathbf{A} = 
\begin{bmatrix}
a_{11} & a_{12} & \cdots & a_{1n} \\
a_{21} & a_{22} & \cdots & a_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
a_{m1} & a_{m2} & \cdots & a_{mn} \\
\end{bmatrix}
\mathbf{x} = 
\begin{bmatrix}
x_1 \\
x_2 \\
\vdots \\
x_m
\end{bmatrix}
\mathbf{b} = 
\begin{bmatrix}
b_1 \\
b_2 \\
\vdots \\
b_m
\end{bmatrix}
$$