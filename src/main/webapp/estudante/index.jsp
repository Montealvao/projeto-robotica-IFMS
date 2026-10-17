<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<t:layout titulo="pagina-estudantes">

	<jsp:include page="/WEB-INF/includes/header.jsp" />

	<div class="container mt-4">
		<h2 class="mb-3">Pagina dos estudantes</h2>
	</div>
	<header class="page-head circuit-bg">
		<div class="container">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Início</a></li>
					<li class="breadcrumb-item active" aria-current="page">Estudantes</li>
				</ol>
			</nav>
			<span class="sec-label">// Pessoas</span>
			<h1>Estudantes</h1>
			<p>Pessoas que participaram da trajetória do laboratório e as
				atividades das quais fizeram parte.</p>
		</div>
	</header>

	<section class="block">
		<div class="container">
			<div class="filter-bar mb-4">
				<div class="row g-2 align-items-end">
					<div class="col-md-6">
						<label for="busca-estudante" class="form-label">Buscar</label><input
							type="text" class="form-control" id="busca-estudante"
							placeholder="Nome do estudante">
					</div>
					<div class="col-md-4">
						<label for="filtro-periodo" class="form-label">Período
							letivo</label><select class="form-select" id="filtro-periodo"><option>Todos</option>
							<option>2026/2</option>
							<option>2026/1</option>
							<option>2025/2</option>
							<option>2025/1</option></select>
					</div>
					<div class="col-md-2 d-grid">
						<button type="button" class="btn btn-neon">
							<i class="fa-solid fa-magnifying-glass me-1"></i>Filtrar
						</button>
					</div>
				</div>
			</div>
			<div class="row g-4">

				<c:if test="${empty listaEstudantes}">
					<div class="empty-state">
						<i class="fa-regular fa-folder-open"></i>
						<p>Nenhum estudante cadastrado.</p>
					</div>
				</c:if>

				<c:if test="${not empty listaEstudantes}">
					<c:forEach var="estudante" items="${listaEstudantes}">
						<div class="col-md-6 col-lg-4">
							<div class="tcard d-flex gap-3">
								<c:choose>
									<c:when test="${not empty estudante.foto}">
										<img
											src="${pageContext.request.contextPath}/${estudante.foto}"
											alt="<c:out value='${estudante.nome}'/>"
											class="rounded-circle object-fit-cover border border-secondary"
											style="width: 50px; height: 50px;">
									</c:when>
									<c:otherwise>
										<div class="avatar flex-shrink-0">
											<i class="fa-solid fa-user"></i>
										</div>
									</c:otherwise>
								</c:choose>

								<div>
									<h4>
										<c:out value="${estudante.nome }"></c:out>
									</h4>
									<p>
										<c:out value="${estudante.minibio }"></c:out>
									</p>
									<div class="mt-2">
										<span class="badge badge-type px-2 py-1">3 atividades</span>
									</div>
									<a href="#" class="small d-inline-block mt-2">Ver perfil</a>
								</div>
							</div>
						</div>
					</c:forEach>

				</c:if>



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

	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>