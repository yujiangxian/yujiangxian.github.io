---
layout: project
title: "Kiro IM Bridge"
description: "将 Kiro IDE / Kiro CLI 扩展为 IM 通讯接入网关，让 AI Agent 能力直接触达 Slack、Discord、Telegram 等平台用户。"
status: "规划中"
status_class: "planning"
tech:
  - Kiro IDE
  - Kiro CLI
  - ACP
  - MCP
  - Slack API
  - Discord Bot
  - Telegram Bot API
---

## 项目愿景

Kiro 作为 AI IDE 已经具备强大的 Agent 能力（代码生成、文件操作、工具调用等）。但这些能力目前只能在 IDE 内使用。

Kiro IM Bridge 的目标是把这些能力通过 ACP (Agent Communication Protocol) 协议暴露出来，让 IM 平台的用户可以直接与 Kiro Agent 交互——不需要打开 IDE，在聊天窗口里就能完成开发任务。

## 核心场景

### 1. 团队协作
在 Slack/Discord 频道里 @KiroBot，直接让它帮你改代码、跑测试、部署服务。团队成员实时可见。

### 2. 移动办公
通过 Telegram 在手机上给 Kiro 下指令，远程操作开发环境。

### 3. 运维告警响应
监控系统告警推送到 IM → Kiro Agent 自动分析日志 → 给出修复建议或直接执行修复。

## 技术架构

```
┌──────────────────────────────────────────┐
│  IM 平台 (Slack / Discord / Telegram)    │
│  用户发送消息                             │
└──────────────┬───────────────────────────┘
               │ Webhook / WebSocket
┌──────────────▼───────────────────────────┐
│  IM Adapter Layer                        │
│  消息标准化 · 认证 · 限流                 │
└──────────────┬───────────────────────────┘
               │ ACP Protocol
┌──────────────▼───────────────────────────┐
│  Kiro Agent Runtime                      │
│  Kiro CLI / Agent SDK                    │
│  任务编排 · 上下文管理 · 工具调用         │
└──────────────┬───────────────────────────┘
               │ MCP Protocol
┌──────────────▼───────────────────────────┐
│  能力层 (MCP Servers)                    │
│  代码操作 · Git · 构建 · 部署 · AI 模型  │
└──────────────────────────────────────────┘
```

## 协议选型

### ACP (Agent Communication Protocol)

Google 提出的 Agent 间通信协议，用于 Agent 发现与任务委派。适合 IM Adapter 与 Kiro Agent 之间的通信。

### MCP (Model Context Protocol)

Anthropic 提出的模型上下文协议，用于 Agent 调用外部工具。Kiro 已原生支持。

## 支持平台

| 平台 | 接入方式 | 优先级 |
|------|---------|--------|
| Slack | Bolt SDK / Webhook | 高 |
| Discord | Discord.js Bot | 高 |
| Telegram | Bot API | 高 |
| 企业微信 | 官方机器人 API | 中 |
| 飞书 | 官方机器人 API | 中 |

## 规划路线

### Phase 1: 基础接入
- Telegram Bot 接入（最简单，适合验证）
- 文本消息 → Kiro Agent → 文本回复
- 基础认证和权限控制

### Phase 2: 丰富交互
- Slack / Discord 接入
- 支持文件上传/下载
- 代码块渲染
- 交互式按钮和菜单

### Phase 3: 深度集成
- ACP 协议完整实现
- 多 Agent 协作
- 会话上下文持久化
- 企业微信/飞书接入
