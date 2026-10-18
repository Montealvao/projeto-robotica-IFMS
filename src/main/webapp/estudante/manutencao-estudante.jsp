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
					<li class="breadcrumb-item"><a href="#">Início</a></li>
					<li class="breadcrumb-item"><a href="#">Gerenciar</a></li>
					<li class="breadcrumb-item active" aria-current="page">Manutenção
						de estudantes</li>
				</ol>
			</nav>
			<span class="sec-label">// Gerenciar</span>
			<h1>Manutenção de estudantes</h1>
			<p>Listagem para consulta e exclusão de estudantes cadastrados.</p>
		</div>
	</header>

	<section class="block">
		<div class="container">

			<!-- <div class="alert alert-danger alert-dismissible fade show"
				role="alert">
				<i class="fa-solid fa-triangle-exclamation me-2"></i>Mensagem de
				erro de exemplo.
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Fechar"></button>
			</div> -->

			<c:if test="${not empty sessionScope.mensagemSucesso}">
				<div class="alert alert-success alert-dismissible fade show"
					role="alert">
					<i class="fa-solid fa-circle-check me-2"></i>
					<c:out value="${sessionScope.mensagemSucesso}" />
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						aria-label="Fechar"></button>
				</div>
				<c:remove var="mensagemSucesso" scope="session" />
			</c:if>
			<div class="d-flex justify-content-end mb-3">
				<a href="${pageContext.request.contextPath}/estudante?acao=novo"
					class="btn btn-neon btn-sm"><i
					class="fa-solid fa-user-plus me-1"></i>Novo estudante</a>
			</div>
			<div class="table-wrap table-responsive">
				<table class="table table-tech table-hover">
					<thead>
						<tr>
							<th class="d-none d-md-table-cell">ID</th>
							<th>Foto</th>
							<th>Nome</th>
							<th>Participações</th>
							<th class="text-end">Ações</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty listaEstudantes}">

							<c:forEach var="estudante" items="${listaEstudantes }">

								<c:if test="${empty listaEstudantes}">
									<div class="alert alert-success alert-dismissible fade show"
										role="alert">
										<i class="fa-solid fa-circle-check me-2"></i>Nenhum estudante
										cadastrando.
										<button type="button" class="btn-close"
											data-bs-dismiss="alert" aria-label="Fechar"></button>
									</div>
								</c:if>
								<tr>
									<td class="d-none d-md-table-cell"><c:out
											value="${estudante.id }"></c:out></td>
									<td><c:choose>
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
										</c:choose></td>
									<td><c:out value="${estudante.nome }"></c:out></td>
									<td>3</td>
									<td class="text-end"><a href="#"
										class="btn btn-ghost btn-sm me-1"><i
											class="fa-solid fa-pen me-1"></i>Editar</a> <a
										href="${pageContext.request.contextPath}/estudante?acao=excluir&id=${estudante.id}"
										class="btn btn-danger-tech btn-sm"
										onclick="return confirm('Tem certeza que deseja excluir?');">
											<i class="fa-solid fa-trash-can me-1"></i>Excluir
									</a></td>
								</tr>

							</c:forEach>
						</c:if>

					</tbody>
				</table>
			</div>
			<div class="side-note mt-4">
				<strong>Integridade</strong><br>Estudantes com participações
				registradas só podem ser excluídos após a remoção dos vínculos
				correspondentes.
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

	<!-- Modal de confirmação de exclusão -->
	<div class="modal fade" id="modal-excluir" tabindex="-1"
		aria-labelledby="modal-excluir-titulo" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<%-- TODO: o <form> deve enviar por POST (nunca GET) para o servlet de exclusão --%>
				<form>
					<div class="modal-header">
						<h5 class="modal-title" id="modal-excluir-titulo">
							<i class="fa-solid fa-triangle-exclamation me-2"
								style="color: var(- -amber)"></i>Confirmar exclusão
						</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Fechar"></button>
					</div>
					<div class="modal-body">
						<%-- TODO: input hidden com o id; seu valor vem do data-id do botão clicado --%>
						<input type="hidden" id="id-excluir"> Deseja realmente
						excluir este estudante? Esta ação não poderá ser desfeita.
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-ghost"
							data-bs-dismiss="modal">Cancelar</button>

						<button type="submit" class="btn btn-danger-tech">Excluir</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>