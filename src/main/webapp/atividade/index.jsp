<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<t:layout titulo="listagem-atividades">
	<div class="container mt-4">
		<h2 class="mb-3">
			<fmt:message key="atividade.titulo.listar" />
		</h2>

		<c:if test="${not empty param.msg}">
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				Aviso do sistema: ${param.msg}
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fechar">
				</button>
			</div>
		</c:if>
		
		<c:if test="${empty listaAtividades}">
			<div class="alert alert-info" role="alert">
				<fmt:message key="estudante.titulo.sem_cadastro" />
			</div>

		</c:if>

		<a class="btn btn-primary mb-3" href="${pageContext.request.contextPath}/atividade?acao=criar">
			<fmt:message key="atividade.titulo.criar" />
		</a>
		
		<c:if test="${not empty listaAtividades}">
			<div class="table-responsive">
				<table class="table table-striped table-hover table-bordered">
					<thead class="table-dark">
						<tr>
							<th><fmt:message key="atividade.coluna.id" /></th>
							<th><fmt:message key="atividade.coluna.titulo" /></th>
							<th><fmt:message key="atividade.coluna.tipo" /></th>
							<th><fmt:message key="atividade.coluna.descricao" /></th>
							<th><fmt:message key="atividade.coluna.data_inicio" /></th>
							<th><fmt:message key="atividade.coluna.data_fim" /></th>
							<th><fmt:message key="atividade.coluna.situacao" /></th>
							<th><fmt:message key="atividade.coluna.coordenador_id" /></th>
							<th><fmt:message key="atividade.coluna.acoes" /></th>
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
										<fmt:message key="atividade.botao.apagar" />
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