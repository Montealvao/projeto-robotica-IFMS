<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Novo usuário — Laboratório de Robótica IFMS CG</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch:wght@500;600;700&family=IBM+Plex+Sans:wght@400;500&display=swap" rel="stylesheet">
  <link href="css/robotica.css" rel="stylesheet">
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
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item"><a href="#">Painel</a></li><li class="breadcrumb-item active" aria-current="page">Novo usuário</li></ol></nav>
      <span class="sec-label">// Administração</span>
      <h1>Novo usuário</h1>
      <p>Crie uma conta de acesso à área administrativa.</p>
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
              <div class="row g-3">
                <div class="col-md-12"><label for="nome" class="form-label">Nome *</label><input type="text" class="form-control" id="nome" placeholder="Nome completo"></div>
                <div class="col-md-12"><label for="email" class="form-label">E-mail *</label><input type="email" class="form-control" id="email" placeholder="usuario@ifms.edu.br"></div>
                <div class="col-md-6"><label for="senha" class="form-label">Senha *</label><input type="password" class="form-control" id="senha" placeholder=""></div>
                <div class="col-md-6"><label for="senha2" class="form-label">Confirmar senha *</label><input type="password" class="form-control" id="senha2" placeholder=""></div>
                <div class="col-md-12"><label for="perfil" class="form-label">Perfil *</label><select class="form-select" id="perfil"><option>Selecione</option><option>Administrador</option><option>Editor</option><option>Visitante</option></select></div>
                <div class="col-md-12"><div class="form-check"><input class="form-check-input" type="checkbox" id="ativo"><label class="form-check-label" for="ativo">Usuário ativo</label></div></div>
              </div>
              <div class="d-flex gap-2 mt-4">
                <button type="button" class="btn btn-neon px-4"><i class="fa-solid fa-floppy-disk me-2"></i>Salvar</button>
                <button type="button" class="btn btn-ghost px-4">Cancelar</button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-lg-4"><div class="side-note"><strong>Atenção</strong><br>A senha nunca deve ser armazenada em texto puro.</div></div>
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

  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
