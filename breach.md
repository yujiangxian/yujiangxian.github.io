---
layout: default
title: 系统异常日志
permalink: /breach/
body_class: breach-page
---

<style>
  body.breach-page { background: #050505; }
  body.breach-page::before { background: linear-gradient(90deg, transparent, #00ff99, transparent); }
  body.breach-page::after {
    content: '';
    position: fixed; inset: 0; pointer-events: none; z-index: 2000;
    background: repeating-linear-gradient(0deg, rgba(0, 255, 153, 0.045) 0 1px, transparent 1px 3px);
    animation: scanline 8s linear infinite;
  }
  @keyframes scanline {
    from { background-position-y: 0; }
    to { background-position-y: 200px; }
  }

  .breach-title {
    font-family: "JetBrains Mono", "Courier New", monospace;
    font-size: clamp(1.8rem, 6vw, 3.4rem);
    letter-spacing: 4px; text-align: center; color: #00ff99;
    margin: 2rem 0 0.5rem; text-transform: uppercase;
    animation: flicker 4s infinite;
  }
  @keyframes flicker {
    0%, 92%, 100% { opacity: 1; text-shadow: 0 0 8px rgba(0, 255, 153, 0.8); }
    93% { opacity: 0.35; }
    94% { opacity: 1; }
    95% { opacity: 0.15; }
    96% { opacity: 1; }
  }
  .breach-sub {
    text-align: center; color: #3d7a5f;
    font-family: "JetBrains Mono", monospace;
    font-size: 0.8rem; letter-spacing: 2px; margin-bottom: 2.5rem;
  }

  .console {
    background: #020a06; border: 1px solid #0f3a26; border-radius: 6px;
    padding: 1.3rem 1.5rem; min-height: 320px;
    font-family: "JetBrains Mono", "Courier New", monospace;
    font-size: 0.86rem; line-height: 1.9; color: #00ff99;
    box-shadow: inset 0 0 40px rgba(0, 255, 153, 0.05);
    overflow-wrap: anywhere;
  }
  .console div { animation: appear 0.25s ease both; }
  @keyframes appear { from { opacity: 0; } to { opacity: 1; } }
  .console .dim { color: #2f6b4f; }
  .console .warn { color: #ffb347; }
  .console .err { color: #ff4d6d; }
  .console .cursor {
    display: inline-block; width: 8px; height: 1em;
    background: #00ff99; vertical-align: text-bottom;
    animation: blink 1s steps(1) infinite;
  }
  @keyframes blink { 50% { opacity: 0; } }

  .breach-actions { text-align: center; margin: 2.5rem 0 1rem; }
  .glitch-btn {
    font-family: "JetBrains Mono", monospace; font-size: 1rem; letter-spacing: 3px;
    color: #00ff99; background: transparent; border: 1px solid #00ff99;
    padding: 0.8rem 2.2rem; cursor: pointer; position: relative;
    transition: left 0.12s linear, top 0.12s linear, box-shadow 0.3s, background 0.3s;
  }
  .glitch-btn:hover { background: rgba(0, 255, 153, 0.12); box-shadow: 0 0 22px rgba(0, 255, 153, 0.45); }

  .breach-foot {
    text-align: center; color: #245741; font-size: 0.78rem;
    font-family: "JetBrains Mono", monospace; margin-top: 2rem;
  }

  .breach-page h2 {
    color: #00ff99; border-bottom-color: #0f3a26;
    font-family: "JetBrains Mono", monospace;
    font-size: 1.1rem; letter-spacing: 2px;
  }
  .breach-page h2::before { background: #00ff99; }
  .breach-page a { color: #00ff99; }
  .breach-page nav .logo, .breach-page nav .nav-links a.active { color: #00ff99; }
</style>

<div class="breach-title">System Breached</div>
<p class="breach-sub">ERR_0xDEADBEEF · 观测所终端 · 请勿关闭窗口</p>

<div class="console" id="console"></div>

<div class="breach-actions">
  <button class="glitch-btn" id="flee">[ 修复我 ]</button>
</div>

<p class="breach-foot">* 本页面没有任何实际功能。你的电脑很安全。真的。</p>

<script>
(function () {
  var lines = [
    ['dim',  '> 正在建立连接 ...'],
    ['',     '> 连接成功。握手协议：你不需要知道。'],
    ['',     '> 正在解压你的灵魂 ... 47%'],
    ['warn', '> 警告：灵魂文件损坏 (ERR_0xDEADBEEF)'],
    ['dim',  '> 正在尝试从回收站恢复 ...'],
    ['err',  '> 回收站是空的。你一直都知道。'],
    ['',     '> 正在读取浏览记录 ...'],
    ['dim',  '> 已跳过 2,847 条。我们尊重你。部分尊重你。'],
    ['',     '> 正在计算人生意义 ...'],
    ['',     '> 结果：42。请自行解读。'],
    ['warn', '> 检测到 3 条未读消息 ...'],
    ['err',  '> 你为什么不回？'],
    ['',     '> 正在检测关闭本页的意图 ...'],
    ['warn', '> 检测到了。备份已完成。'],
    ['dim',  '> 备份位置：你知道的那个地方。'],
    ['',     '> 正在生成随机故障 ... 完成'],
    ['err',  '> 错误：没有错误。错误：没有错误。错误：没有错误。'],
    ['',     '> ...'],
    ['dim',  '> 你还在看。这很好。']
  ];

  var consoleEl = document.getElementById('console');
  var i = 0;

  function tick() {
    if (i >= lines.length) {
      var tail = document.createElement('div');
      tail.innerHTML = '> <span class="cursor"></span>';
      consoleEl.appendChild(tail);
      return;
    }
    var l = lines[i++];
    var el = document.createElement('div');
    if (l[0]) { el.className = l[0]; }
    el.textContent = l[1];
    consoleEl.appendChild(el);
    consoleEl.scrollTop = consoleEl.scrollHeight;
    setTimeout(tick, 380 + Math.random() * 420);
  }
  setTimeout(tick, 300);

  var msgs = [
    '修复失败：组件「灵魂」不存在',
    '修复失败：请先安装组件「灵魂」',
    '修复失败：安装包已损坏',
    '修复失败：请重试（将永远失败）',
    '修复失败：这不是一个 bug，这是一个 feature',
    '修复成功。开玩笑的。'
  ];

  var btn = document.getElementById('flee');
  function dodge() {
    var x = (Math.random() - 0.5) * 140;
    var y = (Math.random() - 0.5) * 90;
    btn.style.position = 'relative';
    btn.style.left = x + 'px';
    btn.style.top = y + 'px';
  }
  btn.addEventListener('mouseover', dodge);

  var clicks = 0;
  btn.addEventListener('click', function () {
    dodge();
    if (clicks < msgs.length) {
      var el = document.createElement('div');
      el.className = 'err';
      el.textContent = '> ' + msgs[clicks++];
      consoleEl.appendChild(el);
      consoleEl.scrollTop = consoleEl.scrollHeight;
    }
  });
})();
</script>
