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
					<li class="breadcrumb-item"><a href="#">Início</a></li>
					<li class="breadcrumb-item"><a href="#">Gerenciar</a></li>
					<li class="breadcrumb-item active" aria-current="page">Novo
						estudante</li>
				</ol>
			</nav>
			<span class="sec-label">// Gerenciar</span>
			<h1>Novo estudante</h1>
			<p>Cadastre uma pessoa que participou da trajetória do
				laboratório.</p>
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
						aria-label="Fechar"></button>
				</div>
			</c:if>


			<!-- <div class="alert alert-danger alert-dismissible fade show"
				role="alert">
				<i class="fa-solid fa-triangle-exclamation me-2"></i>Mensagem de
				erro de exemplo.
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Fechar"></button>
			</div> -->

			<div class="row g-4">
				<div class="col-lg-8">
					<div class="form-panel">
						<form method="post"
							action="${pageContext.request.contextPath}/estudante?acao=inserir"
							enctype="multipart/form-data">
							<input type="hidden" id="id-estudante">

							<div class="mb-3">
								<label for="nome" class="form-label">Nome *</label> <input
									type="text" class="form-control" id="nome"
									placeholder="Nome completo" name="nome">
							</div>
							<div class="mb-3">
								<label for="minibio" class="form-label">Minibio</label>
								<textarea class="form-control" id="minibio" rows="4"
									placeholder="Apresentação breve do estudante" name="minibio"></textarea>
							</div>
							<div class="mb-4">
								<label for="foto" class="form-label">Foto</label> <input
									type="file" class="form-control" id="foto" name="foto">
								<div class="form-text">Imagem do
									estudante</div>
							</div>
							<div class="d-flex gap-2">
								<button type="submit" class="btn btn-neon px-4">
									<i class="fa-solid fa-floppy-disk me-2"></i>Salvar
								</button>
								<button type="button" class="btn btn-ghost px-4">Cancelar</button>
							</div>
						</form>

					</div>
				</div>
				<div class="col-lg-4">
					<div class="side-note">
						<strong>Dica</strong><br>Depois de cadastrar o estudante,
						associe-o a uma atividade em “Associar participação”.
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>