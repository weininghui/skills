# self-improvement

> 🧠 AI 持续进化与知识沉淀系统

## 概述

通过结构化记录错误与纠正，实现 AI 跨会话持续进化与项目知识沉淀。

- **版本**: v1.0.0
- **安全等级**: S (最高安全等级)

---

## 核心功能

### 1. 错误记录

`ERRORS.md` 记录命令失败和异常，包含错误输出、环境上下文、复现步骤与修复建议。

### 2. 知识缺口

`LEARNINGS.md` 收录知识修正（correction）、知识缺口（knowledge_gap）、最佳实践（best_practice）。

### 3. 功能请求

`FEATURE_REQUESTS.md` 追踪用户能力需求，评估复杂度与实现路径。

### 4. 知识升级

临时记录 → 关联分析 → 规则提炼 → 项目记忆，形成完整知识生命周期。

---

## 目录结构

```
.learnings/
├── ERRORS.md              # 错误记录
├── LEARNINGS.md           # 知识缺口
└── FEATURE_REQUESTS.md    # 功能请求

assets/
├── LEARNINGS.md           # 学习模板
└── SKILL-TEMPLATE.md      # 技能模板

hooks/
└── openclaw/
    ├── HOOK.md            # Hook 文档
    ├── handler.js         # JavaScript 处理器
    └── handler.ts         # TypeScript 处理器

references/
├── examples.md            # 使用示例
├── hooks-setup.md         # Hook 配置
└── openclaw-integration.md # OpenClaw 集成

scripts/
├── activator.sh           # 激活脚本
├── error-detector.sh      # 错误检测器
└── extract-skill.sh       # 技能提取
```

---

## 记录格式

### 错误记录格式

```markdown
## ERR-20240101-001

**Type**: Command Failure
**Priority**: High
**Domain**: backend
**Status**: Open

### 错误描述
`npm install` 命令执行失败，报错 ERESOLVE 无法解析依赖树。

### 环境上下文
- Node.js: v18.17.0
- npm: v9.6.7
- OS: macOS 13.4

### 复现步骤
1. 克隆项目
2. 运行 `npm install`

### 修复建议
使用 `--legacy-peer-deps` 标志或升级依赖版本。
```

### 学习记录格式

```markdown
## LRN-20240101-001

**Type**: best_practice
**Priority**: Medium
**Domain**: javascript
**Status**: Promoted

### 学习内容
使用 `optional chaining` (?.) 可以避免空值引用错误。

### 上下文
在处理 API 响应时，经常遇到 `Cannot read property 'x' of undefined` 错误。

### 应用场景
所有可能为 null/undefined 的对象属性访问。

### 规则
在访问可能为空的对象属性时，始终使用 optional chaining。
```

---

## 触发场景

系统会自动检测以下场景并生成记录：

1. **命令失败**：执行命令返回非零退出码
2. **用户纠错**：用户明确指出错误并提供正确做法
3. **功能请求缺失**：用户期望的功能不存在
4. **API 异常**：API 返回意外响应
5. **知识过时**：发现文档或代码中的过时信息
6. **发现更优方案**：找到比当前实现更好的解决方案

---

## 工作流程

```
┌─────────────────┐
│  检测到触发场景  │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  生成结构化记录  │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  存入 .learnings │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  周期性审查      │
└────────┬────────┘
         │
         ├──── 成熟 ────▶ 升级为永久规则
         │
         └──── 过时 ────▶ 归档或删除
```

---

## 知识升级机制

### 升级条件

- 条目已解决（Status: Resolved）
- 被多次引用（Recurrence-Count > 3）
- 适用于多个文件/项目

### 升级目标

| 文件 | 说明 |
|-----|------|
| `CLAUDE.md` | 项目事实与约定 |
| `AGENTS.md` | 代理工作流与自动化规则 |
| `SOUL.md` | 核心价值观与行为准则 |

### 升级格式

```markdown
## [UPGRADED] LRN-20240101-001

**Source**: .learnings/LEARNINGS.md
**Promoted**: 2024-01-15
**Reason**: 被引用 5 次，适用于所有 JavaScript 项目

### 规则
使用 optional chaining (?.) 避免空值引用错误。
```

---

## 显著优点

1. **零配置开箱即用**：仅需创建 `.learnings/` 目录
2. **人机协作友好**：Markdown 格式兼容版本控制
3. **防复发设计**：通过周期性审查与模式检测
4. **代理互操作性**：编码代理可自动解析结构化日志
5. **渐进式知识沉淀**：临时记录 → 永久记忆

---

## 潜在缺点与局限性

1. **依赖人工触发判断**：复杂场景可能漏检
2. **日志膨胀风险**：需配合定期审查清理
3. **升级门槛主观**：缺乏量化标准
4. **无原生查询接口**：依赖 `grep` 等外部工具
5. **单向知识流**：不支持从永久记忆反向同步

---

## 适合的目标群体

- 长期迭代的大型项目团队
- 多 AI 代理协作环境
- 追求知识显性化的工程组织
- 个人开发者建立个人 AI 交互记忆库

---

## 使用风险

| 风险类型 | 说明 | 缓解建议 |
|---------|------|---------|
| 敏感信息泄露 | 错误日志可能捕获环境变量 | 配合 `.gitignore` 策略 |
| 过时学习污染 | 已修复问题的记录可能误导决策 | 定期审查清理 |
| 过度规范化成本 | 严格遵循模板可能增加记录摩擦 | 核心项目完整模板，快速项目简化 |
| 升级冲突 | 多人同时编辑可能导致合并冲突 | 结合版本控制工作流 |

---

## 配置 Hook

### OpenClaw 集成

```bash
# 激活 Hook
./scripts/activator.sh

# 配置错误检测器
./scripts/error-detector.sh
```

### 手动配置

在 `.opencode/config.json` 中添加：

```json
{
  "hooks": {
    "postCommand": "path/to/error-detector.sh"
  }
}
```

---

## 相关资源

- GitHub: https://github.com/openclaw/self-improvement
