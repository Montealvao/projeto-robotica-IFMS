<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 --%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<title>Listagem de Atividades</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="/WEB-INF/includes/nav.jsp" />

	<div class="container mt-4">
		<h2 class="mb-3">Atividades</h2>

		<c:if test="${not empty param.msg}">
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				Aviso do sistema: ${param.msg}
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fechar">
				</button>
			</div>
		</c:if>

		<a class="btn btn-primary mb-3" href="${pageContext.request.contextPath}/atividade?acao=criar">
			Nova Atividade
		</a>
		
		<c:if test="${not empty listaAtividades}">
			<div class="table-responsive">
				<table class="table table-striped table-hover table-bordered">
					<thead class="table-dark">
						<tr>
							<th>Id</th>
							<th>Título</th>
							<th>Tipo</th>
							<th>Descrição</th>
							<th>Data de Início</th>
							<th>Data de Término</th>
							<th>Situação</th>
							<th>Coordenador</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="atividade" items="${listaAtividades}">
							<tr>
								<td><c:out value="${atividade.id}" /></td>
								<td><c:out value="${atividade.titulo}" /></td>
								<td><c:out value="${atividade.tipo}" /></td>
								<td><c:out value="${atividade.descricao}" /></td>
								<td><c:out value="${atividade.data_inicio}" /></td>
								<td><c:out value="${atividade.data_fim}" /></td>
								<td><c:out value="${atividade.situacao}" /></td>
								<td><c:out value="${atividade.coordenador_id}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:if>
	</div>

	<script src="${pageContext.request.contextPath}/resources/jquery-3.6.0-dist/jquery-3.6.0.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>