+++
date = '2024-12-17T21:17:37+08:00'
draft = true
title = '功能'
weight = 914
author = 'Liang'
location = '北京, 海淀'
tags = ['hugo', '网站']
categories = ['工具']
+++

## 功能
* [FontAwesome](https://fontawesome.com/icons) 图标

### 搜索配置
#### 搜索功能描述
搜索功能如下：
* 当前页匹配搜索项高亮展示
* 下拉展示其它页匹配结果
* 专用搜索页可通过特殊按钮访问
```
# hugo.toml
[params]
  disableSearch = true
  disableSearchIndex = true
  disableSearchPage = true
```
#### 搜索页配置
```
# hugo.toml
[params]
  searchIndexURL = 'omnisearchindex.js'
  searchPageURL = 'omnisearch'
```
* `searchIndexURL`：搜索下拉脚本`searchindex.js`
* `searchPageURL`：搜索页面`search/index.html`



### 布局配置
越少的自定义配置，将来更新Theme越容易。
* `layouts/partials/content.html`：页面主内容
* `layouts/partials/content-header.html`：内容头部；标签，标题等
* `layouts/partials/content-footer.html`：内容尾部；作者，修改时间，分类等
* `layouts/partials/custom-header.html`：自定义CSS，需要包含`style`元素
* `layouts/partials/custom-footer.html`：自定义JavaScript，需要包含`script`元素
* `layouts/partials/favicon.html`：网站图标
* `layouts/partials/heading.html`：页面标题（即`title`展示）
* `layouts/partials/heading-pre.html`：页面标题（`title`）前添加内容，考虑meta中使用`headingPre`实现
* `layouts/partials/heading-post.html`：页面标题（`title`）后添加内容，考虑meta中使用`headingPost`实现
* `layouts/partials/logo.html`：左上角导航之上的logo
* `layouts/partials/menu-pre.html`：菜单项内容之前，考虑meta中使用`menuPre`实现
* `layouts/partials/menu-post.html`：菜单项内容之后，考虑meta中使用`menuPost`实现
* `layouts/partials/menu-footer.html`：菜单尾部

#### 网站图标
* 名称、格式、路径：
    * 存放路径：`static/images/`
    * 图标名称和格式：
        * `favicon.svg`
        * `favicon.png`
        * `favicon.ico`
    * 明/暗主题图标
        * 明：`static/images/favicon-light.svg`
        * 暗：`static/images/favicon-dark.svg`
* 自定义配置
    * `layouts/partials/favicon.html` 添加一下配置
    ```html
    <link rel="icon" href="/images/favicon.png" type="image/png">
    ```
#### 网站标识
* 自定义配置
    * `layouts/partials/logo.html` 添加一下配置
    ```html
    <img alt="格微录" class="bg-white border lazy lightbox noshadow figure-image" loading="lazy" src="static/images/logo.png" style="height: auto; width: 30px;">
    ```
#### 菜单宽度
`layouts/partials/custom-header.html` 
```html
<style>
:root {
    --MENU-WIDTH-S: 14.375rem;
    --MENU-WIDTH-M: 14.375rem;
    --MENU-WIDTH-L: 18.75rem;
}
</style>
```
#### 菜单尾部
`layouts/partials/menu-footer.html`

#### 顶部工具
`layouts/partials/topbar/area/end.html` 

### 图像
#### 图像效果
默认效果
```toml
[imageEffects]
  border = false
  lazy = true
  lightbox = true
  shadow = false
```
`hugo.toml`配置
```toml
[params]
  [params.imageEffects]
    bg-white = true
    border = true
    lazy = false
```
`![Minion](https://octodex.github.com/images/minion.png)` -> `<img src="https://octodex.github.com/images/minion.png" loading="lazy" alt="Minion" class="bg-white border nolazy lightbox noshadow">`


### 其它
#### 文章
**文章修改人员和修改日期** 自动从git提交获取
* `hugo.toml`中添加`enableGitInfo = true`
* hugo命令添加参数`--enableGitInfo`

