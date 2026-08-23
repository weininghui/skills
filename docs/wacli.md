# wacli

> 📱 WhatsApp 命令行消息管理专家

## 概述

WhatsApp 命令行管理方案，支持消息发送、历史同步与搜索，实现企业级通信自动化。

- **版本**: latest
- **安全等级**: A

---

## 核心功能

### 1. 消息发送

支持文本消息和文件传输，可用于一对一通信或群组消息。

### 2. 历史同步

保持本地与 WhatsApp 服务器的聊天记录同步。

### 3. 消息搜索

基于关键词、时间范围精准检索历史消息。

### 4. 群组支持

支持群组消息发送和历史记录回填。

---

## 安装依赖

### macOS

```bash
brew install wacli
```

### Go 安装

```bash
go install github.com/nicholasgasior/wacli@latest
```

---

## 使用指南

### 首次登录

```bash
# 扫描 QR 码完成登录
wacli auth
```

### 持续同步

```bash
# 保持实时同步
wacli sync --follow

# 一次性同步
wacli sync
```

### 查询聊天

```bash
# 列出所有聊天
wacli chats list

# 限制数量
wacli chats list --limit 20

# 搜索特定联系人
wacli chats list --query "张三"

# 按号码搜索
wacli chats list --query "+8613800138000"
```

### 搜索消息

```bash
# 关键词搜索
wacli messages search "会议纪要"

# 在特定聊天中搜索
wacli messages search "项目进度" --chat <jid>

# 按时间范围搜索
wacli messages search "报告" --after "2024-01-01" --before "2024-01-31"
```

### 发送消息

#### 文本消息

```bash
# 一对一发送
wacli send text --to "+8613800138000" --message "你好"

# 群组发送
wacli send text --to "120363xxx@g.us" --message "大家好"
```

#### 文件传输

```bash
# 发送文件
wacli send file --to "+8613800138000" --file /path/to/file.pdf --caption "项目报告"

# 发送图片
wacli send file --to "+8613800138000" --file /path/to/image.jpg --caption "截图"
```

### 历史回填

```bash
# 回填特定聊天的历史记录
wacli history backfill --chat <jid> --requests 2 --count 50
```

---

## JID 格式说明

| 类型 | 格式 | 示例 |
|-----|------|------|
| 个人 | `<number>@s.whatsapp.net` | `8613800138000@s.whatsapp.net` |
| 群组 | `<id>@g.us` | `120363xxx@g.us` |

---

## 安全指南

### 发送前确认

文档明确要求「显式指定收件人+消息内容」和「发送前二次确认」，防止误操作。

### 敏感信息保护

```bash
# 不要在命令行中直接包含敏感信息
# 错误示例
wacli send text --to "+8613800138000" --message "密码是123456"

# 正确示例
wacli send file --to "+8613800138000" --file /path/to/secure-info.txt
```

### Token 安全

```bash
# Token 存储在 ~/.wacli 目录
# 确保目录权限正确
chmod 700 ~/.wacli
```

---

## 目录结构

```
~/.wacli/
├── config.json        # 配置文件
├── store.db          # 本地数据库
└── logs/             # 日志目录
```

---

## 显著优点

1. **纯文档封装**：Skill 本身不含可执行代码，降低注入风险
2. **强制确认机制**：防止误操作
3. **灵活查询**：支持按时间范围、聊天对象、关键词多维检索
4. **本地存储**：数据默认保存在 `~/.wacli`，用户可控
5. **命令行友好**：适合批量处理和脚本集成

---

## 潜在缺点与局限性

1. **外部依赖风险**：核心功能依赖独立的 `wacli` 二进制工具
2. **需手机在线**：历史补全功能要求用户手机保持联网
3. **JID 格式门槛**：需要先通过 `chats list` 查询 JID
4. **非双向交互**：仅支持「发送/搜索」，不处理接收消息的实时推送

---

## 适合的目标群体

- 需要向第三方自动发送 WhatsApp 消息的开发者
- 需要备份、审计或检索 WhatsApp 历史记录的团队
- 构建自动化通知系统的开发者
- 客户服务自动化场景

---

## 使用风险

| 风险类型 | 说明 | 缓解建议 |
|---------|------|---------|
| 供应链安全 | wacli 工具作者为知名开发者 | 仍需关注上游安全通告 |
| 数据残留 | `~/.wacli` 长期保存聊天记录 | 定期手动清理 |
| 社交工程误发 | 用户可能错发敏感信息 | 仔细核对收件人号码 |
| 账户限制 | 频繁操作可能触发反垃圾邮件机制 | 控制发送频率 |

---

## 最佳实践

1. **首次使用前先通过 `chats list` 了解 JID 格式**
2. **发送重要消息前使用 `--dry-run` 预览**
3. **定期清理 `~/.wacli` 目录**
4. **不要在命令行中直接包含敏感信息**
5. **控制发送频率，避免触发反垃圾邮件机制**

---

## 命令速查

| 命令 | 说明 |
|-----|------|
| `wacli auth` | 首次登录（扫描 QR 码） |
| `wacli sync --follow` | 持续同步 |
| `wacli chats list` | 列出聊天 |
| `wacli chats list --query "xxx"` | 搜索聊天 |
| `wacli messages search "xxx"` | 搜索消息 |
| `wacli messages search "xxx" --chat <jid>` | 在特定聊天中搜索 |
| `wacli send text --to "xxx" --message "xxx"` | 发送文本 |
| `wacli send file --to "xxx" --file /path --caption "xxx"` | 发送文件 |
| `wacli history backfill --chat <jid>` | 历史回填 |

---

## 相关资源

- GitHub: https://github.com/nicholasgasior/wacli
