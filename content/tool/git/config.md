+++
date = '2024-12-24T21:09:55+08:00'
draft = false
title = '配置'
weight = 921
author = 'Liang'
location = '北京, 海淀'
tags = ["git"]
categories = ["开发", "工具"]
LastModifierDisplayName = 'Liang'
LastModifierEmail = 'icdb37@163.com'
menuPre = "<i class='fa-fw fas fa-gears'></i> "
headingPre = ''
+++

## 配置

**系统配置** 系统配置文件：`/etc/gitconfig`
```sh
git config --system user.name icdb37
git config --system user.name icdb37.163.com
git config --system color.ui auto
```

**全局配置** 用户配置文件：`~/.gitconfig`
```sh
git config --global user.name icdb37
git config --global user.name icdb37.163.com
git config --global color.ui auto
# 设置命名别名
git config --global alias.st status
```

**项目配置** 项目配置文件：`.git/config`
```sh
git config --local user.name icdb37
git config --local user.name icdb37.163.com
git config --local color.ui auto
git config --local http.sslVerify false
# 删除配置
git config --local --unset user.name
# 配置列表
git config --list
# 配置查询
git config --get user.name
# git 访问 https://demo.com 禁止ssl校验
git config --global http."https://demo.com/".sslVerify false
git config --global http."https://demo.com/".sslCAInfo /va/ca/demo/ca.crt
```

**配置文件**
```
# 用户信息
[user]
    email = icdb37.163.com
    name = icdb37

[credential]
    helper = store

# 别名，例如：git status -> git st
[alias]
    st = status
    co = checkout
    br = branch
    ci = commit

# 终端git命令输出添加颜色
[color]
    ui = true
    interactive = true

[core]
    editor = vim
    autocrlf = input

[credential "https://git.qingteng.cn"]
    provider = gitlab

# ssh转换为https
[url "git@git.qingteng.cn:"]
    insteadOf = https://git.qingteng.cn/

[http]
    sslVerify = false # 禁用ssl验证
[http "https://demo.com/"]
    sslVerify = false

[include]
    path = /etc/git/share/config # 导入文件中的配置
```

