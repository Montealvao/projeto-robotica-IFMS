<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<t:layout titulo="pagina-estudantes">

	<jsp:include page="/WEB-INF/includes/header.jsp" />

	<header class="page-head circuit-bg">
    <div class="container">
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item"><a href="#">Gerenciar</a></li><li class="breadcrumb-item active" aria-current="page">Nova atividade</li></ol></nav>
      <span class="sec-label">// Gerenciar</span>
      <h1>Nova atividade</h1>
      <p>Registre um projeto, estágio, oficina, evento ou outra atividade do laboratório.</p>
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
                <div class="col-md-8"><label for="titulo" class="form-label">Título *</label><input type="text" class="form-control" id="titulo" placeholder="Título da atividade"></div>
                <div class="col-md-4"><label for="tipo" class="form-label">Tipo *</label><select class="form-select" id="tipo"><option selected>Selecione</option><option>Projeto</option><option>Estágio</option><option>Tarefa</option><option>Oficina</option><option>Palestra</option><option>Evento</option><option>Competição</option><option>Visita</option></select></div>
                <div class="col-12"><label for="descricao" class="form-label">Descrição</label><textarea class="form-control" id="descricao" rows="4" placeholder="Descreva a atividade"></textarea></div>
                <div class="col-md-4"><label for="inicio" class="form-label">Início</label><input type="date" class="form-control" id="inicio"></div>
                <div class="col-md-4"><label for="fim" class="form-label">Término</label><input type="date" class="form-control" id="fim"></div>
                <div class="col-md-4"><label for="situacao" class="form-label">Situação *</label><select class="form-select" id="situacao"><option selected>Selecione</option><option>Planejada</option><option>Em andamento</option><option>Concluída</option></select></div>
                <div class="col-12"><label for="coordenador" class="form-label">Coordenador</label><select class="form-select" id="coordenador"><option selected>Selecione</option><option>Nome do coordenador</option></select></div>
                <div class="col-12">
                  <label class="form-label d-block">Períodos letivos *</label>
                  <div class="form-check form-check-inline"><input class="form-check-input" type="checkbox" id="per-2025-1"><label class="form-check-label" for="per-2025-1">2025/1</label></div>
                  <div class="form-check form-check-inline"><input class="form-check-input" type="checkbox" id="per-2025-2"><label class="form-check-label" for="per-2025-2">2025/2</label></div>
                  <div class="form-check form-check-inline"><input class="form-check-input" type="checkbox" id="per-2026-1"><label class="form-check-label" for="per-2026-1">2026/1</label></div>
                  <div class="form-check form-check-inline"><input class="form-check-input" type="checkbox" id="per-2026-2"><label class="form-check-label" for="per-2026-2">2026/2</label></div>
                  <div class="form-text">Selecione todos os semestres em que a atividade ocorreu.</div>
                </div>
              </div>
              <div class="d-flex gap-2 mt-4">
                <button type="button" class="btn btn-neon px-4"><i class="fa-solid fa-floppy-disk me-2"></i>Salvar</button>
                <button type="button" class="btn btn-ghost px-4">Cancelar</button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-lg-4"><div class="side-note"><strong>Atenção</strong><br>A data de término não pode ser anterior à data de início. Projetos e estágios podem atravessar vários períodos.</div></div>
      </div>
    </div>
  </section>

	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>