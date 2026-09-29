<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 1. Logo após a taglib c, adicione: -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<title>Cadastro de Estudante</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css">
</head>
<body>

	<jsp:include page="/WEB-INF/includes/nav.jsp" />

	<div class="container mt-4">
		<!-- 2. Substitua o h1 atual por: -->
		<h1>
			Novo estudante
		</h1>

		<!-- Mensagem enviada pelo Servlet -->
		<c:if test="${not empty mensagem}">
			<div class="alert alert-success alert-dismissible fade show"
				role="alert">
				<c:out value="${mensagem}" />

				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Fechar"></button>
			</div>
		</c:if>

		<form action="${pageContext.request.contextPath}/estudante?acao=inserir"
			method="post" enctype="multipart/form-data">
			<div class="mb-3">
				<label class="form-label">Nome</label> <input type="text"
					name="nome" class="form-control">
			</div>
			<div class="mb-3">
				<label class="form-label">Mini-biografia</label> <input type="text"
					name="minibio" class="form-control">
			</div>
			<div class="mb-3">
				<label for="foto" class="form-label">Foto</label> <input
					type="file" class="form-control" id="foto" name="foto"
					accept="image/png, image/jpeg, image/jpg">
			</div>
			<!-- 4. Substitua o botão Gravar por: -->
			<button type="submit" class="btn btn-primary">
				Salvar
			</button>
		</form>
	</div>

	<script
		src="${pageContext.request.contextPath}/resources/jquery-3.6.0-dist/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
