<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Atividades — Laboratório de Robótica IFMS CG</title>

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
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item active" aria-current="page">Atividades</li></ol></nav>
      <span class="sec-label">// Registros</span>
      <h1>Atividades</h1>
      <p>Projetos, estágios, oficinas, eventos e competições organizados por semestre.</p>
    </div>
  </header>

  <section class="block">
    <div class="container">
      <div class="filter-bar">
        <div class="row g-2 align-items-end">
          <div class="col-md-4"><label for="busca-atividade" class="form-label">Buscar</label><input type="text" class="form-control" id="busca-atividade" placeholder="Título da atividade"></div>
          <div class="col-md-2"><label for="filtro-tipo" class="form-label">Tipo</label><select class="form-select" id="filtro-tipo"><option>Todos</option><option>Projeto</option><option>Estágio</option><option>Tarefa</option><option>Oficina</option><option>Palestra</option><option>Evento</option><option>Competição</option><option>Visita</option></select></div>
          <div class="col-md-2"><label for="filtro-situacao" class="form-label">Situação</label><select class="form-select" id="filtro-situacao"><option>Todas</option><option>Planejada</option><option>Em andamento</option><option>Concluída</option></select></div>
          <div class="col-md-2"><label for="filtro-per" class="form-label">Período</label><select class="form-select" id="filtro-per"><option>Todos</option><option>2026/2</option><option>2026/1</option><option>2025</option></select></div>
          <div class="col-md-2 d-grid"><button type="button" class="btn btn-neon"><i class="fa-solid fa-magnifying-glass me-1"></i>Filtrar</button></div>
        </div>
      </div>
      <h2 class="semester">2026/2<span>segundo semestre</span></h2>
      <div class="row g-4">
        <div class="col-md-6">
          <div class="tcard">
            <div class="d-flex justify-content-between mb-2"><span class="badge badge-type px-2 py-1">Projeto</span><span class="badge badge-status px-2 py-1">Em andamento</span></div>
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
            <div class="d-flex justify-content-between mb-2"><span class="badge badge-type px-2 py-1">Estágio</span><span class="badge badge-status px-2 py-1">Em andamento</span></div>
            <h3>Estágio — 2026/2</h3>
            <p>Tarefas de apoio e desenvolvimento, incluindo a realização de oficinas.</p>
            <hr style="border-color:var(--line);opacity:1">
            <div class="d-flex justify-content-between small text-muted-2">
              <span><i class="fa-regular fa-calendar me-1"></i>2026/2</span>
              <a href="#">Detalhes <i class="fa-solid fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
      </div>
      <h2 class="semester">2026/1<span>primeiro semestre</span></h2>
      <div class="row g-4">
        <div class="col-md-6">
          <div class="tcard">
            <div class="d-flex justify-content-between mb-2"><span class="badge badge-type px-2 py-1">Estágio</span><span class="badge badge-status px-2 py-1" style="color:var(--neon);background:var(--neon-dim);border-color:rgba(25,230,180,.35)">Concluída</span></div>
            <h3>Estágio — 2026/1</h3>
            <p>Diferentes tarefas de apoio e desenvolvimento no laboratório.</p>
            <hr style="border-color:var(--line);opacity:1">
            <div class="d-flex justify-content-between small text-muted-2">
              <span><i class="fa-regular fa-calendar me-1"></i>2026/1</span>
              <a href="#">Detalhes <i class="fa-solid fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
      </div>
      <h2 class="semester">2025<span></span></h2>
      <div class="row g-4">
        <div class="col-md-6">
          <div class="tcard">
            <div class="d-flex justify-content-between mb-2"><span class="badge badge-type px-2 py-1">Projeto</span><span class="badge badge-status px-2 py-1" style="color:var(--neon);background:var(--neon-dim);border-color:rgba(25,230,180,.35)">Concluída</span></div>
            <h3>Negrótica — 2025</h3>
            <p>Projeto vinculado ao edital do IFB, com um estudante do curso técnico e um do curso superior.</p>
            <hr style="border-color:var(--line);opacity:1">
            <div class="d-flex justify-content-between small text-muted-2">
              <span><i class="fa-regular fa-calendar me-1"></i>2025</span>
              <a href="#">Detalhes <i class="fa-solid fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="tcard">
            <div class="d-flex justify-content-between mb-2"><span class="badge badge-type px-2 py-1">Competição</span><span class="badge badge-status px-2 py-1" style="color:var(--neon);background:var(--neon-dim);border-color:rgba(25,230,180,.35)">Concluída</span></div>
            <h3>OBR — Etapa estadual</h3>
            <p>Participação na Olimpíada Brasileira de Robótica, modalidade artística.</p>
            <hr style="border-color:var(--line);opacity:1">
            <div class="d-flex justify-content-between small text-muted-2">
              <span><i class="fa-regular fa-calendar me-1"></i>2025</span>
              <a href="#">Detalhes <i class="fa-solid fa-arrow-right"></i></a>
            </div>
          </div>
        </div>
      </div>
      <nav class="mt-4" aria-label="Paginação">
        <ul class="pagination justify-content-center mb-0">
          <li class="page-item disabled"><a class="page-link" href="#">Anterior</a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">Próxima</a></li>
        </ul>
      </nav>

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
