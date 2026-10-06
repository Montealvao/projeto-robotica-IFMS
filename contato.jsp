<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Contato — Laboratório de Robótica IFMS CG</title>

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
          <li class="nav-item"><a class="nav-link" href="#">Início</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Sobre</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Estudantes</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Atividades</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Participações</a></li>
          <li class="nav-item"><a class="nav-link active" href="#">Contato</a></li>

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

  <!-- ================= CABEÇALHO DA PÁGINA ================= -->
  <header class="page-head circuit-bg">
    <div class="container">
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item active" aria-current="page">Contato</li></ol></nav>
      <span class="sec-label">// Contato</span>
      <h1>Fale com o laboratório</h1>
      <p>Informações institucionais, redes sociais e créditos do portal.</p>
    </div>
  </header>

  <section class="block">
    <div class="container">
      <div class="row g-5">
        <div class="col-lg-6">
          <span class="sec-label">// Onde estamos</span>
          <h2 class="sec-title">Informações institucionais</h2>
          <div class="info-row"><i class="fa-solid fa-building-columns"></i><div><strong>Instituição</strong><span>Instituto Federal de Mato Grosso do Sul</span></div></div>
          <div class="info-row"><i class="fa-solid fa-location-dot"></i><div><strong>Campus</strong><span>Campo Grande — endereço completo</span></div></div>
          <div class="info-row"><i class="fa-solid fa-door-open"></i><div><strong>Laboratório</strong><span>Bloco / sala do Laboratório de Robótica</span></div></div>
          <div class="info-row"><i class="fa-solid fa-envelope"></i><div><strong>E-mail</strong><span>contato@exemplo.ifms.edu.br</span></div></div>
          <div class="info-row"><i class="fa-solid fa-clock"></i><div><strong>Atendimento</strong><span>Dias e horários de funcionamento</span></div></div>
        </div>
        <div class="col-lg-6">
          <span class="sec-label">// Redes</span>
          <h2 class="sec-title">Acompanhe as novidades</h2>
          <div class="achievement mt-4" style="border-color:rgba(25,230,180,.4);background:linear-gradient(135deg,rgba(25,230,180,.08),transparent 60%),var(--panel)">
            <div class="d-flex gap-3 align-items-start">
              <div class="trophy" style="color:var(--neon)"><i class="fa-brands fa-instagram"></i></div>
              <div>
                <h3 class="h5 text-white">@robotican.cg</h3>
                <p class="text-muted-2">Fotos, eventos, oficinas e bastidores dos projetos do laboratório.</p>
                <a href="https://www.instagram.com/robotican.cg" target="_blank" rel="noopener" class="btn btn-outline-neon btn-sm">Abrir no Instagram <i class="fa-solid fa-arrow-up-right-from-square ms-1"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="block alt">
    <div class="container">
      <span class="sec-label">// Créditos</span>
      <h2 class="sec-title">Quem desenvolveu o portal</h2>
      <div class="row g-4 mt-2">
        <div class="col-md-6"><div class="tcard d-flex gap-3"><div class="avatar flex-shrink-0"><i class="fa-solid fa-code"></i></div><div><h4>Integrante 1</h4><p>TSI — IFMS Campo Grande</p></div></div></div>
        <div class="col-md-6"><div class="tcard d-flex gap-3"><div class="avatar flex-shrink-0"><i class="fa-solid fa-code"></i></div><div><h4>Integrante 2</h4><p>TSI — IFMS Campo Grande</p></div></div></div>
      </div>
      <p class="text-muted-2 mt-4 mb-0 small">Projeto da disciplina de Linguagem de Programação II — Tecnologia em Sistemas para Internet.</p>
    </div>
  </section>

  <!-- ================= RODAPÉ ================= -->
  <footer class="circuit-bg">
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
