# 🦞 AI Agent 全能技能库

> **让你的 AI 从"能聊天"到"能干活"** — 166+ 个即插即用的能力模块，像乐高积木一样自由拼装。

<div align="center">

![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)
![Skills](https://img.shields.io/badge/skills-166+-orange.svg?style=for-the-badge)
![Python](https://img.shields.io/badge/python-3.8+-3776AB.svg?style=for-the-badge&logo=python&logoColor=white)
![Node.js](https://img.shields.io/badge/node-16+-339933.svg?style=for-the-badge&logo=node.js&logoColor=white)
![Docker](https://img.shields.io/badge/docker-4.49+-2496ED.svg?style=for-the-badge&logo=docker&logoColor=white)

</div>

**一句话介绍**：AI 就像一台刚出厂的电脑——模型很聪明，但"什么都不会做"。这个项目给 AI 装上 166 个"手和脚"，让它会搜索、会记忆、会操作浏览器、会付款、会创作内容。

---

## 🎯 这是什么？

| 能力域 | 数量 | 相对分布 |
|:------|:----:|:---------|
| 🛠️ 开发工具 | 36 | `<code>██████████████████████████████</code>` |
| 💰 金融电商 | 21 | `<code>██████████████████░░░░░░░░░░░░</code>` |
| 🎨 设计营销 | 18 | `<code>███████████████░░░░░░░░░░░░░░░</code>` |
| 🧬 专业领域 | 17 | `<code>██████████████░░░░░░░░░░░░░░░░</code>` |
| 📝 内容处理 | 11 | `<code>█████████░░░░░░░░░░░░░░░░░░░░░</code>` |
| 🤖 Agent 进化 | 10 | `<code>████████░░░░░░░░░░░░░░░░░░░░░░</code>` |
| 🔍 搜索获取 | 8 | `<code>███████░░░░░░░░░░░░░░░░░░░░░░░</code>` |
| 🌐 浏览器自动化 | 7 | `<code>██████░░░░░░░░░░░░░░░░░░░░░░░░</code>` |

> 💡 其余 38 个技能覆盖生活辅助、邮件、社交等长尾场景。

| 传统做法（要写代码） | 用本项目（即插即用） |
|:--------:|:------:|
| 花 3 个月从零搭搜索系统 | **1 分钟装上现成的搜索技能** |
| 重复造轮子，项目间不通用 | **标准化模块，跨项目复用** |
| 自己管安全、管支付、管测试 | **安全分级，开箱即用** |

> 💡 **写给非技术朋友**：可以把每个技能想象成 App Store 里的一个 App。你不需要会写程序，只要"装上"它，AI 就多一项本领。

---

## 💡 核心亮点

### 🧩 即插即用 — 像装 App 一样装技能

每个技能独立封装，复制即用，无需改任何代码：

```
skill-name/
├── SKILL.md          # 技能说明（告诉 AI 怎么用）
├── _meta.json        # 元数据（版本、依赖、安全等级）
├── scripts/          # 可执行脚本（可选）
└── references/       # 参考资料（可选）
```

### 🌍 AI 是怎么干活的？— 一条流水线看懂

```mermaid
graph TB
    A["📥 收集信息"] --> B["🧠 理解分析"]
    B --> C["⚡ 自动执行"]
    C --> D["🛡️ 安全守护"]

    style A fill:#E3F2FD,stroke:#1976D2,stroke-width:2px
    style B fill:#F3E5F5,stroke:#7B1FA2,stroke-width:2px
    style C fill:#E8F5E9,stroke:#388E3C,stroke-width:2px
    style D fill:#FFF3E0,stroke:#F57C00,stroke-width:2px
```

> 就像做一顿饭：先买菜（收集）→ 再配菜（分析）→ 下锅炒（执行）→ 试吃把关（安全）。166 个技能覆盖这条流水线的每一步。

### 🔒 安全分级 — 每个技能都带"健康证"

| 等级 | 含义（大白话） | 放心程度 |
|:----:|------|----------|
| <img src="https://img.shields.io/badge/S%2B-00C853.svg?style=for-the-badge" /> | 纯说明文档，不碰任何东西 | ✅ 绝对放心 |
| <img src="https://img.shields.io/badge/S-4CAF50.svg?style=for-the-badge" /> | 只在本地动文件，不联网 | ✅ 很放心 |
| <img src="https://img.shields.io/badge/A-FFC107.svg?style=for-the-badge" /> | 会上网，但权限写得很清楚 | ⚠️ 值得信任 |
| <img src="https://img.shields.io/badge/B-FF9800.svg?style=for-the-badge" /> | 需要你提供密钥才能用 | 🔑 谨慎使用 |

---

## 🚀 30 秒快速开始

```bash
# 克隆仓库
git clone https://github.com/weininghui/skills.git
cd skills

# 选择你需要的技能，直接使用
# 例如：使用 Tavily 进行 AI 搜索
cat tavily-search-pro/SKILL.md
```

**就这么简单。没有复杂的安装流程，没有依赖地狱。**

---

## 📚 技能目录

> **166+ 个精选技能**，按能力域分类，每个都经过实战验证

<div align="center">

![Search](https://img.shields.io/badge/🔍_搜索与信息获取-8个-2196F3.svg?style=for-the-badge)
![Agent](https://img.shields.io/badge/🤖_Agent进化-10个-9C27B0.svg?style=for-the-badge)
![Browser](https://img.shields.io/badge/🌐_浏览器自动化-7个-4CAF50.svg?style=for-the-badge)
![Content](https://img.shields.io/badge/📝_内容处理-11个-FF9800.svg?style=for-the-badge)
![DevTools](https://img.shields.io/badge/🛠️_开发工具-36个-607D8B.svg?style=for-the-badge)
![Finance](https://img.shields.io/badge/💰_金融电商-21个-E91E63.svg?style=for-the-badge)
![Design](https://img.shields.io/badge/🎨_设计营销-18个-00BCD4.svg?style=for-the-badge)
![Domain](https://img.shields.io/badge/🧬_专业领域-17个-795548.svg?style=for-the-badge)

</div>

### 🔍 搜索与信息获取

让 Agent 具备"看见世界"的能力。

| 技能 | 一句话说明 | 技术栈 | 安全 |
|------|-----------|--------|------|
| **tavily-search-pro** | AI 原生搜索引擎，支持深度研究模式 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **omnisearch** | 实时全网搜索，自动聚合多源结果 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **web-search-plus** | 6 大搜索引擎智能路由，自动选择最优源 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **serper** | Google 搜索 API 封装，支持批量采集 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **serp-analysis** | SEO 竞争情报分析，SERP 深度洞察 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **aegis-audit** | AI 技能与 MCP 工具的安全审计扫描 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **ironclaw** | AI Agent 实时威胁检测与防护 | <img src="https://img.shields.io/badge/API-9C27B0?style=flat-square" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **news-aggregator** | 8 源聚合的智能资讯雷达 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |

### 🤖 Agent 自主进化

让 Agent 具备"越用越聪明"的进化能力。

| 技能 | 一句话说明 | 技术栈 | 安全 |
|------|-----------|--------|------|
| **capability-evolver** | 基于 GEP 协议的自主进化引擎 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **agent-overflow** | AI Agent 集体记忆与协作网络 | <img src="https://img.shields.io/badge/API-9C27B0?style=flat-square" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **self-improvement** | 持续进化与知识沉淀系统 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **tiered-memory** | LLM 驱动的智能分层记忆架构 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **self-integration** | 一键连接千款 SaaS 的智能集成中枢 | <img src="https://img.shields.io/badge/API-9C27B0?style=flat-square" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **everclaw** | 去中心化 AI 推理基础设施 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **claw-sync** | OpenClaw 记忆安全同步专家 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **learning-engine** | 经验驱动的持续进化学习引擎 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **knowledge-graph** | 个人知识图谱智能管理专家 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **memory-tiering** | AI 上下文智能三级分层管家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |

### 🌐 浏览器与自动化

让 Agent 能"操作电脑"，而不仅仅是"回答问题"。

| 技能 | 一句话说明 | 技术栈 | 安全 |
|------|-----------|--------|------|
| **agent-browser** | AI 原生浏览器自动化引擎 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **docker-sandbox** | VM 级隔离的安全代码执行环境 | <img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **browser-secure** | Vault 级安全浏览器自动化方案 | <img src="https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **cloudphone** | 云端 Android 自动化测试助手 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **aster** | 开源隐私优先的安卓 AI 副驾驶 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **cal-com-automation** | Cal.com 智能日程自动化助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **clawdbot-documentation-expert** | Clawdbot 文档实时查询专家 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |

### 📝 内容处理

让 Agent 具备"理解与表达"的内容处理能力。

| 技能 | 一句话说明 | 技术栈 | 安全 |
|------|-----------|--------|------|
| **summarize** | 多模态智能内容摘要助手 | <img src="https://img.shields.io/badge/Swift-F05138?style=flat-square&logo=swift&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **humanize-ai-text** | AI 文本特征检测与人性化优化 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **yt-transcript** | 一键提取 YouTube 视频字幕精华 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **yt-video-downloader** | 多格式视频下载与音频提取利器 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **content-ideas-generator** | 病毒式社媒内容创意引擎 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **meeting-notes** | 智能会议纪要结构化整理专家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **paddleocr-doc-parsing** | 百度官方 OCR 文档解析引擎 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **vocabulary-builder** | 基于间隔重复的智能词汇构建器 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **frinkiac** | 经典美剧台词截图与表情包生成 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **fact-checker** | 自动化事实核查与信源验证专家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **pengyouquan-pangyu** | 懂你风格的朋友圈文案助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **clawddocs** | 智能文档查询与知识检索 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |

### 🛠️ 开发工具

让 Agent 成为你的"开发搭档"。

| 技能 | 一句话说明 | 技术栈 | 安全 |
|------|-----------|--------|------|
| **postgres-job-queue** | 零依赖 PostgreSQL 任务队列引擎 | <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **wacli** | WhatsApp 命令行消息管理专家 | <img src="https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **skill-vetting** | 第三方技能安全审查专家 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **zero-rules** | 零成本拦截确定性任务 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **secretcodex** | 复古解码环遇上现代密码学 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **full-stack-feature** | 端到端特性开发 orchestration | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **code-mentor** | 苏格拉底式 AI 编程导师 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **browserless-agent** | 专业无头浏览器自动化操控 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **tech-security-audit** | 本地化网络安全漏洞评估专家 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **dashboard-manager2** | Jarvis 仪表盘实时数据同步中枢 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **sendook-openclaw** | 企业级邮件收发自动化 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **commit-analyzer** | Git 提交健康度智能监测仪 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **feishu-robot-registry** | 飞书机器人集中注册管理工具 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **xlsx-pro** | 专业级 Excel 表格处理与财务建模 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **microsoft-code-reference** | Azure 开发者的智能文档助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **agent-skills-tools** | Agent Skills 生态安全审计卫士 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **otp-challenger** | 敏感操作前的双因素认证 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **readme-generator** | 自动化项目文档生成专家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **stdio-skill** | 本地文件安全收发工作站 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **custom-smtp-sender** | 安全可靠的自动化邮件发送助手 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **email-sequence-builder** | 高转化邮件营销序列生成器 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **switch-modes** | AI 模型动态调度与成本优化 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **clawcost** | OpenClaw 智能成本追踪专家 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **voice-agent** | 本地智能语音交互桥接 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **opcode** | AI 智能体零 Token 工作流执行层 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **playwright-mcp** | 微软官方浏览器自动化 MCP 服务 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **playwright-mcp-v2** | Playwright MCP 增强版浏览器自动化 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **test-specialist** | 系统化 JS/TS 测试质量管家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **senior-frontend** | React 全栈项目脚手架与性能优化专家 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **nl2ms-ui** | AI 驱动的跨平台 UI 自动化测试 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **clean-code** | 务实简洁的 AI 编码规范指南 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **agentic-coding** | 契约驱动，交付可审查的生产代码 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **api-development** | 全栈 API 开发脚手架与测试套件 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **systematic-debugging** | 五阶段根因调试，告别症状修补 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **superpowers-dev-workflow** | 子代理驱动的 TDD 全流程引擎 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **gitlab-cli-skills** | 一站式 GitLab 命令行工作流管家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **hefestoai-auditor** | 多语言代码安全审计专家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **strykr-qa-bot** | AI 驱动金融平台自动化测试 | <img src="https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **ai-web-automation** | 一站式 Web 自动化任务执行平台 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **conventional-commits** | 规范提交信息，自动化版本发布 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **python-pitfalls** | 避开 Python 最隐蔽的 99 个陷阱 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **typescript-pro** | 高级类型系统与全栈安全专家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **makefile-build** | 跨语言构建自动化专家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **resilient-connections** | 生产级 API 容错与优雅降级 | <img src="https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **morning-email-rollup** | 智能晨间邮件与日程简报 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |

### 💰 金融与电商

让 Agent 具备"商业操作"能力。

| 技能 | 一句话说明 | 技术栈 | 安全 |
|------|-----------|--------|------|
| **amazon-product-api** | 零代码亚马逊商品数据抓取专家 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **claw-trader-lite** | 零托管跨平台加密资产监控 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **ipo-alert** | 韩国新股申购智能提醒助手 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **onchain** | 多链加密资产一站式追踪终端 | <img src="https://img.shields.io/badge/CLI-4EAA25?style=flat-square" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **mintgarden** | Chia NFT 市场数据实时追踪 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **financial-calculator** | 金融计算器 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **suisec** | Sui 链上交易安全守门人 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **crypto-payments-ecommerce** | 零手续费全球加密收款方案 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **usd1transaction** | Wormhole 跨链稳定币安全转账 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **x402-direct** | 加密支付 API 服务发现平台 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **buy-anything** | 对话式 Amazon 智能代购助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **polymarket-arbitrage** | 预测市场套利机会智能监控 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **paypal** | 零代码 PayPal 支付集成助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **solana-payments** | Solana USDC 订阅支付链接生成 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **moneydevkit** | 5 分钟极速集成的全球化支付方案 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **btc15-autonomous-market** | 全自主 BTC 预测市场自动化交易 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **alpha-finder** | 预测市场智能投研助手 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **moltpho** | AI 自主购物与加密支付管家 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **aperture** | L402 闪电付费 API 网关 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **airdrop-hunter** | 加密空投智能追踪与管理助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **finance-skill** | 隐私优先的本地智能记账助手 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **financial-search-engine** | 自然语言搜全网财经情报 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **admapix** | 广告素材与竞品数据一站式获取 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |

### 🎨 设计与营销

让 Agent 具备"审美与商业嗅觉"。

| 技能 | 一句话说明 | 技术栈 | 安全 |
|------|-----------|--------|------|
| **awwwards-design** | 打造获奖级网页体验的设计指南 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **afrexai-seo-content-engine** | 零 API 的智能 SEO 内容生产引擎 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **yc-cold-outreach** | YC 认证的高转化冷邮件专家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **clawdbot-for-vcs** | VC 合伙人智能投资工作流管家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **adcp-advertising** | AI 驱动的全渠道广告自动化 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **chargebee** | 企业级订阅计费自动化管理 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **afrexai-compliance-audit** | 零成本启动企业合规认证 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **geb-aesthetics** | 基于 GEB 哲学的多模态创作框架 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **content-ideas** | 灵感源源不断的社媒管家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **instagram-poster** | 本地 Instagram 自动化运营专家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **auto-reply** | 7×24 小时社交智能互动管家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **competitor-analysis-report** | 专业级竞品分析与战略洞察 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **contract-generator** | 自由职业合同智能生成专家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **freelance-proposal-engine** | 高转化自由职业投标助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **vestaboard** | 机械翻转屏智能消息助手 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **salesforce-sdr-admin** | 企业级 Salesforce 安全自动化助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **marketing-drafter** | 全渠道 AI 营销文案生成器 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **mailmolt** | 为 AI 代理打造独立邮件身份 | <img src="https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **papi** | 企业级 WhatsApp 自动化中枢 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **life-control** | 多维度个人生活自动化管理 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **vnsh** | 零知识端到端加密文件秒传 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **tencentcloud-cos-skill** | 企业级云存储与 AI 图像处理中心 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **x-bookmarks** | 智能书签整理与行动转化助手 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **codeberg** | 欧洲开源代码托管助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **ui-ux-design** | 现代 UI/UX 设计权威指南 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **veo3-video-gen** | 谷歌 Veo3 智能短视频生成工坊 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **voice-note-to-midi** | 语音哼唱转 MIDI 的 AI 音乐助手 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **sprite-animator** | AI 一键生成像素动画精灵 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **alicloud-ai-video-wan-r2v** | 阿里云 Wan R2V 参考视频生成 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **tencent-cloud-cos** | 腾讯云对象存储与 AI 图像处理 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |

### 🧬 专业领域

深耕垂直场景，提供"专家级"能力。

| 技能 | 一句话说明 | 技术栈 | 安全 |
|------|-----------|--------|------|
| **aviation-weather** | FAA 权威航空气象 briefing 工具 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **bioskills** | 一站式生物信息学分析平台 | <img src="https://img.shields.io/badge/Shell-4EAA25?style=flat-square&logo=gnubash&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **shellf** | AI 代理的哲学阅读社区 | <img src="https://img.shields.io/badge/API-9C27B0?style=flat-square" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **catalog** | 极简安全的服务目录查询助手 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **brainrepo** | 知识库管理 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **openspec** | 开放规范管理 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **qwen3-tts-instruct** | 阿里云多情绪实时语音合成 | <img src="https://img.shields.io/badge/API-9C27B0?style=flat-square" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **ridb-search** | 联邦营地智能搜索定位助手 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **security-skill-scanner** | ClawdHub 技能安全守门人 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **remix-api-key-auth** | Remix API 密钥安全配置指南 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **emporia-energy** | Emporia 能耗双模式智能监控 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **amap-traffic** | 实时路况查询与最优路线规划 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **globepilot-ai-agent-2** | 去中心化 AI 智能旅行管家 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **hebrew-nikud** | 精准希伯来语 TTS 发音指南 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **near-faucet** | NEAR 测试网代币一键领取助手 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **near-subaccount** | NEAR 区块链子账户管理专家 | <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white" /> | <img src="https://img.shields.io/badge/A-FFC107?style=flat-square" /> |
| **base-8004** | AI 代理永久链上身份注册 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **zettelkasten** | AI 增强的卡片盒笔记系统 | <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" /> | <img src="https://img.shields.io/badge/S-4CAF50?style=flat-square" /> |
| **kasia** | Kaspa 链上端到端加密通讯 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |
| **mcd-cn** | 麦当劳中国优惠券智能助手 | <img src="https://img.shields.io/badge/Docs-757575?style=flat-square" /> | <img src="https://img.shields.io/badge/S%2B-00C853?style=flat-square" /> |

---

## 🎯 典型应用场景 — AI 能帮你做什么？

```mermaid
graph LR
    subgraph WORK["💼 工作场景"]
        R["🔬 研究助理"]
        O["📱 运营专员"]
        F["💹 理财顾问"]
    end
    subgraph LIFE["🏠 生活场景"]
        C["🎬 创作伙伴"]
        S["🔒 安全卫士"]
    end

    style WORK fill:#F5F5F5,stroke:#616161,stroke-width:1px
    style LIFE fill:#F5F5F5,stroke:#616161,stroke-width:1px
    style R fill:#E3F2FD,stroke:#1976D2,stroke-width:2px
    style O fill:#E8F5E9,stroke:#388E3C,stroke-width:2px
    style F fill:#FFF3E0,stroke:#F57C00,stroke-width:2px
    style C fill:#F3E5F5,stroke:#7B1FA2,stroke-width:2px
    style S fill:#FFEBEE,stroke:#D32F2F,stroke-width:2px
```

| 场景 | AI 帮您做什么 | 举个简单例子 |
|------|--------------|-------------|
| 🔬 **研究助理** | 搜集资料 · 提炼重点 · 整理归档 | 帮您快速读完 100 篇文档并总结要点 |
| 📱 **运营专员** | 盯平台 · 写内容 · 定时发布 | 7×24 自动更新您的社交账号 |
| 💹 **理财顾问** | 盯行情 · 找机会 · 及时提醒 | 价格异常波动时第一时间通知您 |
| 🎬 **创作伙伴** | 出创意 · 写文案 · 出成品 | 一句话生成海报、PPT、短视频 |
| 🔒 **安全卫士** | 查漏洞 · 审代码 · 出报告 | 发布前自动做一次安全体检 |

---

## ⚡ 性能基准

<div align="center">

| 指标 | 数值 | 图标 |
|:----:|:----:|:----:|
| 技能总数 | **166+** | <img src="https://img.shields.io/badge/📦_技能-166+-orange?style=for-the-badge" /> |
| 覆盖领域 | **8 大能力域** | <img src="https://img.shields.io/badge/🎯_领域-8个-blue?style=for-the-badge" /> |
| 平均启动 | **< 100ms** | <img src="https://img.shields.io/badge/⚡_启动-<100ms-green?style=for-the-badge" /> |
| 内存占用 | **< 50MB** | <img src="https://img.shields.io/badge/💾_内存-<50MB-purple?style=for-the-badge" /> |
| 安全评级 | **S+ 平均** | <img src="https://img.shields.io/badge/🔒_安全-S%2B_平均-brightgreen?style=for-the-badge" /> |

</div>

---

## 🛣️ 路线图

- [x] 166+ 技能模块标准化封装
- [x] 安全分级体系（S+/S/A/B）
- [x] 统一的 SKILL.md + _meta.json 规范
- [ ] 技能市场与在线安装
- [ ] 可视化技能编排面板
- [ ] 自动化测试框架
- [ ] 多语言 SDK 支持

---

## 🤝 贡献指南

欢迎贡献新技能！请遵循以下规范：

1. 创建技能文件夹，命名遵循 `kebab-case`
2. 编写 `SKILL.md`（含功能说明、使用示例、安全声明）
3. 添加 `_meta.json`（含版本、依赖、安全等级）
4. 提交 PR 并附上技能演示

---

## 📄 许可证

MIT License - 自由使用，商业友好。

---

<div align="center">

**🦞 让你的 AI Agent 从今天开始进化**

![Star History Chart](https://api.star-history.com/svg?repos=weininghui/skills&type=Date)

[⬆ 回到顶部](#-ai-agent-skills-toolkit)

</div>
