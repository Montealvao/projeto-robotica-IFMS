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
                <li class="breadcrumb-item"><a href="#"><fmt:message key="breadcrumb.inicio" /></a></li>
                <li class="breadcrumb-item"><a href="#"><fmt:message key="breadcrumb.gerenciar" /></a></li>
                <li class="breadcrumb-item active" aria-current="page"><fmt:message key="pagina.manutencao.estudantes" /></li>
            </ol>
        </nav>
        <span class="sec-label">// <fmt:message key="breadcrumb.gerenciar" /></span>
        <h1><fmt:message key="pagina.manutencao.estudantes" /></h1>
        <p><fmt:message key="pagina.manutencao.estudantes.desc" /></p>
    </div>
</header>

<section class="block">
    <div class="container">
    
        <c:if test="${not empty sessionScope.mensagemSucesso}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <i class="fa-solid fa-circle-check me-2"></i>
                <c:out value="${sessionScope.mensagemSucesso}" />
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="<fmt:message key='alerta.fechar' />"></button>
            </div>
            <c:remove var="mensagemSucesso" scope="session" />
        </c:if>
        
        <div class="d-flex justify-content-end mb-3">
            <a href="${pageContext.request.contextPath}/estudante?acao=criar" class="btn btn-neon btn-sm">
                <i class="fa-solid fa-user-plus me-1"></i><fmt:message key="botao.novo.estudante" />
            </a>
        </div>
        
        <div class="table-wrap table-responsive">
            <table class="table table-tech table-hover">
                <thead>
                    <tr>
                        <th class="d-none d-md-table-cell"><fmt:message key="tabela.id" /></th>
                        <th><fmt:message key="tabela.foto" /></th>
                        <th><fmt:message key="tabela.nome" /></th>
                        <th><fmt:message key="tabela.participacoes" /></th>
                        <th class="text-end"><fmt:message key="tabela.acoes" /></th>
                    </tr>
                </thead>
                <tbody>
                    <c:choose>
                        <c:when test="${not empty listaEstudantes}">
                            <c:forEach var="estudante" items="${listaEstudantes}">
                                <tr>
                                    <td class="d-none d-md-table-cell"><c:out value="${estudante.id}"></c:out></td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${not empty estudante.foto}">
                                                <img src="${pageContext.request.contextPath}/${estudante.foto}"
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
                                    </td>
                                    <td><c:out value="${estudante.nome}"></c:out></td>
                                    <td>3</td>
                                    <td class="text-end">
                                        <a href="#" class="btn btn-ghost btn-sm me-1">
                                            <i class="fa-solid fa-pen me-1"></i><fmt:message key="botao.editar" />
                                        </a> 
                                        <a href="${pageContext.request.contextPath}/estudante?acao=excluir&id=${estudante.id}"
                                            class="btn btn-danger-tech btn-sm"
                                            onclick="return confirm('<fmt:message key="confirmacao.exclusao" />');">
                                            <i class="fa-solid fa-trash-can me-1"></i><fmt:message key="botao.excluir" />
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="5">
                                    <div class="alert alert-success alert-dismissible fade show mb-0" role="alert">
                                        <i class="fa-solid fa-circle-check me-2"></i><fmt:message key="alerta.nenhum.estudante" />
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="<fmt:message key='alerta.fechar' />"></button>
                                    </div>
                                </td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>
        
        <div class="side-note mt-4">
            <strong><fmt:message key="nota.integridade" /></strong><br>
            <fmt:message key="nota.integridade.desc" />
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