# agent-browser

> 🌐 AI 原生浏览器自动化引擎

## 概述

Headless 浏览器自动化工具，通过无障碍树快照实现确定性元素选择，为 AI Agent 提供高性能、可隔离的多会话网页自动化能力。

- **版本**: v0.2.0
- **安全等级**: S+ (最高安全等级)

---

## 核心功能

### 1. 确定性元素选择

基于无障碍树快照生成稳定的 ref 引用，而非 CSS/XPath 选择器。

### 2. 会话隔离

多浏览器上下文并行，支持多角色测试。

### 3. 状态持久化

可将认证信息保存为 JSON 文件，跳过重复登录。

### 4. 网络控制

请求拦截、响应模拟、广告屏蔽。

---

## 安装依赖

```bash
npm install -g agent-browser
```

---

## 使用指南

### 基础工作流

```bash
# 1. 打开页面
agent-browser open "https://example.com"

# 2. 获取快照（JSON 格式）
agent-browser snapshot -i --json

# 3. 解析 refs 并交互
agent-browser click @e2
agent-browser fill @e3 "Hello World"
agent-browser type @e4 "This is a test"

# 4. 重新快照验证
agent-browser snapshot -i --json
```

### 会话管理

```bash
# 创建独立会话
agent-browser open "https://example.com" --session user1
agent-browser open "https://example.com" --session user2

# 在特定会话中操作
agent-browser click @e2 --session user1
```

### 状态持久化

```bash
# 保存状态（包含 cookies、localStorage）
agent-browser state save ./session.json

# 加载状态
agent-browser state load ./session.json
```

### 网络控制

```bash
# 拦截请求
agent-browser network route --abort "ads.example.com"

# 模拟响应
agent-browser network route --body '{"status": "ok"}' "/api/*"

# 查看请求日志
agent-browser network log
```

### 标签页管理

```bash
# 打开新标签页
agent-browser tab open "https://example.com"

# 切换标签页
agent-browser tab select 1

# 关闭标签页
agent-browser tab close 0
```

### iframe 处理

```bash
# 切换到 iframe
agent-browser frame select "iframe[name='content']"

# 切换回主框架
agent-browser frame select main
```

---

## 元素引用机制

### refs 格式

```json
{
  "refs": {
    "@e2": {
      "type": "button",
      "name": "Submit",
      "role": "button"
    },
    "@e3": {
      "type": "textbox",
      "name": "Email",
      "role": "textbox"
    }
  }
}
```

### 使用 refs 交互

```bash
# 点击按钮
agent-browser click @e2

# 填写表单
agent-browser fill @e3 "user@example.com"

# 选择下拉框
agent-browser select @e5 "option1"

# 勾选复选框
agent-browser check @e6
```

---

## 显著优点

1. **AI 原生设计**：JSON 输出 + refs 机制天然适合 LLM 解析
2. **性能优化**：Headless 模式 + 无障碍树比传统截图分析快 10-100 倍
3. **SPA 友好**：`wait --load networkidle` 和动态等待策略
4. **多会话测试**：同时模拟 admin/user 等多角色场景
5. **与内置工具互补**：文档明确区分使用场景

---

## 潜在缺点与局限性

1. **视觉能力缺失**：不生成截图，无法处理验证码、Canvas
2. **CLI 依赖**：需全局安装 `agent-browser` 及 Chromium
3. **学习成本**：refs 抽象层需要理解无障碍树概念
4. **生态局限**：相比 Playwright/Puppeteer，社区资源较少
5. **平台限制**：Chromium 依赖可能对部分部署环境造成负担

---

## 适合的目标群体

- AI Agent 开发者：需要结构化页面数据喂给 LLM
- 自动化测试工程师：多会话、状态复用的端到端测试
- 爬虫/数据采集：确定性导航优于视觉解析
- RPA 场景：表单填写、工作流编排

---

## 使用风险

| 风险类型 | 说明 | 缓解建议 |
|---------|------|---------|
| 目标网站风险 | 自动化操作可能触发反爬机制 | 合法授权范围内使用 |
| 会话数据泄露 | `state save` 存储的 cookies 需妥善保管 | 加密存储，限制访问权限 |
| 资源消耗 | Chromium 进程内存占用较高 | 批量任务需容器隔离 |
| 网络路由误配置 | `--abort` 可能意外阻断必要请求 | 仔细配置白名单 |

---

## 最佳实践

1. **优先使用 refs 而非 CSS 选择器**
2. **利用 `state save/load` 跳过重复登录**
3. **使用 `--session` 隔离不同测试场景**
4. **配置网络白名单避免意外阻断**
5. **批量任务使用容器隔离资源**

---

## 命令速查

| 命令 | 说明 |
|-----|------|
| `open <url>` | 打开页面 |
| `snapshot -i --json` | 获取交互元素快照 |
| `click <ref>` | 点击元素 |
| `fill <ref> <text>` | 填写表单 |
| `type <ref> <text>` | 输入文本 |
| `select <ref> <value>` | 选择下拉框 |
| `check <ref>` | 勾选复选框 |
| `state save <file>` | 保存状态 |
| `state load <file>` | 加载状态 |
| `network route --abort <pattern>` | 拦截请求 |
| `tab open <url>` | 打开新标签 |
| `frame select <name>` | 切换 iframe |

---

## 相关资源

- GitHub: https://github.com/vercel-labs/agent-browser
