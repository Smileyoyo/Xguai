---
title: Hexo + Butterfly 博客搭建指南
date: 2026-04-07 13:49:55
tags:
  - Hexo
  - Butterfly
  - 博客搭建
categories:
  - 使用说明
toc: true
abbrlink: hexo-butterfly-guide
top_img:
cover:
password:
---

## 前言

搭建个人博客是许多开发者的选择，但配置过程往往需要查阅大量文档。今天为大家介绍一套成熟的博客方案——**Hexo + Butterfly**，它能帮助我们快速搭建一个功能完善、外观美观的个人博客，简化配置流程。

## 工具简介

这是一个基于 [Hexo](https://hexo.io/) 静态博客框架和 [Butterfly](https://github.com/jerryc127/hexo-theme-butterfly) 主题构建的个人博客系统，部署在 [GitHub Pages](https://pages.github.com/) 上。安装并配置完成后，即可拥有一个功能完整的个人博客。

### 当前支持的功能

- **文章发布与管理**
- **标签与分类**
- **本地搜索**
- **响应式设计**
- **暗黑模式**
- **评论区支持**
- **友链管理**
- **网站统计**

## 功能特性

| 功能 | 说明 |
|------|------|
| 交互式向导 | 提供便捷的配置向导，帮助新手轻松上手 |
| 多语言支持 | 支持多种语言，满足不同用户需求 |
| 主题定制 | 支持丰富的主题自定义选项 |
| 插件生态 | 拥有丰富的插件市场，可按需扩展功能 |

## 安装方法

### 环境要求

- Node.js >= 14
- Git

### 本地运行步骤

1. 克隆或下载博客源码
2. 在项目根目录打开终端
3. 执行以下命令：

```bash
# 安装依赖
npm install

# 启动本地服务器
npm run server
# 或
hexo server
```

4. 访问 `http://localhost:4000` 预览博客

## 常见问题与解决方案

### 问题1：本地服务器启动失败？

**解决方案：**

1. 检查 Node.js 版本是否 >= 14
2. 删除 `node_modules` 文件夹，重新执行 `npm install`
3. 检查端口 4000 是否被占用

### 问题2：部署到 GitHub Pages 后样式丢失？

**解决方案：**

1. 检查 `_config.yml` 中的 `url` 配置是否正确
2. 确保 `root` 配置为 `/`
3. 清除浏览器缓存后重新访问

### 问题3：中文乱码或显示异常？

**解决方案：**

1. 检查 `_config.yml` 中的 `language` 是否设置为 `zh-CN`
2. 确保 Markdown 文件使用 UTF-8 编码保存
3. 更新 Hexo 和主题至最新版本

## 问题排查

遇到配置问题时，可参考官方文档：

- [Hexo 官方文档](https://hexo.io/zh-cn/docs/)
- [Butterfly 主题文档](https://butterfly.js.org/)

## 安装后注意事项

1. 博客搭建完成后，建议定期备份 `source/_posts` 目录下的文章
2. 避免直接修改主题核心文件，推荐在 `_config.butterfly.yml` 中进行自定义
3. 不要随意修改 `package.json` 中的核心依赖版本

## 相关链接

- [Hexo GitHub](https://github.com/hexojs/hexo)
- [Butterfly GitHub](https://github.com/jerryc127/hexo-theme-butterfly)
- [GitHub Pages 文档](https://docs.github.com/zh/pages)

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

## 结语

Hexo + Butterfly 为博主提供了一条快速搭建个人博客的捷径，尤其适合需要稳定写作环境、追求个性化定制的场景。如果您正在寻找一款简洁美观的博客方案，不妨一试。

如有其他问题，欢迎在评论区交流讨论。