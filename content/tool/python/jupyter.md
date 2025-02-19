+++
date = '2024-12-28T20:37:43+08:00'
draft = false
title = 'Jupyter'
weight = 972
author = 'Liang'
location = '北京'
tags = [""]
categories = [""]
LastModifierDisplayName = 'Liang'
LastModifierEmail = 'icdb37@163.com'
menuPre = ''
headingPre = ''
+++


## 基本使用
Jupyter 是一个开源的交互式计算环境，支持多种编程语言（特别是 Python），广泛用于数据科学、机器学习、教学等领域。

安装：`pip install jupyter` `conda install jupyter-language-pack-zh-CN` `conda install -c conda-forge jupyter_contrib_nbextensions`
使用：
* 启动 `jupyter notebook` 通过浏览器访问（需要token）
    * `jupyter notebook --notebook-dir=/jupyter/ai/lm-d2l --allow-root` 指定访问数据目录，允许root用户启动
    * `jupyter notebook password` 设置密码
    * `jupyter notebook list` 查看运行服务
    * `http://localhost:8888/shutdown` 关闭服务
    * `jupyter lab` 下一代交换界面
        * `jupyter labextension install`
        * `jupyter labextension enable <extension_name>`
        * `jupyter labextension disable <extension_name>`
        * `jupyter labextension install @jupyterlab/toc`
        * Plotly 图表： `jupyter labextension install @jupyterlab/plotly-extension`
        * 交互部件：`jupyter labextension install @jupyter-widgets/jupyterlab-manager`
        * 集成 Kite AI 代码补全服务：`jupyter labextension install @jupyterlab/kite`
        * 代码格式化工具：
            ```sh
            pip install jupyterlab_code_formatter
            jupyter serverextension enable --py jupyterlab_code_formatter
            jupyter labextension install @ryantam626/jupyterlab_code_formatter
            ```
* 扩展：
    * `conda install -c conda-forge jupyter_contrib_nbextensions` 安装插件
    * `jupyter contrib nbextension install --user` 安装配置工具
    * `jupyter nbextension enable <extension_name>` 启用插件
    * `jupyter nbextension disable <extension_name>` 禁用插件
    * 自动生成目录：`jupyter nbextension enable toc2/main`
    * 格式化代码：`jupyter nbextension enable code_prettify/code_prettify`
        * 依赖：`pip install yapf`
    * 代码补全：`jupyter nbextension enable hinterland/hinterland`
    * 标题下内容折叠/展开：`jupyter nbextension enable collapsible_headings/main`
    * 显示单元格执行时间：`jupyter nbextension enable execute_time/ExecuteTime`
    * 高亮选中单词：`jupyter nbextension enable highlight_selected_word/main`
    * 错误拼写检查：`jupyter nbextension enable spellchecker/main`
    * 
* 导出：
    * `jupyter nbconvert --to [html | latex | markdown | pdf | python | ...] *.ipynb` 

```sh
pip install jupyterlab_code_formatter
pip install yapf

jupyter nbextension enable toc2/main
jupyter nbextension enable code_prettify/code_prettify
jupyter nbextension enable hinterland/hinterland
jupyter nbextension enable collapsible_headings/main
jupyter nbextension enable execute_time/ExecuteTime
jupyter nbextension enable highlight_selected_word/main
```