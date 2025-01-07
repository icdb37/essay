+++
date = '2024-12-20T12:00:00+08:00'
draft = false
title = 'Markdown'
weight = 918
author = 'Liang'
location = '北京, 海淀'
tags = ["hugo"]
categories = ["工具"]
menuPre = "<i class='fa-fw fab fa-markdown'></i> "
+++

## 工具
标准： [CommonMark](https://commonmark.org/help)

扩展：
* [GitHub Flavored Markdown](https://github.github.com/gfm/)
* [PHP Markdown](https://michelf.ca/projects/php-markdown/extra/)
* [Hugo Extra Extension ](https://github.com/gohugoio/hugo-goldmark-extensions?tab=readme-ov-file#extras-extension)
* [Relearn](https://mcshelby.github.io/hugo-theme-relearn/authoring/markdown/index.html)

## 语法

### 基本用法
* **段落**：第一个字符不是特殊字符的字符串被视为段落，不同段落之间使用空白行进行分隔；
* **标题**：依`#`开头的文本按标题处理；n个`#`表示n级标题；
    * `<h1></h1>` <-> `#`
    * `<h2></h2>` <-> `##`
    * `<h3></h3>` <-> `###`
    * `<h4></h4>` <-> `####`
* **水平线**：`---`；
* **引用**：依`>`开头的文本视为引用块；嵌套`>>`饮用中的引用；
* **粗体**：`**文本加粗**`：**文本加粗**
* **斜体**：`_文本倾斜_`：_文本倾斜_
* **删除线**：`~~删除线~~`：~~删除线~~
* **列表**：
    * 无效列表：使用`-`,`+`,`*`作为起始
    * 有效列表：使用`1.`作为起始
        1. 第一行（有序）
        2. 第二行（有序
    ```
    1. 第一行（有序）
    2. 第二行（有序
    ```
* **复选列表**：使用`- [ ] 未完成` 和 `- [x] 已完成`
    - [ ] 未完成
    - [x] 已完成
    ```
    - [ ] 未完成
    - [x] 已完成
    ```
* **代码块**：
    * 行内代码使用：`` ` ``
    * 代码块使用：`` ``` ``
    * \`转义时使用连续两个 \`\`
* **表格**：
    |姓名|年龄|备注|
    |-:|:-:|:-|
    |小明|30|无|
    ```
    |姓名|年龄|
    |-|-|
    |小明|30|
    ```
    * `|-:|`：右对齐
    * `|:-:|`：居中
    * `|:-|`：左对齐
* **链接**：
    * 自动识别链接：https://icdb37.cn
    * 基本链接：`[我的博客](https://icdb37.cn)` [我的博客](https://icdb37.cn)
    * 提示链接：`[博客](https://icdb37.cn "首页")` [博客](https://icdb37.cn "首页")
* **脚注**：  
    参考文献索引方式 aaa[^1]
    [^1]: 文件尾部《aaa》  

    参考文献编号方式 aaa[^refXxx]  
    [^refXxx]: 文件尾部《Xxx》
    ```
    参考文献索引方式 aaa[^1]
    [^1]: 文件尾部《aaa》  

    参考文献编号方式 aaa[^refXxx]  
    [^refXxx]: 文件尾部《Xxx》
    ```
* **图像**：
    * `![Spock](https://octodex.github.com/images/spocktocat.png)`
    ![Spock](https://himg.bdimg.com/sys/portraitn/item/public.1.e7d11772.t3c66DK50ytbDrLhDniLEg) 
    * `![Picard](https://octodex.github.com/images/jean-luc-picat.jpg "Jean Luc Picard")` 具有提示名
    ![Picard](https://himg.bdimg.com/sys/portraitn/item/public.1.e7d11772.t3c66DK50ytbDrLhDniLEg "Jean Luc Picard")
    * `![Minion](https://octodex.github.com/images/minion.png?height=50px&width=40vw)` 调整图片大小
        * 设置图片大小：`?height=50px&width=40vw`
        * 图片添加css：`?classes=shadow,border,left` 支持自定义值和预定义值
            * 预定义：`?classes=shadow`,`?classes=border`,`?classes=left`,`?classes=right`
            * 预定义：`?classes=inline`
        * 禁止点击链接`?lightbox=false`
        * 默认图片参数：`?border=false&lazy=true&&lightbox=true&shadow=false` 可以通过`hugo.toml`设置默认值
    ![Minion](https://octodex.github.com/images/minion.png?height=50px&width=40vw)

* **文本颜色**：（某些可能不支持）
    * <font color=DeepSkyBlue>蓝色：</font> `<font color=DeepSkyBlue>蓝色</font>`
    * <font color=OrangeRed>橙色：</font> `<font color=OrangeRed>橙色</font>`

### 扩展用法
#### GitHub告警
* 注意：
    > [!CAUTION]
    > Advises about risks or negative outcomes of certain actions.
    ```
    > [!CAUTION]
    > Advises about risks or negative outcomes of certain actions.
    ```
* 重要：
    > [!IMPORTANT]
    > Key information users need to know to achieve their goal.
    ```
    > [!IMPORTANT]
    > Key information users need to know to achieve their goal.
    ```
* 信息：
    > [!INFO]
    > Information that users <ins>_might_</ins> find interesting.
    ```
    > [!INFO]
    > Information that users <ins>_might_</ins> find interesting.
    ```
* 注释：
    > [!NOTE]
    > Useful information that users should know, even when skimming content.
    ```
    > [!NOTE]
    > Useful information that users should know, even when skimming content.
    ```
* 提示：
    > [!TIP]
    > Helpful advice for doing things better or more easily.
    ```
    > [!TIP]
    > Helpful advice for doing things better or more easily.
    ```
* 警告：
    > [!WARNING]
    > Urgent info that needs immediate user attention to avoid problems.
    ```
    > [!WARNING]
    > Urgent info that needs immediate user attention to avoid problems.
    ```
#### Obsidian标注
* 提示：
    > [!tip] 友情提示
    > 内容不可折叠
    ```
    > [!tip] 友情提示
    > 内容不可折叠
    ```
    >[!tip]单行提示
    ```
    >[!tip]单行提示
    ```
* 注释：
    >[!note]- 默认折叠注释
    >注释内容
    ```
    >[!note]- 默认折叠注释
    >注释内容
    ```
    >[!note]+ 默认展开注释
    >这里是注释内容
    ```
    >[!note]+ 默认展开注释
    >这里是注释内容
    ```

### 实践操作
