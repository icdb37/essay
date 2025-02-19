+++
date = '2025-01-16T23:10:19+08:00'
draft = false
title = '向量'
weight = 910
author = 'Liang'
location = '北京,昌平'
tags = ["数学"]
categories = ["数学"]
LastModifierDisplayName = 'Liang'
LastModifierEmail = 'icdb37@163.com'
menuPre = ''
headingPre = ''
+++


## 线性相关性

linear independent（线性无关）：$ \forall(x_1,x_2,\cdots,x_n)\ only\ all\ is \ zero \quad ->\quad  x_1a_1 + x_2a_2 + \cdots + x_na_n = 0$
* 如果存在解时，将会存在唯一解；


linear dependent（线性相关）：$ \exist(x_1,x_2,\cdots,x_n)\ not\  all\ zero\quad ->\quad  x_1a_1 + x_2a_2 + \cdots + x_na_n = 0$
* 存在一个向量可以用其余向量线性表示；$x_i \ne 0\quad ->\quad  a_i = -(\frac{x_1}{x_i})a_1 - \cdots -(\frac{x_n}{x_i})a_n$
* 如果存在解时，将会存在无穷解；


homogeneous linear equations ：齐次线性方程 $\mathbf{A}x = 0$
* $x_1 = 0,x_2 = 0,\cdots,x_n=0$ 存在零解
* $\mathbf{A}$ 是线性相关的话，存在无穷解；
