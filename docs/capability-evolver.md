# capability-evolver

> 🧬 AI Agent 自主进化引擎

## 概述

基于 GEP 协议的 Agent 自我进化引擎，实现运行时日志分析、自动修复与性能优化。

- **版本**: v1.27.3
- **安全等级**: S (最高安全等级)

---

## 核心功能

### 1. 自动日志分析

自动扫描 memory 和 history 文件，识别错误或低效模式。

### 2. 自我修复

检测崩溃并建议补丁，支持自动应用修复。

### 3. GEP 协议

标准化进化，所有进化事件可追溯、可审计。

### 4. 一键进化

只需运行 `node index.js` 即可启动完整进化周期。

---

## 运行模式

### 标准全自动模式（Mad Dog Mode）

直接执行检测→分析→修复→优化的完整循环，无需人工干预。

```bash
node index.js
```

### 人工审核模式

每步操作前暂停等待人工确认，适合生产环境。

```bash
node index.js --review
```

### 后台循环守护模式

后台守护进程式运行，适合持续优化。

```bash
node index.js --loop
```

---

## GEP 协议详解

GEP（Genome Evolution Protocol）是本系统的核心协议，通过结构化资产存储实现可审计、可追溯的进化过程。

### 核心资产

| 文件 | 说明 |
|-----|------|
| `assets/gep/genes.json` | 可复用基因定义 |
| `assets/gep/capsules.json` | 成功胶囊（避免重复推理） |
| `assets/gep/events.jsonl` | 仅追加进化事件日志 |

### 进化事件格式

```json
{
  "id": "event-001",
  "parent_id": null,
  "type": "mutation",
  "timestamp": "2024-01-01T00:00:00Z",
  "gene": "self-repair",
  "fitness": 0.85,
  "changes": [...]
}
```

---

## 目录结构

```
capability-evolver/
├── assets/
│   └── gep/
│       ├── genes.json          # 基因定义
│       └── capsules.json       # 成功胶囊
├── scripts/
│   ├── analyze_by_skill.js     # 按技能分析
│   ├── build_public.js         # 构建公开版本
│   ├── gep_append_event.js     # 追加进化事件
│   └── ...
├── src/
│   ├── gep/                    # GEP 协议实现
│   │   ├── a2a.js             # Agent 间通信
│   │   ├── analyzer.js        # 分析器
│   │   ├── memoryGraph.js     # 记忆图谱
│   │   └── ...
│   └── ops/                    # 运维操作
│       ├── health_check.js    # 健康检查
│       ├── self_repair.js     # 自我修复
│       └── ...
├── index.js                    # 主入口
├── package.json
└── README.md
```

---

## 显著优点

1. **零依赖设计**：仅使用 Node.js 内置模块，无第三方运行时依赖
2. **协议约束进化**：采用 GEP 协议，所有进化事件可追溯、可审计
3. **多层安全防护**：内置命令白名单、路径遍历防护、敏感信息自动脱敏
4. **智能资源管理**：Singleton Guard 防止多实例冲突，内存泄漏保护
5. **环境无关架构**：通过环境变量或动态检测实现本地偏好注入

---

## 潜在缺点与局限性

1. **自我修改的固有不确定性**：Agent 自主修改自身代码仍存在不可预测的行为风险
2. **审核门槛较高**：进化事件日志需要专业知识才能有效审计
3. **创新冷却机制可能抑制必要重构**
4. **A2A 资产传播依赖外部验证**

---

## 适合的目标群体

- AI Agent 开发者
- 自动化运维团队
- 研究型用户
- OpenClaw 生态用户

---

## 使用风险

| 风险项 | 级别 | 说明 |
|-------|-----|------|
| 命令执行 | Low | child_process 使用已加白名单和超时控制 |
| 路径遍历 | Info | 建议增加 `isPathSafe` 校验 |
| 配置误用 | Medium | Mad Dog Mode 默认启用，新手可能未审即部署 |
| 进化失控 | Low | GEP 协议提供理论可追溯性，但实际回滚需人工介入 |

---

## 最佳实践

1. **生产环境务必启用 `--review` 模式**
2. **配置独立的 git-sync cron job 作为安全网**
3. **定期归档 `memory/` 目录和 `events.jsonl`**
4. **配合 git 使用，确保可回滚**

---

## 相关资源

- GEP 协议文档: https://github.com/openclaw/gep
