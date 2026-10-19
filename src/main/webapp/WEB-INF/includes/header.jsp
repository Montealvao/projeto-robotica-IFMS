
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<nav class="navbar navbar-expand-lg sticky-top navbar-dark">
	<div class="container">
		<a class="navbar-brand" href="#"> <i
			class="fa-solid fa-microchip dot me-1"></i> ROBÓTICA<span class="dot">.</span>IFMS
			<small class="text-muted-2 fw-normal">CG</small>
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#menu" aria-controls="menu" aria-expanded="false"
			aria-label="Alternar menu">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="menu">
			<ul class="navbar-nav ms-auto align-items-lg-center gap-lg-1">
				<li class="nav-item"><a class="nav-link active" href="#">Início</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Sobre</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/estudante?acao=estudante">Estudantes</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Atividades</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Participações</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Contato</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> <i
						class="fa-solid fa-gear me-1"></i>Gerenciar
				</a>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><a class="dropdown-item"
							href="${pageContext.request.contextPath}/estudante?acao=novo"><i
								class="fa-solid fa-user-plus me-2"></i>Novo estudante</a></li>
						<li><a class="dropdown-item" href="#"><i
								class="fa-solid fa-diagram-project me-2"></i>Nova atividade</a></li>
						<li><a class="dropdown-item" href="#"><i
								class="fa-solid fa-link me-2"></i>Associar participação</a></li>
						<li><hr class="dropdown-divider"></li>

						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/estudante?acao=admin-estudante"><i
								class="fa-solid fa-table-list me-2"></i>Manutenção de estudantes</a></li>
								
						<li><a class="dropdown-item" href="#"><i
								class="fa-solid fa-table-list me-2"></i>Manutenção de atividades</a></li>
					</ul></li>
				<li class="nav-item dropdown ms-lg-2"><a
					class="btn btn-sm lang-btn dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> <i
						class="fa-solid fa-globe me-1"></i>PT
				</a>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><a class="dropdown-item"
							href="${pageContext.request.contextPath}/i18n?lingua=pt_BR">🇧🇷
								<fmt:message key="navbar.portugues" />
						</a></li>
						<li><a class="dropdown-item"
							href="${pageContext.request.contextPath}/i18n?lingua=en_US">🇺🇸
								<fmt:message key="navbar.ingles" />
						</a></li>
						<li><a class="dropdown-item"
							href="${pageContext.request.contextPath}/i18n?lingua=es_ES">🇪🇸
								<fmt:message key="navbar.espanhol" />
						</a></li>
						<li><a class="dropdown-item"
							href="${pageContext.request.contextPath}/i18n?lingua=fr_FR">🇫🇷
								<fmt:message key="navbar.frances" />
						</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
