# 📚 Git 上传流程完整指南

## 🎯 适用场景

本指南适用于：
- 博客内容更新后上传到 GitHub
- 代码修改后同步到远程仓库
- 多次修改后的批量提交

---

## 🚀 快速流程（最常用）

### 方法一：一键上传（推荐）

```bash
cd e:\后台\后台\my-blog

# 清理、生成、部署（一步完成）
hexo clean && hexo g && hexo d
```

**说明**：
- `hexo clean` - 清理缓存和生成的文件
- `hexo g` - 生成静态文件（generate 的简写）
- `hexo d` - 部署到 GitHub（deploy 的简写）

---

### 方法二：分步上传（更清晰）

```bash
cd e:\后台\后台\my-blog

# 1. 查看修改状态
git status

# 2. 添加所有修改
git add .

# 3. 提交修改
git commit -m "描述你的修改内容"

# 4. 推送到 GitHub
git push
```

---

## 📋 完整流程详解

### 步骤 1：进入项目目录

```bash
cd e:\后台\后台\my-blog
```

### 步骤 2：查看修改状态

```bash
git status
```

**输出示例**：
```
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  modified:   _config.yml
  modified:   source/_posts/hello-world.md

Untracked files:
  source/_posts/new-post.md
```

**说明**：
- `modified` - 已修改的文件
- `Untracked files` - 新添加的文件

---

### 步骤 3：添加文件到暂存区

```bash
# 添加所有修改
git add .

# 或添加特定文件
git add source/_posts/new-post.md
```

**常用选项**：
```bash
git add .              # 添加当前目录所有修改
git add *.md          # 添加所有 .md 文件
git add source/       # 添加 source 目录
```

---

### 步骤 4：提交修改

```bash
git commit -m "提交信息"
```

**提交信息规范**：

```bash
# 新增文章
git commit -m "new: 添加新文章《文章标题》"

# 修改配置
git commit -m "feat: 更新博客配置"

# 修复问题
git commit -m "fix: 修复背景图显示问题"

# 更新文档
git commit -m "docs: 更新使用说明"
```

**提交信息格式**：
```
<类型>: <描述>

[可选的详细说明]

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>
```

**常用类型**：
- `new` - 新增内容
- `feat` - 新功能
- `fix` - 修复问题
- `docs` - 文档更新
- `style` - 格式调整
- `refactor` - 重构代码
- `test` - 测试相关
- `chore` - 构建/工具更新

---

### 步骤 5：推送到 GitHub

```bash
git push
```

**首次推送可能需要**：
```bash
git push -u origin main
```

**推送失败常见原因**：

1. **远程有新提交**
   ```bash
   # 先拉取远程更新
   git pull --rebase

   # 再推送
   git push
   ```

2. **认证失败**
   ```bash
   # 检查 SSH 密钥
   ssh -T git@github.com

   # 或使用 HTTPS 方式
   git remote set-url origin https://github.com/Smileyoyo/Xguai.git
   ```

---

## 🎨 博客上传专用流程

### 场景 1：写完新文章后上传

```bash
cd e:\后台\后台\my-blog

# 1. 添加文章
git add source/_posts/

# 2. 提交
git commit -m "new: 添加新文章《文章标题》"

# 3. 生成并部署
hexo clean && hexo g && hexo d

# 4. 推送源码
git push
```

---

### 场景 2：修改配置后上传

```bash
cd e:\后台\后台\my-blog

# 1. 添加配置文件
git add _config.yml _config.butterfly.yml

# 2. 提交
git commit -m "feat: 更新博客配置"

# 3. 重新生成并部署
hexo clean && hexo g && hexo d

# 4. 推送源码
git push
```

---

### 场景 3：更换背景图后上传

```bash
cd e:\后台\后台\my-blog

# 1. 添加背景图
git add source/img/background.jpg

# 2. 提交
git commit -m "feat: 更新博客背景图"

# 3. 重新生成并部署
hexo clean && hexo g && hexo d

# 4. 推送源码
git push
```

---

## 🔧 常用 Git 命令

### 查看状态

```bash
git status              # 查看文件状态
git log                 # 查看提交历史
git diff                # 查看具体修改内容
```

### 撤销操作

```bash
# 撤销工作区修改
git restore <file>

# 撤销暂存区修改
git restore --staged <file>

# 撤销最后一次提交
git reset --soft HEAD~1

# 撤销提交并丢弃修改
git reset --hard HEAD~1
```

### 分支操作

```bash
git branch              # 查看分支
git branch <name>       # 创建分支
git checkout <name>     # 切换分支
git checkout -b <name>  # 创建并切换分支
git merge <name>        # 合并分支
git branch -d <name>    # 删除分支
```

---

## 📝 提交信息最佳实践

### 好的提交信息

```bash
✅ "feat: 添加评论系统功能"
✅ "fix: 修复移动端菜单显示问题"
✅ "docs: 更新部署文档"
✅ "new: 添加文章《Hexo博客搭建教程》"
```

### 不好的提交信息

```bash
❌ "update"
❌ "修改"
❌ "提交"
❌ "123"
❌ "fix bug"
```

---

## 🚨 常见问题及解决

### 问题 1：推送失败 - 无法连接 GitHub

**错误信息**：
```
Failed to connect to github.com port 443
```

**解决方法**：
```bash
# 检查网络连接
ping github.com

# 使用 SSH 方式
git remote set-url origin git@github.com:Smileyoyo/Xguai.git

# 检查 SSH 密钥
ssh -T git@github.com
```

---

### 问题 2：提示需要认证

**错误信息**：
```
fatal: unable to access 'https://github.com/...':
```

**解决方法**：
```bash
# 使用 SSH 而不是 HTTPS
git remote set-url origin git@github.com:Smileyoyo/Xguai.git
```

---

### 问题 3：推送冲突

**错误信息**：
```
! [rejected]        main -> main (fetch first)
```

**解决方法**：
```bash
# 方法 1：拉取并合并
git pull
git push

# 方法 2：拉取并变基（推荐）
git pull --rebase
git push
```

---

### 问题 4：文件太大无法推送

**错误信息**：
```
error: RPC failed; HTTP 413 curl 22 The requested URL returned error: 413
```

**解决方法**：
```bash
# 增加 Git 缓冲区大小
git config http.postBuffer 524288000

# 然后重新推送
git push
```

---

## 🎯 不同场景的完整命令

### 📝 写新文章

```bash
cd e:\后台\后台\my-blog

# 1. 创建新文章
hexo new "文章标题"

# 2. 编辑文章
code source/_posts/文章标题.md

# 3. 本地预览
hexo server

# 4. 上传
git add .
git commit -m "new: 添加文章《文章标题》"
git push

# 5. 部署
hexo clean && hexo g && hexo d
```

---

### 🎨 更换主题或配置

```bash
cd e:\后台\后台\my-blog

# 1. 修改配置文件
# 编辑 _config.yml 或 _config.butterfly.yml

# 2. 查看修改
git status

# 3. 测试修改
hexo server
# 访问 http://localhost:4000

# 4. 提交并推送
git add _config.yml
git commit -m "feat: 更新博客配置"
git push

# 5. 重新部署
hexo clean && hexo g && hexo d
```

---

### 🖼️ 更换背景图

```bash
cd e:\后台\后台\my-blog

# 1. 下载新背景图并重命名
# 保存到 source/img/background.jpg

# 2. 提交
git add source/img/background.jpg
git commit -m "feat: 更新博客背景图"
git push

# 3. 重新部署
hexo clean && hexo g && hexo d
```

---

### 📦 批量更新

```bash
cd e:\后台\后台\my-blog

# 1. 添加所有修改
git add .

# 2. 查看即将提交的内容
git status

# 3. 提交（使用详细的提交信息）
git commit -m "chore: 批量更新博客内容

- 更新个人信息
- 添加新文章 3 篇
- 优化背景图效果
- 修复移动端显示问题

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>"

# 4. 推送
git push

# 5. 部署
hexo clean && hexo g && hexo d
```

---

## 🔄 工作流对比

### 简单流程（适合新手）

```bash
# 每次修改后
git add .
git commit -m "修改说明"
git push

# 需要部署时
hexo clean && hexo g && hexo d
```

---

### 标准流程（推荐）

```bash
# 1. 修改前先拉取
git pull

# 2. 进行修改...
# (编辑文件、添加文章等)

# 3. 查看修改
git status
git diff

# 4. 添加并提交
git add .
git commit -m "feat: 功能描述"

# 5. 推送
git push

# 6. 部署
hexo clean && hexo g && hexo d
```

---

### 专业流程（团队协作）

```bash
# 1. 创建功能分支
git checkout -b feature/new-post

# 2. 修改并提交
git add .
git commit -m "feat: 添加新文章"

# 3. 推送分支
git push origin feature/new-post

# 4. 合并到主分支
git checkout main
git merge feature/new-post

# 5. 删除功能分支
git branch -d feature/new-post

# 6. 部署
hexo clean && hexo g && hexo d
```

---

## 💡 最佳实践

### 1. 频繁提交
```bash
✅ 好习惯：每完成一个小功能就提交
❌ 坏习惯：累积大量修改后一次性提交
```

### 2. 清晰的提交信息
```bash
✅ "fix: 修复首页背景图不显示的问题"
❌ "update"
```

### 3. 推送前测试
```bash
# 本地测试
hexo server
# 访问 http://localhost:4000 检查效果

# 确认无误后再推送
git push
hexo clean && hexo g && hexo d
```

### 4. 定期拉取更新
```bash
# 每次开始工作前
git pull

# 或使用变基保持历史清晰
git pull --rebase
```

---

## 📊 快速参考

### 最常用的 3 个命令

```bash
# 1. 查看状态
git status

# 2. 提交所有修改
git add . && git commit -m "说明"

# 3. 推送到 GitHub
git push
```

### 博客部署命令

```bash
# 完整部署流程
hexo clean && hexo g && hexo d
```

### 撤销修改

```bash
# 撤销工作区修改
git restore <file>

# 撤销最后一次提交
git reset --soft HEAD~1
```

---

## 🔗 相关链接

- **Git 官方文档**: https://git-scm.com/doc
- **GitHub 官方文档**: https://docs.github.com/
- **Hexo 官方文档**: https://hexo.io/zh-cn/
- **Butterfly 主题**: https://butterfly.js.org/

---

## 📞 需要帮助？

如果遇到问题：

1. 查看错误信息
2. 搜索相关错误
3. 检查网络连接
4. 确认 SSH 密钥配置

---

_最后更新：2026-03-25_

**记住**：
- `git add` - 添加修改
- `git commit` - 提交修改
- `git push` - 推送到远程
- `hexo clean && hexo g && hexo d` - 部署博客
