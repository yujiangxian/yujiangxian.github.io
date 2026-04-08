---
layout: project
title: "Edge AI Assistant"
description: "基于多模态大模型的边缘端 AI 助手，类似豆包 APP 的本地部署实现。全部模块本地运行，零数据外传。"
status: "进行中"
status_class: "active"
tech:
  - Gemma 4 E4B
  - GPT-SoVITS
  - Whisper
  - ROCm
  - MCP
  - A2A
github: "https://github.com/yujiangxian"
---

## 项目背景

在隐私优先的前提下，将多模态大模型、声音克隆、语音识别等能力集成到一台消费级设备上实时运行，实现完全本地化的智能交互终端。

## 核心架构

四层架构，自底向上：

```
┌─────────────────────────────────────────────┐
│  用户层    微信/企业微信/Web UI              │
├─────────────────────────────────────────────┤
│  应用层    消息路由 · 会话管理 · A2A 协议    │
├─────────────────────────────────────────────┤
│  Agent 层  任务编排 · 多 Agent · MCP 协议    │
├─────────────────────────────────────────────┤
│  能力层    Gemma 4 · TTS · Whisper          │
│            RX 9070 XT 16GB / RTX 5070 8GB   │
└─────────────────────────────────────────────┘
```

## 技术选型

### 多模态理解 — Gemma 4 E4B

Google DeepMind 2026.04 发布，有效参数 4.5B，原生支持文本 + 图像 + 音频三模态输入。INT4 量化后显存占用约 5.5-6 GB，通过 Ollama 部署。

一个模型覆盖文本对话、图像理解、视频理解、音频理解，大幅简化架构。

### 声音克隆 — GPT-SoVITS → 情感 TTS

V3 训练完成，效果满意。当前正在评估支持情感控制的替代方案：
- Chatterbox (Resemble AI) — 0.5B, MIT, 明确支持 AMD ROCm
- CosyVoice2 (阿里) — 轻量，中文效果好
- GLM-TTS (智谱) — 强化学习情感控制

### 语音识别 — Whisper

OpenAI Whisper small/tiny，CPU 推理即可实时识别。

## 部署策略

交互流程是串行的，分时复用 GPU：

1. 用户语音输入 → Whisper (CPU, 0 GPU)
2. 多模态理解 → Gemma 4 E4B (GPU, ~6 GB)
3. 语音合成 → TTS (GPU, ~2-3 GB)

任何时刻 GPU 上只有一个大模型，8GB 笔记本显存完全够用。

## 当前进度

- ✅ Gemma 4 E4B Ollama GPU 推理
- ✅ GPT-SoVITS V3 声音克隆训练
- ✅ Whisper 语音识别
- ✅ 完整流水线：Gemma 4 → TTS → 播放
- 🔄 情感 TTS 模型评估中
- ⏳ MCP Server 封装
- ⏳ Agent 层调度器
- ⏳ IM 接入

## 硬件环境

| 设备 | 配置 | 用途 |
|------|------|------|
| 台式机 | AMD RX 9070 XT 16GB | 开发测试 |
| 笔记本 | RTX 5070 8GB (待到手) | 最终部署目标 |
| 超算 | DCU 集群 64GB×8 | 模型训练 |
