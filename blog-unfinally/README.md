# One-Man-Company

> 一人公司多 Agent 协作系统，基于 OpenClaw 构建

[English](./README_EN.md) | 中文

---

## 📖 项目简介

**One-Man-Company** 是一个面向个人的 AI 协作管理系统，旨在帮助个人创业者或小型团队实现高效的自动化运营。该系统基于 [OpenClaw](https://github.com/openclaw/openclaw) 框架构建，模拟真实公司的组织架构，将 AI 能力分配到不同"部门"，实现任务的智能分流与协同处理。

无论你是独立开发者、内容创作者还是小微企业主，这套系统都能帮助你：

- 🤖 **自动化任务分配** - CEO Agent 自动理解需求并分发给对应部门
- 📊 **多领域 AI 支持** - 覆盖开发、设计、产品、运营、市场、数据分析等场景
- 💼 **企业级工作流** - 模拟真实公司的协作模式，提升工作效率
- 🔧 **开箱即用** - 预置丰富的技能和工作流，快速部署

---

## 🏗️ 系统架构

```
┌─────────────────────────────────────────────────────────────┐
│                        用户入口                              │
│  (飞书 / KOOK / WebChat / Telegram / Discord 等)          │
└───────────────────────────┬─────────────────────────────────┘
                            │
┌───────────────────────────▼─────────────────────────────────┐
│                     CEO Agent (首席执行官)                    │
│                                                              │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐          │
│  │ 需求理解    │→ │ 任务拆解    │→ │ 分发执行    │→ 汇总报告  │
│  └─────────────┘  └─────────────┘  └─────────────┘          │
└───────────────────────────┬─────────────────────────────────┘
                            │
        ┌───────────────────┼───────────────────┐
        │                   │                   │
   ┌────▼────┐         ┌────▼────┐         ┌────▼────┐
   │ 产品部  │         │ 开发部  │         │ 设计部  │
   │ Product │         │   Dev   │         │ Design  │
   └─────────┘         └─────────┘         └─────────┘
        │                   │                   │
   ┌────▼────┐         ┌────▼────┐         ┌────▼────┐
   │ 运营部  │         │ 市场部  │         │ 数据部  │
   │   Ops   │         │ Marketing│         │  Data  │
   └─────────┘         └─────────┘         └─────────┘
```

---

## 🎯 核心功能

### CEO Agent (首席执行官)
- 理解用户需求，进行智能意图识别
- 将复杂任务拆解为可执行的子任务
- 根据任务类型自动分发给对应的部门 Agent
- 汇总各部门的执行结果，提供完整的解决方案

### 部门 Agent 矩阵

| Agent | 职责 | 核心技能 |
|-------|------|---------|
| **Product (产品)** | 产品规划、需求分析、功能设计 | 竞品分析、PRD 撰写、功能规划 |
| **Dev (开发)** | 代码开发、技术方案实现 | 前端/后端开发、API 设计、代码审查 |
| **Design (设计)** | UI/UX 设计、品牌视觉 | 界面设计、Logo 设计、PPT 制作 |
| **Marketing (市场)** | 营销策划、内容运营 | 营销方案、社交媒体运营、文案撰写 |
| **Ops (运营)** | 日常运维、客户支持 | 客服自动化、工作流编排、日程管理 |
| **Data (数据分析)** | 数据分析、报告生成 | 数据可视化、趋势分析、报告撰写 |

---

## 🛠️ 技术栈

| 层级 | 技术 |
|------|------|
| **核心框架** | OpenClaw 2026.3.24 |
| **运行时** | Node.js 24.13.1 |
| **消息平台** | 飞书、KOOK、Telegram、Discord、WebChat |
| **AI 能力** | Coze API (GPT-4、Claude 等大模型) |
| **扩展插件** | coze-openclaw-plugin (语音、图像、搜索等) |

---

## 📂 项目结构

```
One-Man-Company/
├── workspace/                    # Agent 工作空间目录
│   ├── ceo/                     # CEO Agent 工作区
│   │   ├── AGENTS.md           # Agent 定义配置
│   │   ├── SOUL.md             # Agent 角色设定
│   │   ├── skills/             # CEO 专属技能
│   │   └── ...
│   ├── dev/                     # 开发部 Agent
│   ├── design/                  # 设计部 Agent
│   ├── product/                 # 产品部 Agent
│   ├── marketing/                # 市场部 Agent
│   ├── ops/                     # 运营部 Agent
│   └── data/                    # 数据部 Agent
├── extensions/                   # OpenClaw 扩展插件
│   └── coze-openclaw-plugin/   # Coze 集成插件
│       ├── skills/              # 插件技能
│       │   ├── coze-asr/       # 语音识别
│       │   ├── coze-tts/       # 语音合成
│       │   ├── coze-image-gen/ # 图像生成
│       │   └── openclaw-faq/   # FAQ
│       └── src/                 # 插件源码
├── scripts/                      # 系统管理脚本
│   ├── start.sh                 # 启动服务
│   ├── stop.sh                  # 停止服务
│   ├── restart.sh               # 重启服务
│   └── build.sh                 # 构建项目
├── completions/                  # Shell 命令补全
│   ├── openclaw.bash
│   ├── openclaw.zsh
│   └── openclaw.fish
├── openclaw.json.example         # 配置文件示例
├── README.md                     # 项目说明（本文）
└── .gitignore                   # Git 忽略规则
```

---

## 🚀 快速开始

### 前置要求

- Node.js 18+ (推荐 20+)
- npm 或 yarn
- Git

### 1. 克隆项目

```bash
# HTTPS 方式
git clone https://github.com/Smileyoyo/One-Man-Company.git

# 或 SSH 方式
git clone git@github.com:Smileyoyo/One-Man-Company.git

cd One-Man-Company
```

### 2. 配置环境

```bash
# 复制配置文件
cp openclaw.json.example openclaw.json

# 编辑配置文件，填入你的凭证
vim openclaw.json
```

### 3. 配置说明

`openclaw.json` 关键配置项：

```json
{
  "plugins": {
    "coze": {
      "apiKey": "your-coze-api-key",
      "baseUrl": "https://api.coze.cn"
    }
  },
  "channels": {
    "feishu": {
      "appId": "your-feishu-app-id",
      "appSecret": "your-feishu-app-secret",
      "allowFrom": ["your-user-id"]
    }
  }
}
```

### 4. 启动服务

```bash
# 使用脚本启动
./scripts/start.sh

# 或手动启动
npm install
npm start
```

### 5. 验证安装

```bash
# 查看服务状态
openclaw status

# 或查看日志
tail -f logs/openclaw.log
```

---

## 📖 使用指南

### 基本使用流程

1. **发送需求** - 通过配置的渠道（飞书/KOOK等）向系统发送需求
2. **CEO 接收** - CEO Agent 理解需求并进行任务拆解
3. **自动分发** - 任务被分发给对应的部门 Agent
4. **执行反馈** - 各部门 Agent 执行任务并返回结果
5. **汇总输出** - CEO Agent 汇总结果，提供完整解决方案

### 示例对话

```
用户：帮我设计一个电商小程序的 Logo

CEO → 分析需求 → 分发给 Design Agent
Design Agent → 提供多个 Logo 设计方案
CEO → 汇总方案 → 返回给用户
```

---

## 🔧 扩展开发

### 添加新的部门 Agent

1. 在 `workspace/` 目录下创建新的工作区文件夹
2. 编写 `AGENTS.md`、`SOUL.md` 等配置文件
3. 添加专属技能到 `skills/` 目录
4. 在 CEO Agent 配置中注册新部门

### 开发自定义技能

参考 `extensions/coze-openclaw-plugin/skills/` 下的示例：

```typescript
// skills/my-skill/scripts/my-script.ts
export default {
  name: 'my-skill',
  description: '我的自定义技能',
  async execute(context) {
    // 实现你的技能逻辑
    return { result: '执行成功' };
  }
};
```

---

## 📄 许可证

本项目仅供个人学习和使用，商业使用请联系作者授权。

---

## 🤝 贡献指南

欢迎提交 Issue 和 Pull Request！

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/xxx`)
3. 提交更改 (`git commit -m 'Add xxx'`)
4. 推送分支 (`git push origin feature/xxx`)
5. 创建 Pull Request

---

## 🔗 相关链接

- [OpenClaw 官方文档](https://docs.openclaw.ai)
- [OpenClaw GitHub](https://github.com/openclaw/openclaw)
- [Coze 开放平台](https://www.coze.cn)
- [飞书开放平台](https://open.feishu.cn)

---

## 📝 更新日志

### 2026.03.28
- 优化项目结构，统一使用 `workspace/` 目录管理各部门 Agent
- 更新 README 文档

### 2026.03.24
- 初始版本发布
- 集成 CEO + 6 大部门 Agent
- 支持飞书、KOOK 等多渠道

---

**© 2026 One-Man-Company. Built with ❤️ by OpenClaw.**
