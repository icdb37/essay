+++
date = '2024-12-17T20:10:00+08:00'
draft = false
title = '配置'
menuPre = "<i class='fa-fw fas fa-gears'></i> "
tags = ["hugo"]
categories = ["工具"]
weight = 912
+++

## 服务配置
即`hugo.toml`文件描述。
[参考](https://mcshelby.github.io/hugo-theme-relearn/configuration/reference/index.html)

### 字段描述
* `baseURL`：服务地址
    * `baseURL = https://icdb37.cn`：发布content下所有内容
    * `baseURL = https://icdb37.cn/blog` + `relativeURLs = false`：发布content/tool下所有内容
    * `baseURL = /` + `relativeURLs = true`：私有部署
* `[outputs]`：支持`html`,`rss`,`print`等输出格式
    ```toml
    [outputs]
        home = ['html', 'rss', 'print']
        page = ['html', 'rss', 'print']
        section = ['html', 'rss', 'print']
    ```
* `[params]`：参数
    * `disableGeneratorVersion`：页面禁止添加Theme版本号
    * `disableHugoGeneratorInject`：页面禁止添加hugo版本号
    * `disableAssetsBusting`：禁止每次构建Theme都创建唯一ID
    * `disableRandomIds`：禁止展开器、标注和选项卡每次构建生成唯一ID
    * `minify`：构建期间将进一步缩小Theme数据
    * `disableLandingPageButton`：左边导航不展示`Home`按键
    * `landingPageName`：设置`Home`图标和名称；例如：`landingPageName = '<i class="fa-fw fas fa-home"></i> Home'`
    * `showVisitedLinks`：已读网页标记
    * 搜索配置
        * `disableSearch`：页内数据搜索
        * `disableSearchIndex`：索引数据搜索
        * `disableSearchPage`：专用搜索页

### 网站设计

**目录结构**

项目配置将会覆盖主题配置，例如：项目中 `layouts/partials/heading.html` 将会覆盖 `themes/hugo-theme-relearn/layouts/partials/heading.html`。**注意**：使用本项目自定配置去覆盖引用主题中的配置而不是修改主题源码。

**多语言**

* 按语言文件组织
    * `hugo.toml`添加语言配置
        ```toml
        defaultContentLanguage = 'en'
        [params]
        # 文章语言，搜索功能
        additionalContentLanguage = ['en']
        # 关闭语言切换
        disableLanguageSwitchingButton = true
        [languages]
            [languages.en]
                languageCode = 'en'
                languageName = 'English'
                title = 'My Website'
                weight = 1

            [languages.pir]
                languageCode = 'art-x-pir'
                languageDirection = 'rtl'
                languageName = 'Pirrratish'
                title = 'Arrr, my Website'
                weight = 2
        ```
        * 文件名格式 {filename}.{lang}.md
            ```txt
            ├── content
            │   ├── first-chapter
            │   │   ├── first-page
            |   |   |   ├── _index.en.md
            |   |   |   └── _index.pir.md
            │   │   ├── third-page.en.md
            │   │   └── third-page.pir.md
            │   ├── _index.en.md
            │   └── _index.pir.md
            ├── themes
            │   └── hugo-theme-relearn
            │       └── ...
            └── hugo.toml
            ```
* 按语言目录组织
    * `hugo.toml`添加语言配置
        ```toml
        [params]
        # 文章语言，搜索功能
        additionalContentLanguage = ['en']
        # 关闭语言切换
        disableLanguageSwitchingButton = true
        [languages]
            [languages.en]
                contentDir = 'content/en'
                languageName = 'English'
                weight = 10
            [languages.fr]
                contentDir = 'content/fr'
                languageName = 'Français'
                weight = 20
        ```
    * 文件命名：`content/en/about.md` 和 `content/fr/about.md`




## 文章元数据
即文章头部`+++`之间数据描述。

### 基本字段
* `title`：【字符串】文章标题
    * `linkTitle` 导航菜单中页面名，如果未指定使用`title`
* `date`：【日期】文章发布时间
* `lastmod`：【日期】最后修改时间
* `draft`,`future`,`expired`：【布尔】
    * `draft`：文章草稿状态，默认创建文件此值为`true`。默认hugo不会发布`draft`值为`true`的文章，如果需要发布可以设置参数：`--buildDrafts`或`-D`。
    * `future`：如果文章的 `date` 晚于当前时间，则 `future` 默认为 `true` 。为 `true` 时文章不会被发布，如果需要发布可以通过参数：`--buildFuture`或`-F`。可以通过字段`publishDate`指定文章发布时间（当前时间小于`publishDate`或`date`文章为未来发布状态）。
    * `expired`：文章过期状态，为`true`时文章不会被发布，如果需要发布可以通过参数：`--buildExpired`或`-E`。可以通过字段`expiryDate`指定文章过期时间（当前时间大于`expiryDate`文章为过期发布状态）。
* `description`：【字符串】文章摘要（用于索引）
* `keywords`：【数组】文章关键字（用于索引）
* `tags`：【数组】文章标签
* `categories`：【数组】文章分类
* `weight`：【数值】用于排序，数值越小排在前面
* `slug`：自定义文章的 URL 路径部分，例如：`slug: "demo"`
* `url`：自定义文章的完整 URL，例如：`url: "/posts/demo"`
* `hidden`：隐藏页，导航菜单不展示
* `[_build]：构建方式
    不渲染当前页
    ```
    [_build]
    render = "never"`
    ```

### 模板和布局
* `layout`：文章使用的布局模板
* `type`：文章的内容类型，通常与站点配置中的 `outputs` 设置配合使用。
* `section`：文章所属的章节（section），通常与站点配置中的 `menu` 设置配合使用。
* 多语言
    ```toml
    title_en: "Demo"
    title_zh: "示例"
    description_en: "Demo"
    description_zh: "示例"
    ```
### 自定义字段
* `author`：作者
* `location`：地点
* `image`：文章的封面图片路径
* `readingTime`：预计阅读时间


### 其它字段
* `disableInlineCopyToClipBoard`：行内代码复制按钮，默认为`true`
* `disableHoverBlockCopyToClipBoard`：代码块复制按钮，默认为`true`
