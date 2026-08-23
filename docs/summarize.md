# summarize

> 🧾 多模态智能内容摘要助手

## 概述

多模态内容总结工具，支持网页、PDF、图片、音频及 YouTube 视频的智能摘要。

- **版本**: v1.0.0
- **安全等级**: A

---

## 核心功能

### 1. 多格式支持

单一工具处理文本网页、PDF 文档、图像 OCR、音频转录及 YouTube 视频。

### 2. 多模型支持

支持 OpenAI、Anthropic、xAI、Google 四大主流模型。

### 3. 灵活输出

输出长度支持五级调节（short 至 xxl），并提供 `--json` 机器可读模式。

### 4. 智能降级

内置 Firecrawl 与 Apify 备用机制，应对网站反爬或 YouTube 解析失败。

---

## 安装依赖

### macOS

```bash
brew install steipete/tap/summarize
```

### 其他平台

```bash
# 从源码安装
git clone https://github.com/steipete/summarize.git
cd summarize
npm install
npm link
```

---

## 配置说明

### 支持的 AI 服务商

| 服务商 | 环境变量 |
|-------|---------|
| OpenAI | `OPENAI_API_KEY` |
| Anthropic | `ANTHROPIC_API_KEY` |
| xAI | `XAI_API_KEY` |
| Google | `GOOGLE_API_KEY` |

### 默认配置

```bash
# 默认使用 Google Gemini 3 Flash
export GOOGLE_API_KEY="your-key"

# 或配置 OpenAI
export OPENAI_API_KEY="sk-xxx"
```

### 配置文件

可在 `~/.summarize/config.json` 中预设默认模型：

```json
{
  "defaultModel": "google/gemini-3-flash-preview",
  "defaultLength": "medium"
}
```

---

## 使用示例

### 网页摘要

```bash
# 基础摘要
summarize "https://example.com/article"

# 指定模型
summarize "https://example.com" --model google/gemini-3-flash-preview

# 指定输出长度
summarize "https://example.com" --length long

# JSON 输出
summarize "https://example.com" --json
```

### PDF 摘要

```bash
summarize "/path/to/document.pdf"
summarize "/path/to/paper.pdf" --length short
```

### 图片 OCR + 摘要

```bash
summarize "/path/to/image.png"
```

### 音频摘要

```bash
summarize "/path/to/audio.mp3"
```

### YouTube 视频摘要

```bash
summarize "https://youtu.be/xxx" --youtube auto
summarize "https://youtu.be/xxx" --youtube transcript
```

---

## 输出长度选项

| 选项 | 说明 |
|-----|------|
| `--length short` | 简短摘要（100-200 字） |
| `--length medium` | 中等摘要（300-500 字） |
| `--length long` | 详细摘要（500-1000 字） |
| `--length xlong` | 超长摘要（1000-2000 字） |
| `--length xxlong` | 最长摘要（2000+ 字） |
| `--length 500` | 指定字符数 |

---

## 显著优点

1. **多模态覆盖能力**：单一工具即可处理文本网页、PDF、图像、音频及 YouTube
2. **供应商中立性**：不绑定任何单一 AI 服务商，可自由切换
3. **智能降级**：内置 Firecrawl 与 Apify 备用机制
4. **零配置启动**：默认模型即开即用
5. **结构化输出**：`--json` 标志支持流水线集成

---

## 潜在缺点与局限性

1. **外部依赖链条较长**：核心功能完全依赖外部 CLI 工具
2. **隐私边界模糊**：用户需自行承担内容上传至第三方 AI 服务商的风险
3. **YouTube 限制**：依赖 Apify 备用方案，需额外配置 token
4. **超长内容截断**：受限于 AI 模型上下文窗口

---

## 适合的目标群体

- 知识工作者：快速消化大量网页文章、研究报告
- 内容创作者：提取视频脚本要点、整理采访素材
- 研究人员：批量处理 PDF 文献，生成阅读笔记
- 多语言用户：利用 AI 模型跨语言总结外文资料

---

## 使用风险

| 风险类型 | 说明 | 缓解建议 |
|---------|------|---------|
| 数据外泄 | 敏感文档上传至第三方服务 | 避免处理机密/个人信息 |
| API 密钥泄露 | 环境变量配置不当 | 使用密钥管理工具 |
| 服务中断 | T3 项目维护不确定性 | 锁定版本，准备备用工具 |
| 内容合规 | AI 摘要可能遗漏关键细节 | 关键决策仍需人工核对原文 |

---

## 相关资源

- GitHub: https://github.com/steipete/summarize
