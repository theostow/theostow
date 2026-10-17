<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Theo Alexandre | Portfólio</title>
<meta name="description" content="Portfólio de Theo Alexandre: desenvolvedor Java, em formação em Engenharia de Software e iniciante em Cyber Security.">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
<style>
  :root {
    --bg: #1f140c;
    --bg-2: #2a1b11;
    --bg-3: #33221596;
    --fg: #ffffff;
    --muted: #cdbba9;
    --line: rgba(255, 255, 255, .16);
    --line-strong: rgba(255, 255, 255, .55);
    --sans: 'Inter', system-ui, -apple-system, 'Segoe UI', Roboto, Arial, sans-serif;
    --mono: 'JetBrains Mono', 'Courier New', monospace;
  }
  * { box-sizing: border-box; margin: 0; padding: 0; }
  html { scroll-behavior: smooth; }
  body {
    background: var(--bg);
    color: var(--fg);
    font-family: var(--sans);
    line-height: 1.65;
    -webkit-font-smoothing: antialiased;
  }
  a { color: inherit; }

  .wrap { max-width: 1000px; margin: 0 auto; padding: 0 24px; }

  /* ---------- Navegação ---------- */
  nav {
    position: sticky; top: 0; z-index: 10;
    background: rgba(31, 20, 12, .88);
    backdrop-filter: blur(8px);
    border-bottom: 1px solid var(--line);
  }
  nav .wrap { display: flex; justify-content: space-between; align-items: center; height: 60px; gap: 16px; }
  .brand { font-weight: 700; letter-spacing: .2px; text-decoration: none; }
  nav ul { list-style: none; display: flex; gap: 26px; }
  nav ul a { text-decoration: none; font-size: 14px; color: var(--muted); transition: color .2s; }
  nav ul a:hover { color: var(--fg); }
  @media (max-width: 640px) { nav ul { display: none; } }

  /* ---------- Hero ---------- */
  .hero { position: relative; overflow: hidden; border-bottom: 1px solid var(--line); }
  #net { position: absolute; inset: 0; width: 100%; height: 100%; opacity: .55; }
  .hero .wrap {
    position: relative; z-index: 1;
    display: grid; grid-template-columns: 1.1fr .9fr; gap: 48px; align-items: center;
    padding-top: 96px; padding-bottom: 96px;
  }
  @media (max-width: 860px) { .hero .wrap { grid-template-columns: 1fr; padding-top: 64px; padding-bottom: 64px; } }

  .status {
    display: inline-flex; align-items: center; gap: 10px;
    font-family: var(--mono); font-size: 12.5px; color: var(--muted);
    border: 1px solid var(--line); border-radius: 999px; padding: 6px 14px; margin-bottom: 22px;
  }
  .dot { width: 8px; height: 8px; border-radius: 50%; background: #fff; position: relative; }
  .dot::after { content: ''; position: absolute; inset: 0; border-radius: 50%; background: #fff; animation: ping 1.8s ease-out infinite; }
  @keyframes ping { from { transform: scale(1); opacity: .7; } to { transform: scale(3); opacity: 0; } }

  h1 { font-size: clamp(36px, 6vw, 58px); line-height: 1.08; font-weight: 700; letter-spacing: -1px; margin-bottom: 16px; }
  .role { font-size: clamp(17px, 2.4vw, 21px); color: var(--muted); margin-bottom: 8px; }
  .lead { color: var(--muted); max-width: 520px; margin-bottom: 30px; }

  .btns { display: flex; gap: 12px; flex-wrap: wrap; }
  .btn {
    display: inline-flex; align-items: center; gap: 10px;
    padding: 10px 18px; border: 1px solid var(--line-strong); border-radius: 8px;
    text-decoration: none; font-size: 14.5px; font-weight: 500;
    transition: background .2s, color .2s, transform .2s, border-color .2s;
  }
  .btn:hover { transform: translateY(-2px); background: rgba(255,255,255,.08); }
  .btn.solid { background: var(--fg); color: var(--bg); border-color: var(--fg); }
  .btn.solid:hover { background: #eadfd4; }
  .ico { width: 24px; height: 24px; border-radius: 50%; background: #fff; padding: 2px; display: block; flex: none; }
  .ico.sq { border-radius: 6px; padding: 0; }

  /* Janela de código */
  .code {
    background: #160e08; border: 1px solid var(--line); border-radius: 12px; overflow: hidden;
    box-shadow: 0 24px 60px rgba(0,0,0,.35);
  }
  .code-bar { display: flex; align-items: center; gap: 8px; padding: 11px 14px; border-bottom: 1px solid var(--line); background: #1d130b; }
  .code-bar i { width: 10px; height: 10px; border-radius: 50%; background: rgba(255,255,255,.28); display: block; }
  .code-bar span { margin-left: 8px; font-family: var(--mono); font-size: 12px; color: var(--muted); }
  pre { font-family: var(--mono); font-size: 13.5px; line-height: 1.8; padding: 18px 20px; min-height: 196px; white-space: pre-wrap; color: #f3ebe3; }
  .k { color: #ffffff; font-weight: 500; }
  .s { color: #e3c9ac; }
  .c { color: #9c8878; }
  .caret { display: inline-block; width: 8px; height: 1em; background: #fff; vertical-align: -2px; animation: blink 1s steps(1) infinite; }
  @keyframes blink { 50% { opacity: 0; } }

  /* ---------- Seções ---------- */
  section.s { padding: 84px 0; border-bottom: 1px solid var(--line); }
  .eyebrow { font-family: var(--mono); font-size: 12.5px; color: var(--muted); letter-spacing: 1.5px; text-transform: uppercase; margin-bottom: 10px; }
  h2 { font-size: 30px; font-weight: 700; letter-spacing: -.4px; margin-bottom: 30px; }

  .card {
    background: var(--bg-2); border: 1px solid var(--line); border-radius: 12px; padding: 24px;
    transition: border-color .25s, transform .25s;
  }
  .card:hover { border-color: var(--line-strong); transform: translateY(-3px); }
  .card h3 { font-size: 18px; font-weight: 600; margin-bottom: 4px; }
  .card p { color: var(--muted); font-size: 15px; }
  .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(270px, 1fr)); gap: 18px; }

  .about p { color: var(--muted); font-size: 17px; max-width: 720px; }
  .about p + p { margin-top: 14px; }

  .level { font-family: var(--mono); font-size: 12.5px; color: var(--muted); margin: 2px 0 14px; }
  .tags { display: flex; gap: 8px; flex-wrap: wrap; margin-top: 16px; }
  .tag { font-family: var(--mono); font-size: 12px; border: 1px solid var(--line-strong); border-radius: 6px; padding: 3px 10px; }

  /* Trilha */
  .track { list-style: none; position: relative; margin-left: 8px; padding-left: 28px; border-left: 1px solid var(--line-strong); }
  .track li { position: relative; padding: 4px 0 22px; }
  .track li:last-child { padding-bottom: 0; }
  .track li::before { content: ''; position: absolute; left: -34px; top: 12px; width: 11px; height: 11px; border-radius: 50%; background: var(--bg); border: 2px solid #fff; }
  .track b { font-weight: 600; display: block; }
  .track span { color: var(--muted); font-size: 14.5px; }

  .contact .btns { margin-top: 22px; }
  .contact p { color: var(--muted); max-width: 560px; }

  footer { padding: 30px 0 44px; color: var(--muted); font-size: 13.5px; }
  footer .wrap { display: flex; justify-content: space-between; flex-wrap: wrap; gap: 10px; }

  /* Entrada ao rolar */
  .reveal { opacity: 0; transform: translateY(18px); transition: opacity .7s ease, transform .7s ease; }
  .reveal.in { opacity: 1; transform: none; }

  @media (prefers-reduced-motion: reduce) {
    html { scroll-behavior: auto; }
    .dot::after, .caret { animation: none; }
    .reveal { opacity: 1; transform: none; transition: none; }
  }
</style>
</head>
<body>

<nav>
  <div class="wrap">
    <a class="brand" href="#top">Theo Alexandre</a>
    <ul>
      <li><a href="#sobre">Sobre</a></li>
      <li><a href="#habilidades">Habilidades</a></li>
      <li><a href="#cyber">Cyber Security</a></li>
      <li><a href="#contato">Contato</a></li>
    </ul>
  </div>
</nav>

<header class="hero" id="top">
  <canvas id="net" aria-hidden="true"></canvas>
  <div class="wrap">
    <div>
      <div class="status"><span class="dot"></span> Em formação · Engenharia de Software</div>
      <h1>Theo Alexandre</h1>
      <p class="role">Desenvolvedor Java</p>
      <p class="lead">Iniciante em Cyber Security, aprendendo a construir software com segurança desde o código.</p>
      <div class="btns">
        <a class="btn solid" href="#sobre">Sobre mim</a>
        <a class="btn" href="https://github.com/theostow" target="_blank" rel="noopener">
          <img class="ico" src="assets/github.png" alt="" width="24" height="24"> GitHub
        </a>
        <a class="btn" href="https://www.linkedin.com/in/theoals" target="_blank" rel="noopener">
          <img class="ico sq" src="assets/linkedin.png" alt="" width="24" height="24"> LinkedIn
        </a>
      </div>
    </div>

    <div class="code" aria-hidden="true">
      <div class="code-bar"><i></i><i></i><i></i><span>Desenvolvedor.java</span></div>
      <pre id="code"></pre>
    </div>
  </div>
</header>

<main>
  <section class="s" id="sobre">
    <div class="wrap reveal about">
      <div class="eyebrow">Sobre</div>
      <h2>Quem sou eu</h2>
      <p>Sou desenvolvedor Java e estou em formação em Engenharia de Software.</p>
      <p>Também estou começando em Cyber Security, com foco em entender como falhas surgem e como evitá-las ao escrever código.</p>
    </div>
  </section>

  <section class="s" id="habilidades">
    <div class="wrap reveal">
      <div class="eyebrow">Habilidades</div>
      <h2>Tecnologias e áreas</h2>
      <div class="grid">
        <div class="card">
          <h3>Java</h3>
          <p class="level">desenvolvedor</p>
          <p>Desenvolvimento de aplicações com Java e orientação a objetos.</p>
          <div class="tags"><span class="tag">Java</span><span class="tag">POO</span></div>
        </div>
        <div class="card">
          <h3>Engenharia de Software</h3>
          <p class="level">em formação</p>
          <p>Boas práticas de desenvolvimento e versionamento de código.</p>
          <div class="tags"><span class="tag">Git</span><span class="tag">GitHub</span></div>
        </div>
        <div class="card">
          <h3>Cyber Security</h3>
          <p class="level">iniciante</p>
          <p>Estudo dos fundamentos de segurança da informação.</p>
          <div class="tags"><span class="tag">Fundamentos</span></div>
        </div>
      </div>
    </div>
  </section>

  <section class="s" id="cyber">
    <div class="wrap reveal">
      <div class="eyebrow">Cyber Security</div>
      <h2>Trilha de estudos</h2>
      <!-- Edite a lista conforme o que você for estudando -->
      <ul class="track">
        <li><b>Fundamentos de redes</b><span>Como os dados trafegam e onde surgem as vulnerabilidades.</span></li>
        <li><b>Linux e linha de comando</b><span>Base para trabalhar com ferramentas e servidores.</span></li>
        <li><b>Criptografia básica</b><span>Hash, cifras e proteção de dados.</span></li>
        <li><b>OWASP Top 10 e Java seguro</b><span>Principais falhas em aplicações web e como preveni-las.</span></li>
        <li><b>Laboratórios práticos</b><span>TryHackMe e Hack The Box.</span></li>
      </ul>
    </div>
  </section>

  <section class="s contact" id="contato">
    <div class="wrap reveal">
      <div class="eyebrow">Contato</div>
      <h2>Vamos conversar</h2>
      <p>Encontre meu trabalho no GitHub ou entre em contato pelo LinkedIn.</p>
      <div class="btns">
        <a class="btn" href="https://github.com/theostow" target="_blank" rel="noopener">
          <img class="ico" src="assets/github.png" alt="" width="24" height="24"> github.com/theostow
        </a>
        <a class="btn" href="https://www.linkedin.com/in/theoals" target="_blank" rel="noopener">
          <img class="ico sq" src="assets/linkedin.png" alt="" width="24" height="24"> linkedin.com/in/theoals
        </a>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="wrap">
    <span>&copy; <span id="year"></span> Theo Alexandre</span>
    <span>Desenvolvedor Java</span>
  </div>
</footer>

<script>
  var reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  document.getElementById('year').textContent = new Date().getFullYear();

  // ---- Janela de código: digita linha a linha ----
  var codeLines = [
    '<span class="c">// perfil</span>',
    '<span class="k">public class</span> Desenvolvedor {',
    '    String nome = <span class="s">"Theo Alexandre"</span>;',
    '    String funcao = <span class="s">"Desenvolvedor Java"</span>;',
    '    String formacao = <span class="s">"Engenharia de Software"</span>;',
    '    String estudando = <span class="s">"Cyber Security"</span>;',
    '}'
  ];
  var pre = document.getElementById('code');
  var caret = '<span class="caret"></span>';
  if (reduce) {
    pre.innerHTML = codeLines.join('\n');
  } else {
    var li = 0, ci = 0;
    // digita o texto visível e preserva as tags de realce
    function visibleLen(html) { return html.replace(/<[^>]+>/g, '').length; }
    function sliceHtml(html, n) {
      var out = '', count = 0, i = 0, open = [];
      while (i < html.length && count < n) {
        if (html[i] === '<') {
          var j = html.indexOf('>', i);
          var tag = html.slice(i, j + 1);
          out += tag;
          if (tag.indexOf('</') === 0) open.pop(); else open.push(tag);
          i = j + 1;
        } else { out += html[i]; i++; count++; }
      }
      for (var k = open.length; k > 0; k--) out += '</span>';
      return out;
    }
    (function type() {
      var done = codeLines.slice(0, li).join('\n');
      var cur = li < codeLines.length ? sliceHtml(codeLines[li], ci) : '';
      pre.innerHTML = done + (li > 0 ? '\n' : '') + cur + caret;
      if (li >= codeLines.length) return;
      if (ci < visibleLen(codeLines[li])) { ci++; setTimeout(type, 22); }
      else { li++; ci = 0; setTimeout(type, 140); }
    })();
  }

  // ---- Rede de nós (animação de TI) ----
  (function () {
    var c = document.getElementById('net');
    var ctx = c.getContext('2d');
    var nodes = [], W, H, dpr = Math.min(window.devicePixelRatio || 1, 2);
    function resize() {
      var r = c.getBoundingClientRect();
      W = r.width; H = r.height;
      c.width = W * dpr; c.height = H * dpr;
      ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
      var n = Math.max(22, Math.min(60, Math.floor(W * H / 16000)));
      nodes = [];
      for (var i = 0; i < n; i++) nodes.push({
        x: Math.random() * W, y: Math.random() * H,
        vx: (Math.random() - .5) * .35, vy: (Math.random() - .5) * .35
      });
    }
    function draw() {
      ctx.clearRect(0, 0, W, H);
      for (var i = 0; i < nodes.length; i++) {
        var a = nodes[i];
        if (!reduce) {
          a.x += a.vx; a.y += a.vy;
          if (a.x < 0 || a.x > W) a.vx *= -1;
          if (a.y < 0 || a.y > H) a.vy *= -1;
        }
        for (var j = i + 1; j < nodes.length; j++) {
          var b = nodes[j], dx = a.x - b.x, dy = a.y - b.y, d = Math.sqrt(dx * dx + dy * dy);
          if (d < 130) {
            ctx.strokeStyle = 'rgba(255,255,255,' + (0.22 * (1 - d / 130)) + ')';
            ctx.lineWidth = 1;
            ctx.beginPath(); ctx.moveTo(a.x, a.y); ctx.lineTo(b.x, b.y); ctx.stroke();
          }
        }
        ctx.fillStyle = 'rgba(255,255,255,.75)';
        ctx.beginPath(); ctx.arc(a.x, a.y, 1.8, 0, Math.PI * 2); ctx.fill();
      }
      if (!reduce) requestAnimationFrame(draw);
    }
    resize(); draw();
    window.addEventListener('resize', function () { resize(); if (reduce) draw(); });
  })();

  // ---- Entrada suave das seções ----
  (function () {
    var items = document.querySelectorAll('.reveal');
    if (!('IntersectionObserver' in window) || reduce) {
      items.forEach(function (el) { el.classList.add('in'); });
      return;
    }
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (e) {
        if (e.isIntersecting) { e.target.classList.add('in'); io.unobserve(e.target); }
      });
    }, { threshold: .12 });
    items.forEach(function (el) { io.observe(el); });
  })();
</script>
</body>
</html>
