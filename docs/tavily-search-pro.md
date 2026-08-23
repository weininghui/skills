# tavily-search-pro

> 🔎 AI 驱动的全能搜索研究平台

## 概述

基于 Tavily API 的 AI 搜索平台，支持网页/新闻/财经搜索、URL 内容提取、网站爬取与深度研究，为知识工作者提供结构化信息获取能力。

- **版本**: v1.0.0
- **安全等级**: S (最高安全等级)

---

## 核心功能

### 1. Search（通用搜索）

支持基础与高级两种深度，可获取 LLM 合成答案、原始页面内容、图片链接。

**参数说明**：
- `--answer`: 生成 LLM 合成答案
- `--depth basic|advanced`: 搜索深度
- `--time-range day|week|month|year`: 时间过滤
- `--include-domains`: 域名白名单
- `--exclude-domains`: 域名黑名单
- `--country`: 国家/地区加权

**使用示例**：
```bash
# 基础搜索
python3 tavily_search.py search "AI 最新进展"

# 带答案的高级搜索
python3 tavily_search.py search "量子计算" --answer --depth advanced

# 时间过滤
python3 tavily_search.py search "机器学习" --time-range week

# 域名过滤
python3 tavily_search.py search "Python" --include-domains "github.com,stackoverflow.com"
```

### 2. News/Finance（垂直搜索）

针对新闻和财经场景优化的搜索模式，自动设置对应主题参数。

**使用示例**：
```bash
# 新闻搜索
python3 tavily_search.py search "AI 政策" --topic news

# 财经搜索
python3 tavily_search.py search "特斯拉股价" --topic finance
```

### 3. Extract（内容提取）

从指定 URL 提取可读内容，支持 Markdown/Text 格式输出。

**参数说明**：
- `--format markdown|text`: 输出格式
- `--include-raw-content`: 包含原始内容
- `--extract-depth basic|advanced`: 提取深度

**使用示例**：
```bash
# 基础提取
python3 tavily_search.py extract "https://example.com/article"

# 高级提取（基于查询词重排序）
python3 tavily_search.py extract "https://example.com/paper" --query "机器学习" --extract-depth advanced

# 输出为文本格式
python3 tavily_search.py extract "https://example.com" --format text
```

### 4. Crawl（网站爬取）

从根 URL 开始递归抓取，支持自然语言指令、路径包含/排除规则。

**参数说明**：
- `--max-depth`: 最大爬取深度
- `--max-pages`: 最大页面数
- `--instructions`: 自然语言指令
- `--include-paths`: 路径包含规则
- `--exclude-paths`: 路径排除规则

**使用示例**：
```bash
# 基础爬取
python3 tavily_search.py crawl "https://docs.example.com"

# 限制深度和数量
python3 tavily_search.py crawl "https://blog.example.com" --max-depth 2 --max-pages 50

# 自然语言指令
python3 tavily_search.py crawl "https://example.com" --instructions "只爬取 API 文档页面"

# 路径过滤
python3 tavily_search.py crawl "https://example.com" --include-paths "/docs/*" --exclude-paths "/blog/*"
```

### 5. Map（站点地图）

快速发现网站全部 URL 结构，支持深度与数量限制。

**使用示例**：
```bash
# 生成站点地图
python3 tavily_search.py map "https://example.com"

# 限制深度
python3 tavily_search.py map "https://example.com" --max-depth 3
```

### 6. Research（深度研究）

AI 驱动的综合研究报告生成，提供 mini/pro/auto 三档模型选择。

**参数说明**：
- `--model mini|pro|auto`: 模型选择
- `--max-sources`: 最大引用源数量
- `--report-format`: 报告格式

**使用示例**：
```bash
# 基础研究
python3 tavily_search.py research "机器学习发展趋势"

# 使用 pro 模型
python3 tavily_search.py research "量子计算应用" --model pro

# 限制引用源
python3 tavily_search.py research "AI 伦理" --max-sources 10
```

---

## 配置说明

### 环境变量

```bash
export TAVILY_API_KEY="tvly-xxx"
```

### OpenClaw 配置

```json
{
  "env": {
    "TAVILY_API_KEY": "tvly-xxx"
  }
}
```

---

## 显著优点

1. **功能集成度高**：单一技能覆盖搜索、提取、爬取、研究全链路
2. **输出格式灵活**：同时支持人类可读的文本格式与机器可解析的 JSON 格式
3. **精细化控制丰富**：深度、时间、域名、地域、路径等多维度过滤参数
4. **权威数据源**：直接对接 Tavily 专业搜索 API，结果质量优于通用搜索引擎
5. **研究模式独特**：内置引用溯源的 AI 研究报告生成

---

## 潜在缺点与局限性

1. **成本敏感**：高级模式、研究功能消耗多倍 API 积分
2. **网络依赖强**：完全依赖 Tavily 服务端，无本地缓存或离线能力
3. **爬取深度受限**：最大深度与页面数限制较为保守
4. **无结果后处理**：提取/爬取内容无本地持久化

---

## 适合的目标群体

- 知识工作者、研究员、分析师
- 产品经理、市场人员
- 开发者、技术写作者
- 内容创作者
- 学生、学者

---

## 使用风险

| 风险类型 | 说明 | 缓解建议 |
|---------|------|---------|
| API 配额耗尽 | 高频调用可能快速消耗积分 | 监控使用量并设置预算告警 |
| 网络超时 | 研究请求默认 120 秒超时 | 做好重试准备 |
| 数据隐私 | 所有查询内容发送至 Tavily 服务器 | 敏感信息需谨慎处理 |
| 结果时效性 | 依赖 Tavily 索引更新频率 | 实时性要求极高的场景可能滞后 |

---

## API 成本参考

| 操作 | 消耗积分 |
|-----|---------|
| 基础搜索 | 1 |
| 高级搜索 | 2 |
| 内容提取 | 1 |
| 网站爬取 | 2 |
| 研究（mini） | 5 |
| 研究（pro） | 10 |

---

## 相关资源

- Tavily 官网: https://tavily.com/
- API 文档: https://docs.tavily.com/
