<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<nav class="navbar navbar-expand-lg sticky-top navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#"> 
            <i class="fa-solid fa-microchip dot me-1"></i> <fmt:message key="navbar.brand.robotica" /><span class="dot">.</span>IFMS
            <small class="text-muted-2 fw-normal">CG</small>
        </a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#menu" aria-controls="menu" aria-expanded="false"
            aria-label="<fmt:message key='navbar.toggle' />">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="menu">
            <ul class="navbar-nav ms-auto align-items-lg-center gap-lg-1">
                <li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath}/"><fmt:message key="navbar.inicio" /></a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/publico/sobre.jsp"><fmt:message key="navbar.sobre" /></a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/estudante?acao=estudante"><fmt:message key="navbar.estudantes" /></a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/atividade/index.example.jsp"><fmt:message key="navbar.atividades" /></a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/participacao/index.jsp"><fmt:message key="navbar.participacoes" /></a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/publico/contato.jsp"><fmt:message key="navbar.contato" /></a></li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 
                        <i class="fa-solid fa-gear me-1"></i><fmt:message key="navbar.gerenciar" />
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/estudante?acao=criar">
                                <i class="fa-solid fa-user-plus me-2"></i><fmt:message key="navbar.novo.estudante" />
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/atividade/formulario-atividade.jsp">
                                <i class="fa-solid fa-diagram-project me-2"></i><fmt:message key="navbar.nova.atividade" />
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">
                                <i class="fa-solid fa-link me-2"></i><fmt:message key="navbar.associar.participacao" />
                            </a>
                        </li>
                        <li><hr class="dropdown-divider"></li>
                        <li>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/estudante?acao=admin-estudante">
                                <i class="fa-solid fa-table-list me-2"></i><fmt:message key="navbar.manutencao.estudantes" />
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/atividade/manutencao-atividade.jsp">
                                <i class="fa-solid fa-table-list me-2"></i><fmt:message key="navbar.manutencao.atividades" />
                            </a>
                        </li>
                    </ul>
                </li>
                
                <li class="nav-item dropdown ms-lg-2">
                    <a class="btn btn-sm lang-btn dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 
                        <i class="fa-solid fa-globe me-1"></i><fmt:message key="navbar.lang.atual" />
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/i18n?lingua=pt_BR">
                                🇧🇷 <fmt:message key="idioma.portugues" />
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/i18n?lingua=en_US">
                                🇺🇸 <fmt:message key="idioma.ingles" />
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/i18n?lingua=es_ES">
                                🇪🇸 <fmt:message key="idioma.espanhol" />
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/i18n?lingua=fr_FR">
                                🇫🇷 <fmt:message key="idioma.frances" />
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>