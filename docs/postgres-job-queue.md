# postgres-job-queue

> 🐘 零依赖 PostgreSQL 任务队列引擎

## 概述

PostgreSQL 原生作业队列，零依赖实现优先级调度与进度跟踪，适合已有 PG 基础设施、追求架构简化的技术团队。

- **版本**: v1.0.0
- **安全等级**: A

---

## 核心功能

### 1. 事务安全认领

利用 PostgreSQL 9.5+ 的 `FOR UPDATE SKIP LOCKED` 语法，实现高并发下的无锁竞争任务分发。

### 2. 优先级调度

通过 `(priority DESC, created_at ASC)` 复合排序实现多级优先级队列。

### 3. 进度可视化

内置 `progress`、`current_stage`、`events_count` 字段，支持长任务实时状态追踪。

### 4. 失效恢复

自动检测超时未完成的僵尸任务，重新放回待处理队列。

---

## 环境要求

- PostgreSQL 9.5+ (推荐 13+)
- Go 1.18+ (如使用 Go 客户端)

---

## 数据库设计

### 表结构

```sql
CREATE TABLE jobs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    status VARCHAR(20) NOT NULL DEFAULT 'pending',
    priority INTEGER NOT NULL DEFAULT 100,
    data JSONB NOT NULL DEFAULT '{}',
    progress INTEGER DEFAULT 0,
    current_stage VARCHAR(100),
    events_count INTEGER DEFAULT 0,
    attempts INTEGER DEFAULT 0,
    max_attempts INTEGER DEFAULT 3,
    claimed_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- 状态枚举
-- pending: 待处理
-- claimed: 已认领
-- running: 运行中
-- completed: 已完成
-- failed: 失败
```

### 索引优化

```sql
-- 可认领任务的部分索引（关键性能优化）
CREATE INDEX idx_jobs_claimable 
ON jobs (priority DESC, created_at ASC) 
WHERE status = 'pending';

-- 状态查询索引
CREATE INDEX idx_jobs_status 
ON jobs (status);

-- 认领时间索引（用于失效恢复）
CREATE INDEX idx_jobs_claimed_at 
ON jobs (claimed_at) 
WHERE status IN ('claimed', 'running');
```

---

## 核心函数

### 批量认领任务

```sql
CREATE OR REPLACE FUNCTION claim_job_batch(
    worker_id VARCHAR(100),
    batch_size INTEGER DEFAULT 10
)
RETURNS TABLE (
    id UUID,
    data JSONB,
    priority INTEGER
) AS $$
BEGIN
    RETURN QUERY
    UPDATE jobs
    SET 
        status = 'claimed',
        claimed_at = NOW()
    WHERE id IN (
        SELECT id
        FROM jobs
        WHERE status = 'pending'
        ORDER BY priority DESC, created_at ASC
        LIMIT batch_size
        FOR UPDATE SKIP LOCKED
    )
    RETURNING jobs.id, jobs.data, jobs.priority;
END;
$$ LANGUAGE plpgsql;
```

### 更新进度

```sql
CREATE OR REPLACE FUNCTION update_job_progress(
    job_id UUID,
    new_progress INTEGER,
    new_stage VARCHAR(100) DEFAULT NULL
)
RETURNS VOID AS $$
BEGIN
    UPDATE jobs
    SET 
        progress = new_progress,
        current_stage = COALESCE(new_stage, current_stage),
        events_count = events_count + 1,
        updated_at = NOW()
    WHERE id = job_id;
END;
$$ LANGUAGE plpgsql;
```

### 完成任务

```sql
CREATE OR REPLACE FUNCTION complete_job(job_id UUID)
RETURNS VOID AS $$
BEGIN
    UPDATE jobs
    SET 
        status = 'completed',
        progress = 100,
        updated_at = NOW()
    WHERE id = job_id;
END;
$$ LANGUAGE plpgsql;
```

### 失败任务

```sql
CREATE OR REPLACE FUNCTION fail_job(
    job_id UUID,
    error_message TEXT DEFAULT NULL
)
RETURNS VOID AS $$
BEGIN
    UPDATE jobs
    SET 
        status = CASE 
            WHEN attempts >= max_attempts - 1 THEN 'failed'
            ELSE 'pending'
        END,
        attempts = attempts + 1,
        claimed_at = NULL,
        updated_at = NOW()
    WHERE id = job_id;
END;
$$ LANGUAGE plpgsql;
```

---

## Go 客户端示例

### 连接配置

```go
import (
    "context"
    "github.com/jackc/pgx/v5/pgxpool"
)

func main() {
    pool, err := pgxpool.New(context.Background(), 
        "postgres://user:pass@localhost:5432/mydb")
    if err != nil {
        log.Fatal(err)
    }
    defer pool.Close()
}
```

### 添加任务

```go
func AddJob(ctx context.Context, pool *pgxpool.Pool, data map[string]interface{}) error {
    _, err := pool.Exec(ctx, 
        `INSERT INTO jobs (data, priority) VALUES ($1, $2)`,
        data, 100)
    return err
}
```

### 认领任务

```go
func ClaimJobs(ctx context.Context, pool *pgxpool.Pool, workerID string, batchSize int) ([]Job, error) {
    rows, err := pool.Query(ctx, 
        `SELECT * FROM claim_job_batch($1, $2)`, 
        workerID, batchSize)
    if err != nil {
        return nil, err
    }
    defer rows.Close()
    
    var jobs []Job
    for rows.Next() {
        var job Job
        if err := rows.Scan(&job.ID, &job.Data, &job.Priority); err != nil {
            return nil, err
        }
        jobs = append(jobs, job)
    }
    return jobs, nil
}
```

---

## 性能参考

| 场景 | 吞吐量 | 说明 |
|-----|--------|------|
| < 1000 jobs/s | ✅ 良好 | 推荐使用 |
| 1000-10000 jobs/s | ⚠️ 注意 | 需要优化配置 |
| > 10000 jobs/s | ❌ 不推荐 | 应考虑 Redis |

---

## 显著优点

1. **零外部依赖**：无需部署 Redis/RabbitMQ
2. **持久化保障**：任务状态持久化存储，服务重启不丢数据
3. **查询友好**：可直接用 SQL 查询任务状态
4. **水平扩展**：配合 `SKIP LOCKED` 与批量认领
5. **与业务数据同库**：任务数据与业务数据在同一事务内处理

---

## 潜在缺点与局限性

1. **吞吐上限**：超过 10000 jobs/s 时建议叠加 Redis
2. **延迟敏感场景**：PostgreSQL 的毫秒级响应无法满足亚毫秒级需求
3. **严格顺序保证**：若需全局 FIFO，必须限制单类型单 worker
4. **大消息体**：不建议直接存储大 payload
5. **运维复杂度**：需维护 `idx_jobs_claimable` 部分索引

---

## 适合的目标群体

- 中小型项目希望简化技术栈
- 已有 PostgreSQL 基础设施的团队
- 需要任务状态持久化的批处理场景
- 对运维成本敏感的初创团队

---

## 使用风险

| 风险点 | 说明 | 缓解措施 |
|-------|------|---------|
| 索引缺失 | 高并发认领全表扫描 | 严格创建 `idx_jobs_claimable` |
| SKIP LOCKED 误用 | 遗漏导致 worker 死锁 | 复制文档中的函数实现 |
| 大 payload 拖垮库表 | JSONB 字段存储大对象 | 仅存储元数据，payload 存 S3 |
| 僵尸任务堆积 | 崩溃 worker 遗留任务 | 部署 `RecoverStaleJobs` 定时任务 |
| 无限重试风暴 | `max_attempts` 配置不当 | 设置合理的重试上限与指数退避 |

---

## 相关资源

- PostgreSQL 文档: https://www.postgresql.org/docs/
