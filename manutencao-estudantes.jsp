<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Manutenção de estudantes — Laboratório de Robótica IFMS CG</title>

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
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item"><a href="#">Gerenciar</a></li><li class="breadcrumb-item active" aria-current="page">Manutenção de estudantes</li></ol></nav>
      <span class="sec-label">// Gerenciar</span>
      <h1>Manutenção de estudantes</h1>
      <p>Listagem para consulta e exclusão de estudantes cadastrados.</p>
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
      <div class="d-flex justify-content-end mb-3"><a href="#" class="btn btn-neon btn-sm"><i class="fa-solid fa-user-plus me-1"></i>Novo estudante</a></div>
      <div class="table-wrap table-responsive">
        <table class="table table-tech table-hover">
          <thead><tr><th>ID</th><th>Foto</th><th>Nome</th><th>Participações</th><th class="text-end">Ações</th></tr></thead>
          <tbody>
            <tr><td>1</td><td><span class="thumb"><i class="fa-solid fa-user"></i></span></td><td>Nome do estudante</td><td>3</td><td class="text-end"><button type="button" class="btn btn-danger-tech btn-sm" data-bs-toggle="modal" data-bs-target="#modal-excluir"><i class="fa-solid fa-trash-can me-1"></i>Excluir</button></td></tr>
            <tr><td>2</td><td><span class="thumb"><i class="fa-solid fa-user"></i></span></td><td>Nome do estudante</td><td>3</td><td class="text-end"><button type="button" class="btn btn-danger-tech btn-sm" data-bs-toggle="modal" data-bs-target="#modal-excluir"><i class="fa-solid fa-trash-can me-1"></i>Excluir</button></td></tr>
            <tr><td>3</td><td><span class="thumb"><i class="fa-solid fa-user"></i></span></td><td>Nome do estudante</td><td>3</td><td class="text-end"><button type="button" class="btn btn-danger-tech btn-sm" data-bs-toggle="modal" data-bs-target="#modal-excluir"><i class="fa-solid fa-trash-can me-1"></i>Excluir</button></td></tr>
            <tr><td>4</td><td><span class="thumb"><i class="fa-solid fa-user"></i></span></td><td>Nome do estudante</td><td>3</td><td class="text-end"><button type="button" class="btn btn-danger-tech btn-sm" data-bs-toggle="modal" data-bs-target="#modal-excluir"><i class="fa-solid fa-trash-can me-1"></i>Excluir</button></td></tr>
          </tbody>
        </table>
      </div>
      <div class="side-note mt-4"><strong>Integridade</strong><br>Estudantes com participações registradas só podem ser excluídos após a remoção dos vínculos correspondentes.</div>
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

  <!-- Modal de confirmação de exclusão -->
  <div class="modal fade" id="modal-excluir" tabindex="-1" aria-labelledby="modal-excluir-titulo" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modal-excluir-titulo"><i class="fa-solid fa-triangle-exclamation me-2" style="color:var(--amber)"></i>Confirmar exclusão</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fechar"></button>
        </div>
        <div class="modal-body">Deseja realmente excluir este registro? Esta ação não poderá ser desfeita.</div>
        <div class="modal-footer">
          <button type="button" class="btn btn-ghost" data-bs-dismiss="modal">Cancelar</button>
          <button type="button" class="btn btn-danger-tech">Excluir</button>
        </div>
      </div>
    </div>
  </div>

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
