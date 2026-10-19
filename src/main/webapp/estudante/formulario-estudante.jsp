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
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/"><fmt:message key="estudante.breadcrumb.inicio" /></a></li>
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/estudante?acao=admin-estudante"><fmt:message key="estudante.breadcrumb.gerenciar" /></a></li>
					<li class="breadcrumb-item active" aria-current="page"><fmt:message key="estudante.breadcrumb.novo" /></li>
				</ol>
			</nav>
			<span class="sec-label"><fmt:message key="estudante.label.gerenciar" /></span>
			<h1><fmt:message key="estudante.titulo.novo" /></h1>
			<p><fmt:message key="estudante.descricao.novo" /></p>
		</div>
	</header>

	<section class="block">
		<div class="container">

			<c:if test="${not empty mensagem}">
				<div class="alert alert-success alert-dismissible fade show"
					role="alert">
					<i class="fa-solid fa-circle-check me-2"></i>
					<c:out value="${mensagem}" />

					<button type="button" class="btn-close" data-bs-dismiss="alert"
						aria-label="<fmt:message key='estudante.botao.fechar' />"></button>
				</div>
			</c:if>

			<div class="row g-4">
				<div class="col-lg-8">
					<div class="form-panel">
						<form method="post"
							action="${pageContext.request.contextPath}/estudante?acao=inserir"
							enctype="multipart/form-data">
							<input type="hidden" id="id-estudante">

							<div class="mb-3">
								<label for="nome" class="form-label"><fmt:message key="estudante.label.nome" /></label> 
								<input type="text" class="form-control" id="nome"
									placeholder="<fmt:message key='estudante.placeholder.nome' />" name="nome">
							</div>
							<div class="mb-3">
								<label for="minibio" class="form-label"><fmt:message key="estudante.label.minibio" /></label>
								<textarea class="form-control" id="minibio" rows="4"
									placeholder="<fmt:message key='estudante.placeholder.minibio' />" name="minibio"></textarea>
							</div>
							<div class="mb-4">
								<label for="foto" class="form-label"><fmt:message key="estudante.label.foto" /></label> 
								<input type="file" class="form-control" id="foto" name="foto">
								<div class="form-text"><fmt:message key="estudante.help.foto" /></div>
							</div>
							<div class="d-flex gap-2">
								<button type="submit" class="btn btn-neon px-4">
									<i class="fa-solid fa-floppy-disk me-2"></i><fmt:message key="estudante.botao.salvar" />
								</button>
								<a class="btn btn-ghost px-4" href="${pageContext.request.contextPath}/estudante?acao=admin-estudante"><fmt:message key="estudante.botao.cancelar" /></a>
							</div>
						</form>

					</div>
				</div>
				<div class="col-lg-4">
					<div class="side-note">
						<strong><fmt:message key="estudante.dica.titulo" /></strong><br>
						<fmt:message key="estudante.dica.descricao" />
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>