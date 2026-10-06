<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layout titulo="listagem-atividades">
	<div class="container mt-4">
		<h2 class="mb-3">Atividades</h2>

		<c:if test="${not empty param.msg}">
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				Aviso do sistema: ${param.msg}
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fechar">
				</button>
			</div>
		</c:if>
		
		<c:if test="${empty listaAtividades}">
			<div class="alert alert-info" role="alert">
				Nenhuma atividade foi cadastrada até o momento.
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
							<th>Ações</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="atividade" items="${listaAtividades}">
							<tr>
								<td><c:out value="${atividade.getId()}" /></td>
								<td><c:out value="${atividade.getTitulo()}" /></td>
								<td><c:out value="${atividade.getTipo()}" /></td>
								<td><c:out value="${atividade.getDescricao()}" /></td>
								<td><c:out value="${atividade.getDataInicio()}" /></td>
								<td><c:out value="${atividade.getDataFim()}" /></td>
								<td><c:out value="${atividade.getSituacao()}" /></td>
								<td><c:out value="${atividade.getCoordenadorId()}" /></td>
								<td>
									<a href="${pageContext.request.contextPath}/atividade?acao=excluir&id=${atividade.getId()}"
										class="btn btn-danger btn-sm"
										onclick="return confirm('A atividade ${atividade.getTitulo()} será excluída permanetemente.');">
										Excluir 
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