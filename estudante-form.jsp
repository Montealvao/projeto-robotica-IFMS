<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Novo estudante — Laboratório de Robótica IFMS CG</title>

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
          <li class="nav-item"><a class="nav-link" href="#">Contato</a></li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item"><a href="#">Gerenciar</a></li><li class="breadcrumb-item active" aria-current="page">Novo estudante</li></ol></nav>
      <span class="sec-label">// Gerenciar</span>
      <h1>Novo estudante</h1>
      <p>Cadastre uma pessoa que participou da trajetória do laboratório.</p>
    </div>
  </header>

  <section class="block">
    <div class="container">
      <!-- Mensagens de sucesso e erro (exemplos de layout; exibir condicionalmente) -->
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        <i class="fa-solid fa-circle-check me-2"></i>Mensagem de sucesso de exemplo.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fechar"></button>
      </div>
      <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <i class="fa-solid fa-triangle-exclamation me-2"></i>Mensagem de erro de exemplo.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fechar"></button>
      </div>
      <div class="row g-4">
        <div class="col-lg-8">
          <div class="form-panel">
            <form>
              <div class="mb-3">
                <label for="nome" class="form-label">Nome *</label>
                <input type="text" class="form-control" id="nome" placeholder="Nome completo">
              </div>
              <div class="mb-3">
                <label for="minibio" class="form-label">Minibio</label>
                <textarea class="form-control" id="minibio" rows="4" placeholder="Apresentação breve do estudante"></textarea>
              </div>
              <div class="mb-4">
                <label for="foto" class="form-label">Foto</label>
                <input type="file" class="form-control" id="foto">
                <div class="form-text">Imagem do estudante (opcional).</div>
              </div>
              <div class="d-flex gap-2">
                <button type="button" class="btn btn-neon px-4"><i class="fa-solid fa-floppy-disk me-2"></i>Salvar</button>
                <button type="button" class="btn btn-ghost px-4">Cancelar</button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-lg-4"><div class="side-note"><strong>Dica</strong><br>Depois de cadastrar o estudante, associe-o a uma atividade em “Associar participação”.</div></div>
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
