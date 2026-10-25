<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<t:layout titulo="index">

    <jsp:include page="/WEB-INF/includes/header.jsp" />

<header class="page-head circuit-bg">
    <div class="container">
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item active" aria-current="page">Equipe</li></ol></nav>
      <span class="sec-label">// Pessoas</span>
      <h1>Equipe e egressos</h1>
      <p>Servidores, colaboradores, estudantes e egressos do laboratório.</p>
    </div>
  </header>

  <section class="block">
    <div class="container">
      <h2 class="semester">Servidores</h2>
      <div class="row g-4">
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-tie"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-tie"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
      </div>
      <h2 class="semester">Colaboradores</h2>
      <div class="row g-4">
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-gear"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-gear"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-gear"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-gear"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
      </div>
      <h2 class="semester">Egressos</h2>
      <div class="row g-4">
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-graduate"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-graduate"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-graduate"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard text-center"><div class="avatar mx-auto mb-3"><i class="fa-solid fa-user-graduate"></i></div><h4>Nome</h4><p>Função / período</p></div></div>
      </div>

    </div>
  </section>
      
    <jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>