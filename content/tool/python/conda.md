+++
date = '2024-12-28T19:59:30+08:00'
draft = true
title = 'Conda'
weight = 971
author = 'Liang'
location = '北京'
tags = [""]
categories = [""]
LastModifierDisplayName = 'Liang'
LastModifierEmail = 'icdb37@163.com'
menuPre = ''
headingPre = ''
+++


## conda
### 简介

Conda是一个跨平台的、多语言（主要python）的二进制包和环境管理工具。它允许用户安装不同版本的软件包及其依赖关系，并且可以在不同的环境之间轻松切换，而不会影响系统的其他部分。
[下载](https://www.anaconda.com/download/success)
[下载](https://docs.conda.io/projects/conda/en/stable/)
[下载（清华开源镜像）](https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/)


### 命令

```sh
# 初始化
conda init

# 新建环境
conda create --name lm-d2l python=3.13 -y

# 包安装/更新/卸载
conda install <package_name>
# conda-forge 是一个社区维护的通道，提供了大量的额外包
conda install -c conda-forge <package_name>
conda install package_name=1.0.0
conda update --all
conda update <package_name>
conda remove <package_name>

# 包列表
conda list
conda list <package_name>
conda search <package_name>

# 环境项目
conda create --name demo
conda activate demo
conda env list
codna info --envs
onda env remove --name demo

# 配置
conda env export > demo.yml
conda env create -f demo.yml
conda config --show
conda clean --all
conda config --show
conda config --show channels

conda config --remove-key channels
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
```

## mamba

Mamba 是 conda 的一个快速替代品，它是一个用 C++ 编写的包管理器，旨在提供与 conda 兼容的接口，但显著加快了依赖解析和环境创建的速度。

`conda install mamba -n base -c conda-forge`
[下载](https://mamba.readthedocs.io/en/latest/installation/micromamba-installation.html)
