<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layout titulo="novo-estudante">
	<div class="container mt-4">
		<h1>
			Novo estudante
		</h1>

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
    <jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>

