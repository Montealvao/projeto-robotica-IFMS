<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layout titulo="nova-atividade">

	<div class="container mt-4">
		<!-- 2. Substitua o h1 atual por: -->
		<h1>
			Nova Atividade
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

		<form action="${pageContext.request.contextPath}/atividade?acao=inserir" method="post">
			<div class="mb-3">
				<label for="titulo" class="form-label">Título</label> 
				<input type="text" name="titulo" class="form-control">
			</div>
			<div class="mb-3">
				<label for="tipo" class="form-label">Tipo</label> 
				<input type="text" name="tipo" class="form-control">
			</div>
			<div class="mb-3">
				<label for="descricao" class="form-label">Descrição</label> 
				<input type="text" class="form-control" name="descricao">
			</div>
			<div class="mb-3">
				<label for="data_inicio" class="form-label">Data de Início</label> 
				<input type="date" class="form-control" name="data_inicio">
			</div>
			<div class="mb-3">
				<label for="data_fim" class="form-label">Data de Término</label> 
				<input type="date" class="form-control" name="data_fim">
			</div>
			<div class="mb-3">
				<label for="situacao" class="form-label">Situação</label> 
				<input type="text" class="form-control" name="situacao">
			</div>
			<div class="mb-3">
				<label for="coordenador_id" class="form-label">Coordenador</label> 
				<input type="number" class="form-control" name="coordenador_id">
			</div>

			<!-- 4. Substitua o botão Gravar por: -->
			<button type="submit" class="btn btn-primary">
				Salvar
			</button>
		</form>
	</div>



    
    <jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>