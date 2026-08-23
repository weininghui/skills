# docker-sandbox

> 🐳 VM 级隔离的安全代码执行环境

## 概述

Docker 官方沙箱功能的文档型技能，指导用户创建 VM 级隔离环境安全运行 AI Agent，实现零信任代码执行与网络细粒度管控。

- **版本**: v1.0.0
- **安全等级**: A

---

## 核心功能

### 1. VM 级硬件隔离

基于轻量级 VM（非容器命名空间），提供真正的内核级隔离。

### 2. 细粒度网络控制

内置代理支持域名/IP 级别的白名单/黑名单，满足最小权限原则。

### 3. 多代理原生支持

一站式支持 Claude、Codex、Copilot、Gemini、Kiro 等主流 AI 编码代理。

### 4. 零依赖自包含

纯 Markdown 文档，无第三方代码依赖。

---

## 环境要求

- **Docker Desktop**: 4.49+ (必须)
- **操作系统**: Windows / macOS / Linux

---

## 使用指南

### 创建沙箱

```bash
# 创建 Claude 沙箱
docker sandbox create --name my-claude claude /workspace

# 创建 Codex 沙箱
docker sandbox create --name my-codex codex /workspace

# 创建 Copilot 沙箱
docker sandbox create --name my-copilot copilot /workspace
```

### 执行命令

```bash
# 在沙箱中执行命令
docker sandbox exec my-claude ls -la

# 交互式终端
docker sandbox exec -it my-claude bash

# 带环境变量
docker sandbox exec -e API_KEY=xxx my-claude node script.js
```

### 直接运行 Agent

```bash
# 启动 Agent 会话
docker sandbox run claude /workspace -- --model gpt-4
```

---

## 网络控制

### 默认拒绝策略

```bash
# 设置默认拒绝所有网络访问
docker sandbox network proxy my-claude --policy deny
```

### 允许特定域名

```bash
# 允许访问 npm 仓库
docker sandbox network proxy my-claude --allow registry.npmjs.org

# 允许访问 OpenAI API
docker sandbox network proxy my-claude --allow api.openai.com

# 允许访问 GitHub
docker sandbox network proxy my-claude --allow github.com
```

### 查看网络策略

```bash
docker sandbox network proxy my-claude --list
```

---

## 生命周期管理

```bash
# 列出所有沙箱
docker sandbox ls

# 停止沙箱
docker sandbox stop my-claude

# 启动沙箱
docker sandbox start my-claude

# 删除沙箱
docker sandbox rm my-claude

# 保存沙箱配置
docker sandbox save my-claude ./my-claude-config.json

# 重置沙箱
docker sandbox reset my-claude
```

---

## 目录结构

```
docker-sandbox/
├── SKILL.md              # 主文档
└── _meta.json            # 元数据
```

---

## 显著优点

1. **VM 级硬件隔离**：基于轻量级 VM，提供真正的内核级隔离
2. **细粒度网络控制**：内置代理支持域名/IP 级别的白名单/黑名单
3. **多代理原生支持**：一站式支持主流 AI 编码代理
4. **零依赖自包含**：纯 Markdown 文档，无第三方代码依赖
5. **工作目录自动挂载**：通过 virtiofs 实现高性能文件共享

---

## 潜在缺点与局限性

1. **平台限制**：仅支持 Docker Desktop 4.49+，Linux 原生 Docker 引擎不支持
2. **资源开销**：每个沙盒为独立 VM，内存/CPU 开销高于普通容器
3. **Node.js fetch 代理问题**：`globalThis.fetch` 不自动识别 `HTTP_PROXY` 环境变量
4. **Windows 路径转换问题**：Git Bash/MSYS2 环境下需设置 `MSYS_NO_PATHCONV=1`
5. **无持久化卷支持**：重启后状态重置（除非使用 `save` 保存为模板）

---

## 适合的目标群体

- 安全敏感型开发者：运行不可信代码或第三方 npm 包
- AI Agent 重度用户：频繁调用 Claude/Codex 等工具
- DevOps/SRE 工程师：构建可复现的 CI 测试环境
- 安全研究员：分析恶意样本或漏洞利用代码
- 企业合规团队：满足代码审计、供应链安全等合规要求

---

## 使用风险

| 风险类型 | 说明 | 缓解措施 |
|---------|------|---------|
| 供应链风险 | 维护者为个人开发者账号 | 定期审查更新，关注社区反馈 |
| 许可证风险 | 当前未声明开源许可证 | 使用前确认合规要求 |
| 配置风险 | 网络代理策略配置错误可能导致意外放通 | 遵循 `--policy deny` 最小化原则 |
| 更新风险 | 依赖 Docker Desktop 特定版本功能 | 关注 Docker 官方安全公告 |

---

## 最佳实践

1. **始终使用 `--policy deny` 作为默认网络策略**
2. **只允许必要的域名访问**
3. **定期使用 `docker sandbox reset` 清理环境**
4. **敏感项目使用独立的沙箱实例**
5. **保存重要配置为模板以便复用**

---

## 相关资源

- Docker 官方文档: https://docs.docker.com/desktop/sandbox/
