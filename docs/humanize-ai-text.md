# humanize-ai-text

> 📝 AI 文本特征检测与优化工具

## 概述

基于 AI 写作特征指南的文本优化工具，通过检测并改写 16 类 AI 模式，帮助用户提升 AI 生成内容的自然度和可读性。

- **版本**: v1.0.1
- **安全等级**: A

---

## 核心功能

### 1. AI 文本检测

扫描文本并输出 AI 概率评分（低/中/高/极高）。

### 2. 自动改写

修复引用错误、移除 Markdown 格式、简化填充短语。

### 3. 对比分析

提供改写前后的对比分析，量化效果。

### 4. 批量处理

支持批量处理和 JSON 输出。

---

## 组件说明

| 脚本 | 功能 |
|-----|------|
| `detect.py` | 检测 AI 文本，输出概率评分 |
| `transform.py` | 自动改写，修复 AI 特征 |
| `compare.py` | 对比改写前后效果 |
| `patterns.json` | 检测模式配置 |

---

## 使用示例

### 检测 AI 文本

```bash
# 基础检测
python3 scripts/detect.py "Your text here"

# JSON 输出
python3 scripts/detect.py "Your text here" --json

# 纯分数输出
python3 scripts/detect.py "Your text here" --score-only
```

### 自动改写

```bash
# 基础改写
python3 scripts/transform.py "Your text here"

# 激进模式（深度简化）
python3 scripts/transform.py "Your text here" --aggressive

# 指定输出文件
python3 scripts/transform.py "Your text here" -o output.txt
```

### 对比分析

```bash
# 对比改写效果
python3 scripts/compare.py "Original text" "Rewritten text"
```

---

## 检测模式

### 16 类 AI 写作特征

| 类别 | 级别 | 示例 |
|-----|------|------|
| 引用错误 | 关键 | `oaicite:0` 等无效引用 |
| 知识截止声明 | 关键 | "As an AI language model..." |
| Chatbot 口头禅 | 高 | "I'd be happy to help" |
| 过度礼貌 | 高 | "Please don't hesitate to ask" |
| 弯引号滥用 | 中 | "" 而非 "" |
| 破折号过度 | 中 | 多处使用 em dash |
| 排比结构 | 中 | 过度使用三段式 |
| AI 词汇 | 低 | "delve", "tapestry", "landscape" |
| 促销性语言 | 低 | "revolutionary", "game-changing" |
| 系动词回避 | 低 | 避免使用 "is", "are" |
| 填充短语 | 低 | "In conclusion", "Furthermore" |
| 被动语态 | 低 | 过度使用被动句 |
| 长句堆砌 | 低 | 句子结构过于复杂 |
| 缺乏个性 | 低 | 缺少个人观点或情感 |
| 过度解释 | 低 | 对简单概念过度阐述 |
| 结构刻板 | 低 | 过于规整的段落结构 |

---

## 显著优点

1. **权威方法论**：直接采用 Wikipedia 社区数千案例总结的检测标准
2. **零依赖安全**：仅使用 Python 标准库，无第三方包风险
3. **自动化程度高**：自动修复 10+ 类模式
4. **可定制规则**：通过 JSON 配置文件扩展词汇库和替换规则

---

## 潜在缺点与局限性

1. **AI 词汇表需要人工判断**：无法全自动处理
2. **激进模式可能过度简化**：损失原文专业性
3. **对非英语文本支持有限**
4. **检测对抗性**：AI 检测器持续进化，绕过效果非永久保证

---

## 适合的目标群体

- 内容运营团队：批量优化 AI 辅助生成的内容
- 技术写作者：消除技术文档中的机器感表达
- 编辑校对人员：作为 AI 内容预审工具
- 研究人员：分析 AI 写作特征分布

---

## 使用风险

| 风险类型 | 说明 | 缓解建议 |
|---------|------|---------|
| 合规风险 | 可能违反学术诚信政策 | 仅用于合法用途 |
| 质量风险 | 激进模式可能过度简化 | 谨慎使用 `-a` 标志 |
| 误判风险 | 静态模式库可能误伤正当表达 | 人工审核最终结果 |
| 维护风险 | patterns.json 需手动更新 | 定期检查更新 |

---

## 配置文件

### patterns.json 结构

```json
{
  "ai_phrases": ["delve", "tapestry", "landscape"],
  "marketing_phrases": ["revolutionary", "game-changing"],
  "filler_phrases": ["In conclusion", "Furthermore"],
  "replacements": {
    "I'd be happy to help": "",
    "As an AI": ""
  }
}
```

### 自定义规则

```json
{
  "custom_patterns": [
    {
      "pattern": "your custom regex",
      "category": "custom",
      "level": "medium"
    }
  ]
}
```

---

## 相关资源

- GitHub: https://github.com/moltbro/humanize-ai-text
