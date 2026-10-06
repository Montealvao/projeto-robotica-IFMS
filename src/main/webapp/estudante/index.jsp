<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<t:layout titulo="pagina-estudantes">

	<div class="container mt-4">
		<h2 class="mb-3">Pagina dos estudantes</h2>
	</div>
	<div class="container mt-4">
		<h2 class="mb-3">
			<fmt:message key="estudante.titulo.listar" />
		</h2>

		<c:if test="${not empty param.msg}">
			<div class="alert alert-success alert-dismissible fade show"
				role="alert">
				Aviso do sistema: ${param.msg}
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Fechar"></button>
			</div>
		</c:if>

		<c:if test="${empty listaEstudantes}">
			<div class="alert alert-info" role="alert">
				<fmt:message key="atividade.titulo.sem_cadastro" />
			</div>

		</c:if>

		<a class="btn btn-primary mb-3"
			href="${pageContext.request.contextPath}/estudante?acao=novo"> <fmt:message
				key="atividade.titulo.criar" />
		</a>

		<c:if test="${not empty listaEstudantes}">

			<div class="table-responsive">
				<table class="table table-striped table-hover table-bordered">
					<thead class="table-dark">
						<tr>
							<th><fmt:message key="estudante.coluna.id" /></th>
							<th><fmt:message key="estudante.coluna.nome" /></th>
							<th><fmt:message key="estudante.coluna.minibio" /></th>
							<th><fmt:message key="estudante.coluna.foto" /></th>
							<th><fmt:message key="estudante.coluna.acoes" /></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="estudante" items="${listaEstudantes}">
							<tr>
								<td><c:out value="${estudante.id}" /></td>
								<td><c:out value="${estudante.nome}" /></td>
								<td><c:out value="${estudante.minibio}" /></td>
								<td><c:choose>
										<c:when test="${not empty estudante.foto}">
											<img
												src="${pageContext.request.contextPath}/${estudante.foto}"
												alt="Foto de ${estudante.nome}"
												class="rounded-circle object-fit-cover border border-secondary"
												style="width: 50px; height: 50px;">
										</c:when>


										<c:otherwise>
											<img
												src="${pageContext.request.contextPath}/resources/img/foto-padrao.jpg"
												alt="Sem foto"
												class="rounded-circle object-fit-cover border border-secondary opacity-50"
												style="width: 50px; height: 50px;">
										</c:otherwise>

									</c:choose></td>
								<td>
									<!-- 								<a class="btn btn-dark" --> <%-- 									href="${pageContext.request.contextPath}/estudante?acao=editar">Editar</a> --%>

									<a
									href="${pageContext.request.contextPath}/estudante?acao=excluir&id=${estudante.id}"
									class="btn btn-danger btn-sm"
									onclick="return confirm('O estudante ${estudante.nome} será excluido permanetemente.');">
										<fmt:message key="estudante.botao.apagar" />
								</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</c:if>
	</div>

	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>
