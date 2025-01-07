+++
date = '2024-12-30T12:51:17+08:00'
draft = true
title = 'Wsl'
weight = 991
author = 'Liang'
location = '北京'
tags = [""]
categories = [""]
LastModifierDisplayName = 'Liang'
LastModifierEmail = 'icdb37@163.com'
menuPre = ''
headingPre = ''
+++

## 简介
WSL (Windows Subsystem for Linux) 执行linux版本虚拟机；

1. 在 Microsoft Store 安装linux系统版本；
2. 使用 wsl 安装linux系统版本：`wsl --install -d Ubuntu-24.04`

## 命令

在 PowerShell 或者 CMD 执行如下命令：
```sh
# wsl 版本配置
wsl --set-default-version 2
# 设置默认启动linux系统版本
wsl --set-default Ubuntu-24.04

# 查看已安装虚拟机
wsl -l
wsl --list --verbose

# 运行指定linux系统版本虚拟机
wsl -d Ubuntu-24.04
# 查看linux系统版本
lsb_release -a

# 卸载
wsl --unregister Ubuntu-20.04
```