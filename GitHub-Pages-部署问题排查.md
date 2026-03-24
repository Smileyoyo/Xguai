# 🔍 GitHub Pages 部署问题排查指南

## ❌ 错误信息
```
Error: The butterfly theme could not be found.
```

## 🔧 解决方案

### 方案 1：确认 GitHub Pages 配置（最常见）

**步骤 1：访问仓库设置**
```
https://github.com/Smileyoyo/Xguai/settings/pages
```

**步骤 2：检查配置**

确保以下设置正确：

✅ **Source**: 必须选择 `GitHub Actions`
❌ 不要选择 `Deploy from a branch`

**如果显示 `Deploy from a branch`，请改为 `GitHub Actions`**

### 方案 2：检查主题文件

查看 GitHub 仓库中是否有主题文件：

```
https://github.com/Smileyoyo/Xguai/tree/main/themes/butterfly
```

**应该看到：**
- `_config.yml`
- `layout/`
- `source/`
- `languages/`
- 等文件夹

**如果看不到这些文件**，说明主题没有被上传，执行：

```bash
cd e:\后台\后台\my-blog

# 确保主题文件存在
ls -la themes/butterfly/

# 添加所有文件
git add themes/butterfly/

# 提交
git commit -m "chore: 添加完整的 butterfly 主题文件"

# 推送
git push
```

### 方案 3：查看 Actions 日志

**访问 Actions 页面：**
```
https://github.com/Smileyoyo/Xguai/actions
```

**点击最新的工作流**，查看详细日志，找到关键信息：

```
✓ 期望看到：
Checking themes directory...
Checking butterfly theme...
layout/
✓ layout folder exists

✗ 如果看到：
butterfly theme not found
```

**根据日志信息采取行动：**

#### 情况 A：主题目录存在但构建失败
可能是缺少渲染器，已经修复，等待 Actions 重新运行

#### 情况 B：主题目录不存在
需要手动添加主题文件

### 方案 4：手动触发部署

**步骤 1：访问 Actions**
```
https://github.com/Smileyoyo/Xguai/actions
```

**步骤 2：点击 `Deploy to GitHub Pages`**

**步骤 3：点击 `Run workflow` 按钮**

**步骤 4：点击绿色的 `Run workflow` 确认**

### 方案 5：检查 GitHub Pages 状态

**访问设置页面：**
```
https://github.com/Smileyoyo/Xguai/settings/pages
```

**检查以下内容：**

| 项目 | 应该显示 |
|------|----------|
| Source | GitHub Actions |
| Status | ✓ Deployed (绿色对勾) |
| 访问链接 | https://smileyoyo.github.io/Xguai/ |

## 🎯 最可能的解决方案

**根据错误信息，90% 的情况是 GitHub Pages 的 Source 配置错误。**

### 修正步骤：

1. 访问：https://github.com/Smileyoyo/Xguai/settings/pages

2. 找到 "Build and deployment" 部分

3. 在 "Source" 下拉菜单中：
   - ❌ 不要选择：`Deploy from a branch`
   - ✅ 必须选择：`GitHub Actions`

4. 保存后等待 2-3 分钟

5. 访问：https://smileyoyo.github.io/Xguai/

## 📊 验证步骤

### 1. 本地测试
```bash
cd e:\后台\后台\my-blog
hexo clean
hexo generate
hexo server
```
访问 http://localhost:4000 确认本地正常

### 2. 检查 Actions
访问 https://github.com/Smileyoyo/Xguai/actions
确认最新工作流显示绿色 ✓

### 3. 检查 Pages 设置
访问 https://github.com/Smileyoyo/Xguai/settings/pages
确认 Source 是 `GitHub Actions`

## 🆘 如果问题仍然存在

请提供以下信息：

1. **Actions 日志链接**
   - https://github.com/Smileyoyo/Xguai/actions
   - 点击失败的工作流，复制链接

2. **Pages 设置截图**
   - https://github.com/Smileyoyo/Xguai/settings/pages
   - 显示 "Build and deployment" 部分

3. **主题文件检查**
   - 访问：https://github.com/Smileyoyo/Xguai/tree/main/themes/butterfly
   - 是否能看到 `_config.yml` 文件？

## ⚡ 快速修复命令

```bash
# 确保在项目目录
cd e:\后台\后台\my-blog

# 检查主题文件
ls -la themes/butterfly/

# 如果主题文件夹为空，重新克隆
rm -rf themes/butterfly
git clone --depth 1 https://github.com/jerryc127/hexo-theme-butterfly.git themes/butterfly

# 添加到 git
git add themes/butterfly/
git commit -m "chore: 添加 butterfly 主题"
git push
```

## 📝 相关链接

- **Actions 页面**: https://github.com/Smileyoyo/Xguai/actions
- **Pages 设置**: https://github.com/Smileyoyo/Xguai/settings/pages
- **博客地址**: https://smileyoyo.github.io/Xguai/
- **仓库地址**: https://github.com/Smileyoyo/Xguai

---

**最关键的检查点：**
✅ GitHub Pages 的 Source 必须是 `GitHub Actions`，不是 `Deploy from a branch`
