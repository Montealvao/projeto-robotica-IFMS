<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<t:layout titulo="pagina-estudantes">

	<jsp:include page="/WEB-INF/includes/header.jsp" />

	<header class="page-head circuit-bg">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"><fmt:message key="breadcrumb.inicio" /></a></li>
                <li class="breadcrumb-item"><a href="#"><fmt:message key="breadcrumb.gerenciar" /></a></li>
                <li class="breadcrumb-item active" aria-current="page"><fmt:message key="navbar.nova.atividade" /></li>
            </ol>
        </nav>
        <span class="sec-label">// <fmt:message key="breadcrumb.gerenciar" /></span>
        <h1><fmt:message key="navbar.nova.atividade" /></h1>
        <p><fmt:message key="page.nova.atividade.desc" /></p>
    </div>
</header>

<section class="block">
    <div class="container">
        
        <!-- Mensagens de sucesso e erro (Mocks mantidos estáticos) -->
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <i class="fa-solid fa-circle-check me-2"></i>Mensagem de sucesso de exemplo.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="<fmt:message key='alerta.fechar' />"></button>
        </div>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <i class="fa-solid fa-triangle-exclamation me-2"></i>Mensagem de erro de exemplo.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="<fmt:message key='alerta.fechar' />"></button>
        </div>
        
        <div class="row g-4">
            <div class="col-lg-8">
                <div class="form-panel">
                    <form>
                        <div class="row g-3">
                            <div class="col-md-8">
                                <label for="titulo" class="form-label"><fmt:message key="form.titulo" /> *</label>
                                <input type="text" class="form-control" id="titulo" placeholder="<fmt:message key='form.titulo.atividade.placeholder' />">
                            </div>
                            <div class="col-md-4">
                                <label for="tipo" class="form-label"><fmt:message key="filtro.tipo" /> *</label>
                                <select class="form-select" id="tipo">
                                    <option selected><fmt:message key="form.selecione" /></option>
                                    <option><fmt:message key="opcao.projeto" /></option>
                                    <option><fmt:message key="opcao.estagio" /></option>
                                    <option><fmt:message key="opcao.tarefa" /></option>
                                    <option><fmt:message key="opcao.oficina" /></option>
                                    <option><fmt:message key="opcao.palestra" /></option>
                                    <option><fmt:message key="opcao.evento" /></option>
                                    <option><fmt:message key="opcao.competicao" /></option>
                                    <option><fmt:message key="opcao.visita" /></option>
                                </select>
                            </div>
                            <div class="col-12">
                                <label for="descricao" class="form-label"><fmt:message key="label.descricao" /></label>
                                <textarea class="form-control" id="descricao" rows="4" placeholder="<fmt:message key='form.descricao.placeholder' />"></textarea>
                            </div>
                            <div class="col-md-4">
                                <label for="inicio" class="form-label"><fmt:message key="info.inicio" /></label>
                                <input type="date" class="form-control" id="inicio">
                            </div>
                            <div class="col-md-4">
                                <label for="fim" class="form-label"><fmt:message key="info.termino" /></label>
                                <input type="date" class="form-control" id="fim">
                            </div>
                            <div class="col-md-4">
                                <label for="situacao" class="form-label"><fmt:message key="filtro.situacao" /> *</label>
                                <select class="form-select" id="situacao">
                                    <option selected><fmt:message key="form.selecione" /></option>
                                    <option><fmt:message key="opcao.planejada" /></option>
                                    <option><fmt:message key="opcao.em_andamento" /></option>
                                    <option><fmt:message key="opcao.concluida" /></option>
                                </select>
                            </div>
                            <div class="col-12">
                                <label for="coordenador" class="form-label"><fmt:message key="info.coordenador" /></label>
                                <select class="form-select" id="coordenador">
                                    <option selected><fmt:message key="form.selecione" /></option>
                                    <option>Nome do coordenador</option>
                                </select>
                            </div>
                            <div class="col-12">
                                <label class="form-label d-block"><fmt:message key="form.periodos.letivos" /> *</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="per-2025-1">
                                    <label class="form-check-label" for="per-2025-1">2025/1</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="per-2025-2">
                                    <label class="form-check-label" for="per-2025-2">2025/2</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="per-2026-1">
                                    <label class="form-check-label" for="per-2026-1">2026/1</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="per-2026-2">
                                    <label class="form-check-label" for="per-2026-2">2026/2</label>
                                </div>
                                <div class="form-text"><fmt:message key="form.periodos.ajuda" /></div>
                            </div>
                        </div>
                        <div class="d-flex gap-2 mt-4">
                            <button type="submit" class="btn btn-neon px-4">
                                <i class="fa-solid fa-floppy-disk me-2"></i><fmt:message key="btn.salvar" />
                            </button>
                            <button type="button" class="btn btn-ghost px-4"><fmt:message key="botao.cancelar" /></button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="side-note">
                    <strong><fmt:message key="sidenote.atencao" /></strong><br>
                    <fmt:message key="sidenote.atencao.datas" />
                </div>
            </div>
        </div>
    </div>
</section>

	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>