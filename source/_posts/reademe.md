---
title: reademe
date: 2026-04-07 13:49:55
tags:
---
# 我的博客

一个基于 [Hexo](https://hexo.io/) + [Butterfly](https://github.com/jerryc127/hexo-theme-butterfly) 主题的个人博客，部署在 [GitHub Pages](https://pages.github.com/) 上。

## 功能特性

- 📝 文章发布与管理
- 🏷️ 标签与分类
- 🔍 本地搜索
- 📱 响应式设计
- 🌗 暗黑模式
- 💬 评论区支持
- 🔗 友链管理
- 📊 网站统计

## 快速开始

### 环境要求

- Node.js >= 14
- Git

### 本地运行

```bash
# 安装依赖
npm install

# 启动本地服务器
npm run server
# 或
hexo server

# 访问 http://localhost:4000
```

### 创建新文章

```bash
# 创建新文章
hexo new "文章标题"

# 或使用 npm script
npm run new "文章标题"
```

### 生成静态文件

```bash
# 生成静态文件
hexo generate
# 或
hexo g
```

### 部署到 GitHub Pages

1. 首先需要修改配置文件：
   - 编辑 `_config.yml`，将 `url` 和 `deploy.repo` 中的 `username` 替换为你的 GitHub 用户名
   - 编辑 `_config.butterfly.yml`，修改个人信息和网站配置

2. 确保你已创建 GitHub 仓库：
   - 仓库名称：`username.github.io`（username 替换为你的用户名）
   - 仓库设置为 Public

3. 部署：

```bash
# 生成并部署
hexo deploy
# 或
npm run deploy
```

4. 访问你的博客：`https://username.github.io`

## 项目结构

```
.
├── _config.butterfly.yml   # Butterfly 主题配置
├── _config.yml             # Hexo 主配置
├── node_modules/           # 依赖包
├── package.json            # 项目依赖
├── scaffolds/              # 模板文件夹
├── source/                 # 源文件
│   ├── _posts/            # 文章 Markdown 文件
│   ├── _data/             # 自定义配置
│   ├── about/             # 关于页面
│   ├── categories/        # 分类页面
│   ├── tags/              # 标签页面
│   └── img/               # 图片资源
├── themes/                # 主题文件夹
│   └── butterfly/         # Butterfly 主题
└── public/                # 生成的静态文件（部署时上传）
```

## 配置说明

### 修改网站信息

编辑 `_config.yml`：

```yaml
# Site
title: 你的博客标题
subtitle: 副标题
description: 网站描述
author: 你的名字
language: zh-CN
timezone: Asia/Shanghai
```

### 主题配置

编辑 `_config.butterfly.yml` 来自定义主题。

### 添加图片

将图片放在 `source/img/` 目录下，然后在文章中引用：

```markdown
![图片描述](/img/图片名.png)
```

## 常用命令

```bash
# 新建文章
hexo new "标题"

# 新建页面
hexo new page "页面名"

# 清除缓存
hexo clean

# 生成静态文件
hexo generate

# 启动本地服务器
hexo server

# 部署
hexo deploy

# 组合命令（清除缓存 -> 生成 -> 部署）
hexo clean && hexo generate && hexo deploy
```

## 自定义配置

### 修改 GitHub 用户名

1. 编辑 `_config.yml`：
   - `url: https://your-username.github.io`
   - `deploy.repo: https://github.com/your-username/your-username.github.io.git`

2. 编辑 `_config.butterfly.yml`：
   - `card_author.button.link: https://github.com/your-username`

### 添加头像

1. 将头像图片放在 `source/img/` 目录
2. 编辑 `_config.butterfly.yml`：
   ```yaml
   avatar:
     img: /img/avatar.png
   ```

### 配置评论

Butterfly 支持多种评论系统，如 Waline、Twikoo、Gitalk 等。在 `_config.butterfly.yml` 中配置：

```yaml
comments:
  use: waline # 选择评论系统
  waline:
    serverURL: # 你的 Waline 服务器地址
```

## 主题文档

更多配置请参考 [Butterfly 主题官方文档](https://butterfly.js.org/)

## 许可证

[MIT License](LICENSE)

## 参考

- [Hexo 文档](https://hexo.io/zh-cn/docs/)
- [Butterfly 主题](https://github.com/jerryc127/hexo-theme-butterfly)
- [GitHub Pages](https://pages.github.com/)

---

💡 **提示**：首次使用请仔细阅读配置说明，并根据需要修改配置文件。
