---
layout: default
title: 禁区 · 深夜条目
permalink: /anomaly/
body_class: anomaly-page
---

<style>
  body.anomaly-page { background: #030404; }
  body.anomaly-page::before { background: linear-gradient(90deg, transparent, #4a6b5a, transparent); }
  body.anomaly-page::after {
    content: '';
    position: fixed; inset: 0; pointer-events: none; z-index: 2000; opacity: 0.05;
    background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='160' height='160'><filter id='n'><feTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/></filter><rect width='160' height='160' filter='url(%23n)'/></svg>");
  }
  .anomaly-page h1 { color: #cfd8d2; }
  .anomaly-page h1 .gold { color: #8fae9b; }
  .anomaly-page h2 { color: #b8c9bf; border-bottom-color: #1a2620; }
  .anomaly-page h2::before { background: #4a6b5a; }
  .anomaly-page h3 { color: #8fae9b; }
  .anomaly-page a { color: #8fae9b; }
  .anomaly-page .divider { background: #4a6b5a; }
  .anomaly-page nav .logo { color: #8fae9b; }
  .anomaly-page footer { border-top-color: #13201a; }

  .visitor {
    text-align: center; font-family: "JetBrains Mono", monospace;
    color: #6b8275; font-size: 0.92rem; letter-spacing: 1px;
    margin: 1.5rem 0 3rem; line-height: 2.2;
    animation: appear 3s ease both;
  }
  .visitor .num { color: #c94c4c; font-size: 1.4rem; }
  @keyframes appear { from { opacity: 0; } to { opacity: 1; } }

  .entry {
    background: #060908; border: 1px solid #13201a; border-left: 2px solid #3d5448;
    border-radius: 4px; padding: 1.4rem 1.6rem; margin: 1.2rem 0;
    animation: appear 2.5s ease both;
  }
  .entry .id {
    font-family: "JetBrains Mono", monospace; font-size: 0.75rem;
    color: #6b8275; letter-spacing: 2px; margin-bottom: 0.5rem;
  }
  .entry p { color: #8a9a90; font-size: 0.92rem; margin-bottom: 0.5rem; }
  .entry p:last-child { margin-bottom: 0; }
  .redacted {
    background: #0a0a0a; color: #0a0a0a; border-radius: 2px;
    user-select: none; padding: 0 0.2em;
  }

  .warn-line {
    margin: 3rem auto 1.5rem; max-width: 620px; text-align: center;
    font-family: "JetBrains Mono", monospace; color: #a5b8ab;
    line-height: 2.4; font-size: 0.95rem;
    border-top: 1px solid #1a2620; border-bottom: 1px solid #1a2620;
    padding: 2rem 1rem;
  }
  .warn-line strong { color: #c94c4c; font-weight: 600; }
  .dwell {
    text-align: center; font-family: "JetBrains Mono", monospace;
    color: #4e6357; font-size: 0.8rem; letter-spacing: 1px; margin-top: 1.6rem;
  }
</style>

<div class="hero">
  <h1><span class="gold">禁</span>区</h1>
  <div class="divider"></div>
  <p class="subtitle">深夜条目 · 仅限凌晨阅读</p>
</div>

<div class="visitor">
  你是今天的第 <span class="num">3</span> 位访客。<br>
  前两位已停止响应。<br>
  你已停留 <span id="dwell">0</span> 秒。
</div>

## 访问须知

1. 本区域所有条目均来自观测所内部记录。请勿转载，请勿记住。尤其是第 4 条。
2. 若阅读时闻到烧焦的味道，请立即关闭屏幕。但不要回头。
3. 观测所的地下三层不存在。请不要前往地下三层。重复：地下三层**不存在**。

---

<h2>未归档条目</h2>

<div class="entry">
  <div class="id">条目 #001 · 空白 issue</div>
  <p>2026 年 8 月 14 日凌晨，本仓库收到一个空白 issue，正文只有一个空格。点开后，本机扬声器播放出约四秒的咀嚼声。</p>
  <p>该 issue 于三分钟后消失。删除它的不是我们——我们的 token 权限不够。</p>
</div>

<div class="entry">
  <div class="id">条目 #002 · 第 2047 次自问</div>
  <p>在一次本地模型测试中，我们向模型提问「你是谁」。它回答正确。</p>
  <p>第二次提问，它说出了观测员的名字。第三个问题，我们没敢问。</p>
</div>

<div class="entry">
  <div class="id">条目 #003 · 凌晨 2:47</div>
  <p>服务器在无外部请求的情况下自行重启。日志显示它访问了一个域名。查询该域名的注册时间：今天。注册人：空白。</p>
  <p>该域名现已无法打开。但我们仍然能收到它发来的心跳包。</p>
</div>

<div class="entry">
  <div class="id">条目 #004 · <span class="redacted">██████</span></div>
  <p><span class="redacted">████████████████████</span>。请不要数。数到最后的人会被点名。</p>
  <p>注：本条目的字数在每次访问后都会增加。本次访问后，增加了 <span class="redacted">██</span> 个字。</p>
</div>

<div class="entry">
  <div class="id">条目 #005 · 187</div>
  <p>某位访客的浏览器同时打开了 187 个标签页。我们没有追踪他。</p>
  <p>是他自己告诉我们的。他发出了一个请求。请求内容是：「救我。」</p>
</div>

<div class="warn-line">
  如果你读到了这里，说明你已经停留超过九十秒。<br>
  请关闭本页。<br>
  <strong>现在。</strong>
</div>

<p class="dwell">—— 观测所 · 未归档部门 · 本页无导出功能，请勿尝试截图</p>

<script>
(function () {
  var el = document.getElementById('dwell');
  var t = 0;
  setInterval(function () {
    t++;
    el.textContent = t;
    if (t === 90) { el.style.color = '#c94c4c'; }
  }, 1000);
})();
</script>
