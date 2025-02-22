+++
date = '2024-12-17T15:38:51+08:00'
draft = false
title = '概述'
menuPre = "<i class='fa-solid fa-bars'></i> "
tags = ["hugo"]
categories = ["工具"]
weight = 911
+++


## 参考文档
* [hugo仓库](https://github.com/gohugoio/hugo)
* [hugo文档](https://gohugo.io/)

## 快速开始

1. 安装`hugo`工具
    * 系统包管理器安装：`sudo apt install hugo`
    * `go`安装：`CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@latest`
    * 下载二进制：`wget https://github.com/gohugoio/hugo/releases/download/v0.139.4/hugo_0.139.4_linux-amd64.tar.gz`
2. 创建网站：`hugo new site essay`
3. 安装主题：`themes/huto-theme-relearn`
    * 下载源码：`https://github.com/McShelby/hugo-theme-relearn/archive/main.zip`
    * hugo方式：
        * `hugo mod init essay`
        * `hugo.toml`文件末尾添加如下配置：
        ```toml
        [module]
        [[module.imports]]
            path = 'github.com/McShelby/hugo-theme-relearn'
        ```
        * `hugo mod get github.com/elmar-hillert/relearn-hugo-theme@latest`
    * git方式
        * `git init`
        * `git submodule add --depth 1 https://github.com/McShelby/hugo-theme-relearn.git themes/hugo-theme-relearn`
4. 主页
    * `hugo new -k home _index.md` 将创建`content/_index.md`文件
    * `hugo new posts/code/go/_index.md` 创建`go`章节索引文件

## 常用命令

#### `hugo mod`
* `hugo mod init` 初始当前目录为一个Hugo模块（类似：`go mod init`）；例如：`hugo mod init essay`
* `hugo mod tidy` 整理 go.mod 文件，移除未使用的模块并添加缺失的模块。
* `hugo mod vendor` 将项目依赖的模块复制到 vendor 目录中。
* `hugo mod graph` 生成依赖图，以文本形式展示模块之间的依赖关系。
* `hugo mod get` 添加一个新的依赖到项目，例如：`hugo mod get github.com/elmar-hillert/relearn-hugo-theme@latest`
* `hugo mode why` 解释为什么某个模块被包含在项目的依赖中。

### `hugo new`
根据`archetypes/`中的模板生成创建文件；
* `hugo new [SECTION]/[FILENAME].[EXTENSION]`
    * `[SECTION]`章节
    * `[FILENAME]`文件
    * `[EXTENSION]`扩展名；`.md`或者`.html`
参数：
* `-k`,`--kind`：内容的种类；
* `--create`：如果指定的章节不存在，则自动创建该章节；
* `--force`：强制创建文件，即使目标文件已经存在；
* `--editor`：在创建新文件后立即打开指定的编辑器；例如：`hugo new --editor code posts/xxx.md`


## 其它
### 插件
#### `Front Matter CMS`

### 部署
* hugo启动服务 `hugo server -D -p 80 --bind 0.0.0.0`
* python启动服务 `cd public; python -m http.server 80`
* nodejs启动服务 `http-server -p 80` ，需要安装 `npm install -g http-server`