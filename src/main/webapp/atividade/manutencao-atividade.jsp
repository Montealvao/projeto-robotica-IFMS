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
                <li class="breadcrumb-item active" aria-current="page"><fmt:message key="navbar.manutencao.atividades" /></li>
            </ol>
        </nav>
        <span class="sec-label">// <fmt:message key="breadcrumb.gerenciar" /></span>
        <h1><fmt:message key="navbar.manutencao.atividades" /></h1>
        <p><fmt:message key="page.manutencao.atividades.desc" /></p>
    </div>
</header>

<section class="block">
    <div class="container">
        
        <!-- Mensagens de sucesso e erro (Mocks mantidos estáticos) -->
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <i class="fa-solid fa-circle-check me-2"></i>Mensagem de sucesso de exemplo.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="<fmt:message key='alerta.fechar' />"></button>
        </div>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <i class="fa-solid fa-triangle-exclamation me-2"></i>Mensagem de erro de exemplo.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="<fmt:message key='alerta.fechar' />"></button>
        </div>
        
        <div class="d-flex justify-content-end mb-3">
            <a href="${pageContext.request.contextPath}/atividade/formulario-atividade.jsp" class="btn btn-neon btn-sm">
                <i class="fa-solid fa-diagram-project me-1"></i><fmt:message key="navbar.nova.atividade" />
            </a>
        </div>
        
        <div class="table-wrap table-responsive">
            <table class="table table-tech table-hover">
                <thead>
                    <tr>
                        <th><fmt:message key="tabela.id" /></th>
                        <th><fmt:message key="tabela.titulo" /></th>
                        <th><fmt:message key="tabela.tipo" /></th>
                        <th><fmt:message key="tabela.situacao" /></th>
                        <th><fmt:message key="tabela.periodos" /></th>
                        <th><fmt:message key="tabela.participantes" /></th>
                        <th class="text-end"><fmt:message key="tabela.acoes" /></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Negrótica — 2026</td>
                        <td><span class="badge badge-type px-2 py-1">Projeto</span></td>
                        <td><span class="badge badge-status px-2 py-1">Em andamento</span></td>
                        <td>2026/1 · 2026/2</td>
                        <td>4</td>
                        <td class="text-end">
                            <button type="button" class="btn btn-danger-tech btn-sm" data-bs-toggle="modal" data-bs-target="#modal-excluir">
                                <i class="fa-solid fa-trash-can me-1"></i><fmt:message key="botao.excluir" />
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Negrótica — 2026</td>
                        <td><span class="badge badge-type px-2 py-1">Projeto</span></td>
                        <td><span class="badge badge-status px-2 py-1">Em andamento</span></td>
                        <td>2026/1 · 2026/2</td>
                        <td>4</td>
                        <td class="text-end">
                            <button type="button" class="btn btn-danger-tech btn-sm" data-bs-toggle="modal" data-bs-target="#modal-excluir">
                                <i class="fa-solid fa-trash-can me-1"></i><fmt:message key="botao.excluir" />
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Negrótica — 2026</td>
                        <td><span class="badge badge-type px-2 py-1">Projeto</span></td>
                        <td><span class="badge badge-status px-2 py-1">Em andamento</span></td>
                        <td>2026/1 · 2026/2</td>
                        <td>4</td>
                        <td class="text-end">
                            <button type="button" class="btn btn-danger-tech btn-sm" data-bs-toggle="modal" data-bs-target="#modal-excluir">
                                <i class="fa-solid fa-trash-can me-1"></i><fmt:message key="botao.excluir" />
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Negrótica — 2026</td>
                        <td><span class="badge badge-type px-2 py-1">Projeto</span></td>
                        <td><span class="badge badge-status px-2 py-1">Em andamento</span></td>
                        <td>2026/1 · 2026/2</td>
                        <td>4</td>
                        <td class="text-end">
                            <button type="button" class="btn btn-danger-tech btn-sm" data-bs-toggle="modal" data-bs-target="#modal-excluir">
                                <i class="fa-solid fa-trash-can me-1"></i><fmt:message key="botao.excluir" />
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        
        <div class="side-note mt-4">
            <strong><fmt:message key="nota.integridade" /></strong><br>
            <fmt:message key="nota.integridade.atividade.desc" />
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