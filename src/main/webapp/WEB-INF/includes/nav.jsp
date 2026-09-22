<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- Biblioteca de Formatação e Internacionalização --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">
			Home
		</a>

		<div class="navbar-nav">
			<a class="nav-link"
				href="${pageContext.request.contextPath}/estudante?acao=estudante"> Área do estutante
			</a> 
		</div>

		<div class="btn-group">
			<button type="button" class="btn btn-secondary dropdown-toggle"
				data-bs-toggle="dropdown" aria-expanded="false">
				Selecionar idioma</button>
			<ul class="dropdown-menu dropdown-menu-end">
				<li><a class="list-group-item list-group-item-action"
					href="${pageContext.request.contextPath}/i18n?lingua=pt_BR"> <fmt:message
							key="publica-nav.portugues" />
				</a></li>
				<li><a class="list-group-item list-group-item-action"
					href="${pageContext.request.contextPath}/i18n?lingua=es_ES"> <fmt:message
							key="publica-nav.espanhol" />
				</a></li>
				<li><a class="list-group-item list-group-item-action"
					href="${pageContext.request.contextPath}/i18n?lingua=en_US"> <fmt:message
							key="publica-nav.ingles" />
				</a></li>
				<li><a class="list-group-item list-group-item-action"
					href="${pageContext.request.contextPath}/i18n?lingua=fr_FR"> <fmt:message
							key="publica-nav.frances" />
				</a></li>
			</ul>
		</div>

	</div>
</nav>