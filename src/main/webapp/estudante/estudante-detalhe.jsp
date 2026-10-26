  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<t:layout titulo="index">

    <jsp:include page="/WEB-INF/includes/header.jsp" />
 
 <header class="page-head circuit-bg">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"><fmt:message key="breadcrumb.inicio" /></a></li>
                <li class="breadcrumb-item"><a href="#"><fmt:message key="breadcrumb.estudantes" /></a></li>
                <li class="breadcrumb-item active" aria-current="page">Nome do estudante</li>
            </ol>
        </nav>
        <span class="sec-label">// <fmt:message key="label.perfil" /></span>
        <h1>Nome do estudante</h1>
        <p><fmt:message key="page.perfil.desc" /></p>
    </div>
</header>

<section class="block">
    <div class="container">
        <div class="row g-4">
            
            <div class="col-lg-4">
                <div class="tcard text-center">
                    <div class="avatar avatar-lg mx-auto mb-3"><i class="fa-solid fa-user"></i></div>
                    <h3>Nome do estudante</h3>
                    <p>Curso / modalidade do estudante</p>
                    <hr style="border-color:var(--line);opacity:1">
                    <p class="text-start">Minibio do estudante: apresentação breve, interesses e o que desenvolveu no laboratório.</p>
                </div>
            </div>
            
            <div class="col-lg-8">
                <span class="sec-label"><fmt:message key="sec.trajetoria.label" /></span>
                <h2 class="sec-title"><fmt:message key="titulo.atividades.participou" /></h2>
                
                <div class="table-wrap mt-4 table-responsive">
                    <table class="table table-tech table-hover">
                        <thead>
                            <tr>
                                <th><fmt:message key="label.atividade" /></th>
                                <th><fmt:message key="tabela.tipo" /></th>
                                <th><fmt:message key="tabela.funcao" /></th>
                                <th><fmt:message key="tabela.contribuicao" /></th>
                                <th><fmt:message key="tabela.periodos" /></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="#">Negrótica — 2026</a></td>
                                <td><span class="badge badge-type px-2 py-1">Projeto</span></td>
                                <td>Função exercida</td>
                                <td>Descrição da contribuição do estudante na atividade.</td>
                                <td>2026/1 · 2026/2</td>
                            </tr>
                            <tr>
                                <td><a href="#">Negrótica — 2026</a></td>
                                <td><span class="badge badge-type px-2 py-1">Projeto</span></td>
                                <td>Função exercida</td>
                                <td>Descrição da contribuição do estudante na atividade.</td>
                                <td>2026/1 · 2026/2</td>
                            </tr>
                            <tr>
                                <td><a href="#">Negrótica — 2026</a></td>
                                <td><span class="badge badge-type px-2 py-1">Projeto</span></td>
                                <td>Função exercida</td>
                                <td>Descrição da contribuição do estudante na atividade.</td>
                                <td>2026/1 · 2026/2</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <a href="#" class="btn btn-ghost mt-4">
                    <i class="fa-solid fa-arrow-left me-2"></i><fmt:message key="btn.voltar.estudantes" />
                </a>
                
            </div>
        </div>
    </div>
</section>
  
  <jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>