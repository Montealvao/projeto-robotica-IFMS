<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Detalhes da atividade — Laboratório de Robótica IFMS CG</title>

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
          <li class="nav-item"><a class="nav-link active" href="#">Atividades</a></li>
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

  <!-- ================= CABEÇALHO DA PÁGINA ================= -->
  <header class="page-head circuit-bg">
    <div class="container">
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item"><a href="#">Atividades</a></li><li class="breadcrumb-item active" aria-current="page">Negrótica — 2026</li></ol></nav>
      <span class="sec-label">// Atividade</span>
      <h1>Negrótica — 2026</h1>
      <p>Detalhes da atividade, seus períodos e os estudantes que participaram.</p>
    </div>
  </header>

  <section class="block">
    <div class="container">
      <div class="row g-5">
        <div class="col-lg-7">
          <div class="d-flex gap-2 mb-3"><span class="badge badge-type px-2 py-1">Projeto</span><span class="badge badge-status px-2 py-1">Em andamento</span></div>
          <span class="sec-label">// Descrição</span>
          <h2 class="sec-title">Sobre a atividade</h2>
          <p class="text-muted-2">Descrição completa da atividade: objetivos, metodologia, público envolvido e resultados esperados.</p>
          <p class="text-muted-2">Projeto PICTEC com quatro estudantes dos cursos técnicos.</p>
        </div>
        <div class="col-lg-5">
          <div class="tcard">
            <h3 class="mb-3">Informações</h3>
            <ul class="meta-list">
              <li><span>Tipo</span><span>Projeto</span></li>
              <li><span>Situação</span><span>Em andamento</span></li>
              <li><span>Início</span><span>00/00/2026</span></li>
              <li><span>Término</span><span>00/00/2026</span></li>
              <li><span>Coordenador</span><span>Nome do coordenador</span></li>
              <li><span>Períodos</span><span>2026/1 · 2026/2</span></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="block alt">
    <div class="container">
      <span class="sec-label">// Equipe</span>
      <h2 class="sec-title">Participantes</h2>
      <div class="table-wrap mt-4 table-responsive">
        <table class="table table-tech table-hover">
          <thead><tr><th>Estudante</th><th>Função</th><th>Contribuição</th></tr></thead>
          <tbody>
            <tr><td><a href="#">Nome do estudante</a></td><td>Função exercida</td><td>Descrição da contribuição do estudante.</td></tr>
            <tr><td><a href="#">Nome do estudante</a></td><td>Função exercida</td><td>Descrição da contribuição do estudante.</td></tr>
            <tr><td><a href="#">Nome do estudante</a></td><td>Função exercida</td><td>Descrição da contribuição do estudante.</td></tr>
          </tbody>
        </table>
      </div>
      <a href="#" class="btn btn-ghost mt-4"><i class="fa-solid fa-arrow-left me-2"></i>Voltar para atividades</a>
    </div>
  </section>

  <section class="block">
    <div class="container">
      <span class="sec-label">// Resultados</span>
      <h2 class="sec-title">Conquistas</h2>
      <div class="achievement mt-4">
        <div class="d-flex gap-3 align-items-start">
          <div class="trophy"><i class="fa-solid fa-trophy"></i></div>
          <div><span class="badge badge-status px-2 py-1 mb-2">00/00/0000</span><h3 class="h5 text-white">Título da conquista</h3><p class="text-muted-2 mb-0">Descrição da conquista associada à atividade.</p></div>
        </div>
      </div>
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
