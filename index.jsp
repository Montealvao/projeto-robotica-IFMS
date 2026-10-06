<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Início — Laboratório de Robótica IFMS CG</title>

  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/fontawesome/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch:wght@500;600;700&family=IBM+Plex+Sans:wght@400;500&display=swap" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/robotica.css" rel="stylesheet">
</head>
<body>

  <!-- ================= MENU ================= -->
  <nav class="navbar navbar-expand-lg sticky-top navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="#">
        <i class="fa-solid fa-microchip dot me-1"></i> ROBÓTICA<span class="dot">.</span>IFMS <small class="text-muted-2 fw-normal">CG</small>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu" aria-controls="menu" aria-expanded="false" aria-label="Alternar menu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="menu">
        <ul class="navbar-nav ms-auto align-items-lg-center gap-lg-1">
          <li class="nav-item"><a class="nav-link active" href="#">Início</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Sobre</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Estudantes</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Atividades</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Participações</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Contato</a></li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="fa-solid fa-gear me-1"></i>Gerenciar
            </a>
            <ul class="dropdown-menu dropdown-menu-end">
              <li><a class="dropdown-item" href="#"><i class="fa-solid fa-user-plus me-2"></i>Novo estudante</a></li>
              <li><a class="dropdown-item" href="#"><i class="fa-solid fa-diagram-project me-2"></i>Nova atividade</a></li>
              <li><a class="dropdown-item" href="#"><i class="fa-solid fa-link me-2"></i>Associar participação</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#"><i class="fa-solid fa-table-list me-2"></i>Manutenção de estudantes</a></li>
              <li><a class="dropdown-item" href="#"><i class="fa-solid fa-table-list me-2"></i>Manutenção de atividades</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown ms-lg-2">
            <a class="btn btn-sm lang-btn dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="fa-solid fa-globe me-1"></i>PT
            </a>
            <ul class="dropdown-menu dropdown-menu-end">
              <li><a class="dropdown-item" href="#">🇧🇷 Português</a></li>
              <li><a class="dropdown-item" href="#">🇺🇸 English</a></li>
              <li><a class="dropdown-item" href="#">🇪🇸 Español</a></li>
              <li><a class="dropdown-item" href="#">🇫🇷 Français</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- ================= HERO ================= -->
  <header class="hero circuit-bg">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-8">
          <span class="tag mb-3"><i class="fa-solid fa-circle-nodes me-1"></i> IFMS · Campus Campo Grande</span>
          <h1 class="mt-3">Laboratório de <span>Robótica</span>: onde a nossa história é registrada.</h1>
          <p class="lead mt-3">
            Projetos, estudantes, oficinas e conquistas reunidos em um só lugar — para preservar a memória do laboratório e mostrar à comunidade o que construímos juntos.
          </p>
          <div class="d-flex flex-wrap gap-2 mt-4">
            <a href="#" class="btn btn-neon px-4"><i class="fa-solid fa-diagram-project me-2"></i>Ver atividades</a>
            <a href="#" class="btn btn-outline-neon px-4"><i class="fa-solid fa-people-group me-2"></i>Conhecer a equipe</a>
          </div>
          <div class="d-flex flex-wrap gap-2 mt-4">
            <span class="chip"><i class="fa-solid fa-graduation-cap"></i>Ensino</span>
            <span class="chip"><i class="fa-solid fa-flask"></i>Pesquisa</span>
            <span class="chip"><i class="fa-solid fa-handshake-angle"></i>Extensão</span>
            <span class="chip"><i class="fa-solid fa-lightbulb"></i>Inovação</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- ================= O QUE VOCÊ ENCONTRA ================= -->
  <section class="block">
    <div class="container">
      <span class="sec-label">// Explore</span>
      <h2 class="sec-title">O que você encontra no portal</h2>

      <div class="row g-4 mt-2">
        <div class="col-md-6 col-lg-3">
          <a href="#" class="d-block h-100">
            <div class="tcard">
              <div class="ico"><i class="fa-solid fa-clock-rotate-left"></i></div>
              <h3>Sobre o laboratório</h3>
              <p>História, objetivos, atuação e vínculo com o IFMS.</p>
            </div>
          </a>
        </div>
        <div class="col-md-6 col-lg-3">
          <a href="#" class="d-block h-100">
            <div class="tcard">
              <div class="ico"><i class="fa-solid fa-user-astronaut"></i></div>
              <h3>Estudantes</h3>
              <p>Quem passou pelo laboratório e em quais atividades participou.</p>
            </div>
          </a>
        </div>
        <div class="col-md-6 col-lg-3">
          <a href="#" class="d-block h-100">
            <div class="tcard">
              <div class="ico"><i class="fa-solid fa-diagram-project"></i></div>
              <h3>Atividades</h3>
              <p>Projetos, estágios, oficinas, eventos e competições por semestre.</p>
            </div>
          </a>
        </div>
        <div class="col-md-6 col-lg-3">
          <a href="#contato" class="d-block h-100">
            <div class="tcard">
              <div class="ico"><i class="fa-solid fa-satellite-dish"></i></div>
              <h3>Contato</h3>
              <p>Fale com a equipe e acompanhe as novidades no Instagram.</p>
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- ================= DESTAQUES: ATIVIDADES ================= -->
  <section class="block alt">
    <div class="container">
      <div class="d-flex justify-content-between align-items-end flex-wrap gap-2">
        <div>
          <span class="sec-label">// Em destaque</span>
          <h2 class="sec-title">Atividades recentes</h2>
        </div>
        <a href="#" class="mb-3">Ver todas <i class="fa-solid fa-arrow-right ms-1"></i></a>
      </div>

      <div class="row g-4 mt-1">
        <div class="col-md-6">
          <div class="tcard">
            <div class="d-flex justify-content-between mb-2">
              <span class="badge badge-type px-2 py-1">Projeto</span>
              <span class="badge badge-status px-2 py-1">Em andamento</span>
            </div>
            <h3>Negrótica — 2026</h3>
            <p>Projeto PICTEC com quatro estudantes dos cursos técnicos.</p>
            <hr style="border-color:var(--line);opacity:1">
            <div class="d-flex justify-content-between small text-muted-2">
              <span><i class="fa-regular fa-calendar me-1"></i>2026/1 · 2026/2</span>
              <a href="#">Detalhes <i class="fa-solid fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="tcard">
            <div class="d-flex justify-content-between mb-2">
              <span class="badge badge-type px-2 py-1">Estágio</span>
              <span class="badge badge-status px-2 py-1">Em andamento</span>
            </div>
            <h3>Estágio — 2026/2</h3>
            <p>Tarefas de apoio e desenvolvimento no laboratório, incluindo a realização de oficinas.</p>
            <hr style="border-color:var(--line);opacity:1">
            <div class="d-flex justify-content-between small text-muted-2">
              <span><i class="fa-regular fa-calendar me-1"></i>2026/2</span>
              <a href="#">Detalhes <i class="fa-solid fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="tcard">
            <div class="d-flex justify-content-between mb-2">
              <span class="badge badge-type px-2 py-1">Estágio</span>
              <span class="badge badge-status px-2 py-1" style="color:var(--neon);background:var(--neon-dim);border-color:rgba(25,230,180,.35)">Concluída</span>
            </div>
            <h3>Estágio — 2026/1</h3>
            <p>Diferentes tarefas de apoio e desenvolvimento no laboratório.</p>
            <hr style="border-color:var(--line);opacity:1">
            <div class="d-flex justify-content-between small text-muted-2">
              <span><i class="fa-regular fa-calendar me-1"></i>2026/1</span>
              <a href="#">Detalhes <i class="fa-solid fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="tcard">
            <div class="d-flex justify-content-between mb-2">
              <span class="badge badge-type px-2 py-1">Projeto</span>
              <span class="badge badge-status px-2 py-1" style="color:var(--neon);background:var(--neon-dim);border-color:rgba(25,230,180,.35)">Concluída</span>
            </div>
            <h3>Negrótica — 2025</h3>
            <p>Projeto vinculado ao edital do IFB, com um estudante do curso técnico e um do curso superior.</p>
            <hr style="border-color:var(--line);opacity:1">
            <div class="d-flex justify-content-between small text-muted-2">
              <span><i class="fa-regular fa-calendar me-1"></i>2025</span>
              <a href="#">Detalhes <i class="fa-solid fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ================= CONQUISTA + LINHA DO TEMPO ================= -->
  <section class="block">
    <div class="container">
      <div class="row g-5">
        <div class="col-lg-6">
          <span class="sec-label">// Resultados</span>
          <h2 class="sec-title">Conquista em destaque</h2>
          <div class="achievement mt-4">
            <div class="d-flex gap-3 align-items-start">
              <div class="trophy"><i class="fa-solid fa-trophy"></i></div>
              <div>
                <span class="badge badge-status px-2 py-1 mb-2">2025</span>
                <h3 class="h5 text-white">OBR — 2º lugar na etapa estadual</h3>
                <p class="text-muted-2 mb-0">O laboratório participou da Olimpíada Brasileira de Robótica e conquistou o segundo lugar na etapa estadual, na modalidade artística.</p>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-6">
          <span class="sec-label">// Trajetória</span>
          <h2 class="sec-title">Linha do tempo</h2>
          <div class="timeline mt-4">
            <div class="t-item">
              <div class="when">2025</div>
              <h4>Negrótica e OBR</h4>
              <p>Primeiro ciclo do projeto e 2º lugar estadual na modalidade artística.</p>
            </div>
            <div class="t-item">
              <div class="when">2026 / 1</div>
              <h4>Estágio no laboratório</h4>
              <p>Apoio técnico, organização e desenvolvimento de protótipos.</p>
            </div>
            <div class="t-item">
              <div class="when">2026 / 2</div>
              <h4>Oficinas e novo estágio</h4>
              <p>Continuidade da Negrótica e realização de oficinas com a comunidade.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ================= ESTUDANTES ================= -->
  <section class="block alt">
    <div class="container">
      <div class="d-flex justify-content-between align-items-end flex-wrap gap-2">
        <div>
          <span class="sec-label">// Pessoas</span>
          <h2 class="sec-title">Estudantes do laboratório</h2>
        </div>
        <a href="#" class="mb-3">Ver todos <i class="fa-solid fa-arrow-right ms-1"></i></a>
      </div>

      <div class="row g-4 mt-1">
        <div class="col-md-6 col-lg-4">
          <div class="tcard d-flex gap-3">
            <div class="avatar flex-shrink-0"><i class="fa-solid fa-user"></i></div>
            <div>
              <h4>Nome do estudante</h4>
              <p>Minibio curta do estudante, curso e área de atuação no laboratório.</p>
              <a href="#" class="small d-inline-block mt-2">Ver perfil</a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="tcard d-flex gap-3">
            <div class="avatar flex-shrink-0"><i class="fa-solid fa-user"></i></div>
            <div>
              <h4>Nome do estudante</h4>
              <p>Minibio curta do estudante, curso e área de atuação no laboratório.</p>
              <a href="#" class="small d-inline-block mt-2">Ver perfil</a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="tcard d-flex gap-3">
            <div class="avatar flex-shrink-0"><i class="fa-solid fa-user"></i></div>
            <div>
              <h4>Nome do estudante</h4>
              <p>Minibio curta do estudante, curso e área de atuação no laboratório.</p>
              <a href="#" class="small d-inline-block mt-2">Ver perfil</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ================= PÚBLICOS / CTA ================= -->
  <section class="block">
    <div class="container">
      <span class="sec-label">// Para quem</span>
      <h2 class="sec-title">Um portal para toda a comunidade</h2>
      <div class="row g-4 mt-2">
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-graduation-cap"></i></div><h4>Estudantes</h4><p>Conheça oportunidades, projetos e equipes.</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-school"></i></div><h4>Escolas e comunidades</h4><p>Conheça as ações e as possibilidades de parceria.</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-building-columns"></i></div><h4>Gestão e instituições</h4><p>Acompanhe resultados e impacto das atividades.</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-earth-americas"></i></div><h4>Público externo</h4><p>Acesse as informações em quatro idiomas.</p></div></div>
      </div>
    </div>
  </section>

  
  <!-- ================= RODAPÉ ================= -->
  <footer id="contato" class="circuit-bg">
    <div class="container">
      <div class="row g-4">
        <div class="col-lg-5">
          <h5><i class="fa-solid fa-microchip me-2" style="color:var(--neon)"></i>Laboratório de Robótica</h5>
          <p class="mt-3 mb-2">Instituto Federal de Mato Grosso do Sul<br>Campus Campo Grande</p>
          <a href="https://www.instagram.com/robotican.cg" target="_blank" rel="noopener" class="btn btn-outline-neon btn-sm mt-2">
            <i class="fa-brands fa-instagram me-1"></i> @robotican.cg
          </a>
        </div>
        <div class="col-6 col-lg-3">
          <h5>Navegação</h5>
          <ul class="list-unstyled mt-3 mb-0">
            <li class="mb-1"><a href="#">Início</a></li>
            <li class="mb-1"><a href="#">Sobre</a></li>
            <li class="mb-1"><a href="#">Estudantes</a></li>
            <li class="mb-1"><a href="#">Atividades</a></li>
            <li class="mb-1"><a href="#">Contato</a></li>
          </ul>
        </div>
        <div class="col-6 col-lg-4">
          <h5>Idiomas</h5>
          <ul class="list-unstyled mt-3 mb-0">
            <li class="mb-1"><a href="#">Português</a></li>
            <li class="mb-1"><a href="#">English</a></li>
            <li class="mb-1"><a href="#">Español</a></li>
            <li class="mb-1"><a href="#">Français</a></li>
          </ul>
        </div>
      </div>
      <hr class="my-4">
      <div class="d-flex flex-wrap justify-content-between gap-2 small">
        <span>© 2026 Laboratório de Robótica — IFMS Campo Grande</span>
        <span>Desenvolvido por <strong class="text-white">Integrante 1</strong> e <strong class="text-white">Integrante 2</strong> · TSI · Linguagem de Programação II</span>
      </div>
    </div>
  </footer>

  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
