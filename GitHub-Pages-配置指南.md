# 🌐 GitHub Pages 配置完整指南

## 📋 当前情况

如果你在 Pages 设置页面看到"添加域名"的提示，说明需要重新配置部署方式。

## 🔧 解决方案（3种方法，选一种）

---

### 方法 1：使用 gh-pages 分支（推荐，最稳定）

#### 步骤 1：修改部署配置

编辑 `_config.yml` 文件，找到 `deploy` 部分：

```yaml
deploy:
  type: git
  repo: git@github.com:Smileyoyo/Xguai.git
  branch: gh-pages
```

#### 步骤 2：安装部署插件（已安装）

```bash
npm install hexo-deployer-git --save
```

#### 步骤 3：部署到 gh-pages 分支

```bash
cd e:\后台\后台\my-blog

# 生成静态文件
hexo generate

# 部署到 GitHub
hexo deploy
```

#### 步骤 4：配置 GitHub Pages

1. 访问：https://github.com/Smileyoyo/Xguai/settings/pages

2. 在 **Build and deployment** 部分：
   - **Source**: 选择 `Deploy from a branch`
   - **Branch**: 选择 `gh-pages` 和 `/ (root)`
   - 点击 **Save**

3. 等待 2-3 分钟

4. 访问：https://smileyoyo.github.io/Xguai/

---

### 方法 2：使用 GitHub Actions（需要手动创建）

如果仍然想用 GitHub Actions：

#### 步骤 1：检查 Actions 权限

1. 访问：https://github.com/Smileyoyo/Xguai/settings/actions

2. 确保 **Workflow permissions** 设置为：
   - ✅ `Read and write permissions`

3. 点击 **Save**

#### 步骤 2：手动触发工作流

1. 访问：https://github.com/Smileyoyo/Xguai/actions

2. 点击左侧 `Deploy to GitHub Pages`

3. 点击右侧 `Run workflow` → `Run workflow`

#### 步骤 3：等待完成后配置 Pages

1. 回到：https://github.com/Smileyoyo/Xguai/settings/pages

2. **Source** 应该自动变成 `GitHub Actions`

3. 如果没有，选择 `Deploy from a branch`：
   - Branch: `gh-pages` / `/ (root)`

---

### 方法 3：使用 Vercel/Netlify（最简单，推荐新手）

如果 GitHub Pages 配置太复杂，可以使用第三方平台：

#### 使用 Vercel：

1. 访问：https://vercel.com

2. 用 GitHub 账号登录

3. 点击 `Add New` → `Project`

4. 导入 `Xguai` 仓库

5. 配置：
   - Framework Preset: `Other`
   - Build Command: `npm run build`
   - Output Directory: `public`

6. 点击 `Deploy`

7. 几秒钟后获得 `.vercel.app` 域名

---

## 🎯 推荐方案对比

| 方案 | 优点 | 缺点 | 推荐度 |
|------|------|------|--------|
| gh-pages 分支 | 稳定、简单 | 需要手动部署 | ⭐⭐⭐⭐⭐ |
| GitHub Actions | 自动部署 | 配置复杂 | ⭐⭐⭐ |
| Vercel | 最简单、最快 | 非官方域名 | ⭐⭐⭐⭐⭐ |

---

## 🚀 快速开始（推荐）

### 选择方法 1（gh-pages 分支）

```bash
# 1. 进入项目目录
cd e:\后台\后台\my-blog

# 2. 清理并生成
hexo clean
hexo generate

# 3. 部署到 GitHub
hexo deploy

# 4. 等待几秒后访问
# https://smileyoyo.github.io/Xguai/
```

### 然后配置 GitHub Pages

1. https://github.com/Smileyoyo/Xguai/settings/pages
2. Source: `Deploy from a branch`
3. Branch: `gh-pages` / `/ (root)`
4. Save

---

## 🔍 常见问题

### Q1: 为什么看到"添加域名"？
A: GitHub 改变了界面，现在可以添加自定义域名，但不影响正常使用。

### Q2: 必须添加域名吗？
A: 不必须。直接配置 Source 和 Branch 即可使用免费域名。

### Q3: deploy 命令报错？
A: 检查 SSH 密钥是否配置正确：
```bash
ssh -T git@github.com
```

### Q4: 部署成功但访问 404？
A: 等待 2-3 分钟，GitHub 需要时间处理。

---

## 📝 修改 _config.yml

如果使用方法 1，确保 `_config.yml` 有正确的 deploy 配置：

```yaml
# URL
url: https://smileyoyo.github.io/Xguai/
permalink: posts/:abbrlink/

# Directory
# ... 其他配置 ...

# Deployment
deploy:
  type: git
  repo: git@github.com:Smileyoyo/Xguai.git
  branch: gh-pages
```

---

## 🎉 验证部署成功

部署完成后访问：
```
https://smileyoyo.github.io/Xguai/
```

应该能看到你的博客首页！

---

_更新时间：2026-03-25_
