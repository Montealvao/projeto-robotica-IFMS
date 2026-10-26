
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<t:layout titulo="index">

	<jsp:include page="/WEB-INF/includes/header.jsp" />

	<header class="page-head circuit-bg">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"><fmt:message key="breadcrumb.inicio" /></a></li>
                <li class="breadcrumb-item active" aria-current="page"><fmt:message key="breadcrumb.atividades" /></li>
            </ol>
        </nav>
        <span class="sec-label">// <fmt:message key="label.registros" /></span>
        <h1><fmt:message key="breadcrumb.atividades" /></h1>
        <p><fmt:message key="page.atividades.desc" /></p>
    </div>
</header>

<section class="block">
    <div class="container">
        <div class="filter-bar">
            <div class="row g-2 align-items-end">
                <div class="col-md-4">
                    <label for="busca-atividade" class="form-label"><fmt:message key="filtro.buscar" /></label>
                    <input type="text" class="form-control" id="busca-atividade" placeholder="<fmt:message key='filtro.buscar.placeholder' />">
                </div>
                <div class="col-md-2">
                    <label for="filtro-tipo" class="form-label"><fmt:message key="filtro.tipo" /></label>
                    <select class="form-select" id="filtro-tipo">
                        <option><fmt:message key="opcao.todos" /></option>
                        <option><fmt:message key="badge.projeto" /></option>
                        <option><fmt:message key="badge.estagio" /></option>
                        <option><fmt:message key="opcao.tarefa" /></option>
                        <option><fmt:message key="opcao.oficina" /></option>
                        <option><fmt:message key="opcao.palestra" /></option>
                        <option><fmt:message key="opcao.evento" /></option>
                        <option><fmt:message key="badge.competicao" /></option>
                        <option><fmt:message key="opcao.visita" /></option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="filtro-situacao" class="form-label"><fmt:message key="filtro.situacao" /></label>
                    <select class="form-select" id="filtro-situacao">
                        <option><fmt:message key="opcao.todas" /></option>
                        <option><fmt:message key="opcao.planejada" /></option>
                        <option><fmt:message key="badge.em_andamento" /></option>
                        <option><fmt:message key="badge.concluida" /></option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="filtro-per" class="form-label"><fmt:message key="filtro.periodo" /></label>
                    <select class="form-select" id="filtro-per">
                        <option><fmt:message key="opcao.todos" /></option>
                        <option>2026/2</option>
                        <option>2026/1</option>
                        <option>2025</option>
                    </select>
                </div>
                <div class="col-md-2 d-grid">
                    <button type="button" class="btn btn-neon">
                        <i class="fa-solid fa-magnifying-glass me-1"></i><fmt:message key="btn.filtrar" />
                    </button>
                </div>
            </div>
        </div>

        <h2 class="semester">
            2026/2<span><fmt:message key="semestre.segundo" /></span>
        </h2>
        <div class="row g-4">
            <div class="col-md-6">
                <div class="tcard">
                    <div class="d-flex justify-content-between mb-2">
                        <span class="badge badge-type px-2 py-1"><fmt:message key="badge.projeto" /></span>
                        <span class="badge badge-status px-2 py-1"><fmt:message key="badge.em_andamento" /></span>
                    </div>
                    <h3>Negrótica — 2026</h3>
                    <p>Projeto PICTEC com quatro estudantes dos cursos técnicos.</p>
                    <hr style="border-color: var(--line); opacity: 1">
                    <div class="d-flex justify-content-between small text-muted-2">
                        <span><i class="fa-regular fa-calendar me-1"></i>2026/1 · 2026/2</span> 
                        <a href="${pageContext.request.contextPath}/atividade/atividade-detalhe.jsp"><fmt:message key="btn.detalhes" /> <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="tcard">
                    <div class="d-flex justify-content-between mb-2">
                        <span class="badge badge-type px-2 py-1"><fmt:message key="badge.estagio" /></span>
                        <span class="badge badge-status px-2 py-1"><fmt:message key="badge.em_andamento" /></span>
                    </div>
                    <h3>Estágio — 2026/2</h3>
                    <p>Tarefas de apoio e desenvolvimento, incluindo a realização de oficinas.</p>
                    <hr style="border-color: var(--line); opacity: 1">
                    <div class="d-flex justify-content-between small text-muted-2">
                        <span><i class="fa-regular fa-calendar me-1"></i>2026/2</span> 
                        <a href="${pageContext.request.contextPath}/atividade/atividade-detalhe.jsp"><fmt:message key="btn.detalhes" /> <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <h2 class="semester">
            2026/1<span><fmt:message key="semestre.primeiro" /></span>
        </h2>
        <div class="row g-4">
            <div class="col-md-6">
                <div class="tcard">
                    <div class="d-flex justify-content-between mb-2">
                        <span class="badge badge-type px-2 py-1"><fmt:message key="badge.estagio" /></span>
                        <span class="badge badge-status px-2 py-1" style="color: var(--neon); background: var(--neon-dim); border-color: rgba(25, 230, 180, .35)"><fmt:message key="badge.concluida" /></span>
                    </div>
                    <h3>Estágio — 2026/1</h3>
                    <p>Diferentes tarefas de apoio e desenvolvimento no laboratório.</p>
                    <hr style="border-color: var(--line); opacity: 1">
                    <div class="d-flex justify-content-between small text-muted-2">
                        <span><i class="fa-regular fa-calendar me-1"></i>2026/1</span> 
                        <a href="${pageContext.request.contextPath}/atividade/atividade-detalhe.jsp"><fmt:message key="btn.detalhes" /> <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <h2 class="semester">
            2025<span></span>
        </h2>
        <div class="row g-4">
            <div class="col-md-6">
                <div class="tcard">
                    <div class="d-flex justify-content-between mb-2">
                        <span class="badge badge-type px-2 py-1"><fmt:message key="badge.projeto" /></span>
                        <span class="badge badge-status px-2 py-1" style="color: var(--neon); background: var(--neon-dim); border-color: rgba(25, 230, 180, .35)"><fmt:message key="badge.concluida" /></span>
                    </div>
                    <h3>Negrótica — 2025</h3>
                    <p>Projeto vinculado ao edital do IFB, com um estudante do curso técnico e um do curso superior.</p>
                    <hr style="border-color: var(--line); opacity: 1">
                    <div class="d-flex justify-content-between small text-muted-2">
                        <span><i class="fa-regular fa-calendar me-1"></i>2025</span> 
                        <a href="#"><fmt:message key="btn.detalhes" /> <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="tcard">
                    <div class="d-flex justify-content-between mb-2">
                        <span class="badge badge-type px-2 py-1"><fmt:message key="badge.competicao" /></span>
                        <span class="badge badge-status px-2 py-1" style="color: var(--neon); background: var(--neon-dim); border-color: rgba(25, 230, 180, .35)"><fmt:message key="badge.concluida" /></span>
                    </div>
                    <h3>OBR — Etapa estadual</h3>
                    <p>Participação na Olimpíada Brasileira de Robótica, modalidade artística.</p>
                    <hr style="border-color: var(--line); opacity: 1">
                    <div class="d-flex justify-content-between small text-muted-2">
                        <span><i class="fa-regular fa-calendar me-1"></i>2025</span> 
                        <a href="#"><fmt:message key="btn.detalhes" /> <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <nav class="mt-4" aria-label="Paginação">
            <ul class="pagination justify-content-center mb-0">
                <li class="page-item disabled"><a class="page-link" href="#"><fmt:message key="paginacao.anterior" /></a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#"><fmt:message key="paginacao.proxima" /></a></li>
            </ul>
        </nav>
    </div>
</section>

	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>