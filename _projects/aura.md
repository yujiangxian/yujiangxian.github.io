---
layout: project
title: "Aura"
description: "基于 AR 技术的 3D 虚拟助手，支持语音交互和空间定位，游戏级角色渲染。"
status: "概念"
status_class: "concept"
tech:
  - AR
  - Unity
  - Whisper
  - LLM
  - TTS
  - VRM
---

## 项目愿景

打造一个可以语音交互的 3D 虚拟助手，通过 AR 技术实现沉浸式视觉体验。用户能够与游戏级别的 3D 角色进行自然对话和指令交互。

类似永劫无间、王者荣耀等游戏的高质量角色，但它是你的 AI 助手，活在你的真实空间里。

## 核心特性

- 类游戏级 3D 角色模型，AR 呈现在真实环境中
- AI 语音交互：语音识别 + 大模型理解 + 声音克隆合成
- 口型同步、情感表达、动作反馈
- 空间感知和手势交互

## 技术方案

从全息投影（成本过高）优化为 AR 眼镜 + 移动设备方案：

| 层级 | 技术 |
|------|------|
| 显示 | AR 眼镜 (Rokid/Xreal) + 手机渲染 |
| 交互 | Whisper + LLM + TTS |
| 开发 | Unity + AR Foundation |
| 角色 | VRM 格式 (动画 + 表情) |
| 增强 | 口型同步 (SALSA) + 情感识别 |

## 与 Edge AI Assistant 的关系

Aura 的 AI 后端可以直接复用 Edge AI Assistant 的能力层（Gemma 4 + TTS + Whisper），前端换成 AR 渲染引擎。两个项目共享同一套 AI 基础设施。
