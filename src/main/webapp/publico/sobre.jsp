 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<t:layout titulo="index">

    <jsp:include page="/WEB-INF/includes/header.jsp" />
 
 
 <header class="page-head circuit-bg">
    <div class="container">
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item active" aria-current="page">Sobre</li></ol></nav>
      <span class="sec-label">// Institucional</span>
      <h1>Sobre o laboratório</h1>
      <p>História, objetivos e atuação do Laboratório de Robótica do IFMS — Campus Campo Grande.</p>
    </div>
  </header>

  <section class="block">
    <div class="container">
      <div class="row g-5">
        <div class="col-lg-7">
          <span class="sec-label">// História</span>
          <h2 class="sec-title">Como tudo começou</h2>
          <p class="text-muted-2">Texto sobre a criação do laboratório, seus primeiros projetos e as pessoas que ajudaram a construí-lo. Substituir por informações levantadas na visita.</p>
          <p class="text-muted-2">Segundo parágrafo: evolução ao longo dos anos, principais marcos e mudanças de foco.</p>
        </div>
        <div class="col-lg-5">
          <div class="tcard">
            <h3 class="mb-3">Dados gerais</h3>
            <ul class="meta-list">
              <li><span>Instituição</span><span>IFMS</span></li>
              <li><span>Campus</span><span>Campo Grande</span></li>
              <li><span>Criação</span><span>Ano de criação</span></li>
              <li><span>Coordenação</span><span>Nome do coordenador</span></li>
              <li><span>Instagram</span><span>@robotican.cg</span></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="block alt">
    <div class="container">
      <span class="sec-label">// Objetivos</span>
      <h2 class="sec-title">O que buscamos</h2>
      <div class="row g-4 mt-2">
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-bullseye"></i></div><h3>Objetivo 1</h3><p>Descrição breve do objetivo do laboratório.</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-bullseye"></i></div><h3>Objetivo 2</h3><p>Descrição breve do objetivo do laboratório.</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-bullseye"></i></div><h3>Objetivo 3</h3><p>Descrição breve do objetivo do laboratório.</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-bullseye"></i></div><h3>Objetivo 4</h3><p>Descrição breve do objetivo do laboratório.</p></div></div>
      </div>
    </div>
  </section>

  <section class="block">
    <div class="container">
      <span class="sec-label">// Atuação</span>
      <h2 class="sec-title">Frentes de trabalho</h2>
      <div class="row g-4 mt-2">
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-graduation-cap"></i></div><h3>Ensino</h3><p>Apoio a aulas, estágios e formação técnica.</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-flask"></i></div><h3>Pesquisa</h3><p>Projetos de pesquisa e desenvolvimento de protótipos.</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-handshake-angle"></i></div><h3>Extensão</h3><p>Oficinas, visitas e ações com escolas e comunidades.</p></div></div>
        <div class="col-md-6 col-lg-3"><div class="tcard"><div class="ico"><i class="fa-solid fa-lightbulb"></i></div><h3>Inovação</h3><p>Soluções criativas e participação em competições.</p></div></div>
      </div>
    </div>
  </section>
  
      <jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>