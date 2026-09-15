<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%-- Biblioteca de Formatação e Internacionalização --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">
			<fmt:message key="publica-nav.marca" />
        </a>

        <div class="navbar-nav">
            <a class="nav-link" href="${pageContext.request.contextPath}/publica?acao=novo">
				<fmt:message key="publica-nav.novo" />
            </a>

            <a class="nav-link" href="${pageContext.request.contextPath}/auth/admin?acao=listar">
				<fmt:message key="publica-nav.listar" />
            </a>
        </div>

        <div class="d-flex gap-2">
            <a class="btn btn-sm btn-outline-light" href="${pageContext.request.contextPath}/i18n?lingua=pt_BR">
                <fmt:message key="publica-nav.portugues" />
            </a>

            <a class="btn btn-sm btn-outline-light" href="${pageContext.request.contextPath}/i18n?lingua=en_US">
                <fmt:message key="publica-nav.ingles" />
            </a>
        </div>
    </div>
</nav>