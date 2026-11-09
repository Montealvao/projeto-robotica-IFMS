  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<t:layout titulo="index">

    <jsp:include page="/WEB-INF/includes/header.jsp" />
 
  <header class="page-head circuit-bg">
    <div class="container">
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item"><a href="#">Atividades</a></li><li class="breadcrumb-item active" aria-current="page">Negrótica — 2026</li></ol></nav>
      <span class="sec-label">// Atividade</span>
      <h1>Negrótica — 2026</h1>
      <p>Detalhes da atividade, seus períodos e os estudantes que participaram.</p>
    </div>
  </header>

  <section class="block">
    <div class="container">
      <div class="row g-5">
        <div class="col-lg-7">
          <div class="d-flex gap-2 mb-3"><span class="badge badge-type px-2 py-1">Projeto</span><span class="badge badge-status px-2 py-1">Em andamento</span></div>
          <span class="sec-label">// Descrição</span>
          <h2 class="sec-title">Sobre a atividade</h2>
          <p class="text-muted-2">Descrição completa da atividade: objetivos, metodologia, público envolvido e resultados esperados.</p>
          <p class="text-muted-2">Projeto PICTEC com quatro estudantes dos cursos técnicos.</p>
        </div>
        <div class="col-lg-5">
          <div class="tcard">
            <h3 class="mb-3">Informações</h3>
            <ul class="meta-list">
              <li><span>Tipo</span><span>Projeto</span></li>
              <li><span>Situação</span><span>Em andamento</span></li>
              <li><span>Início</span><span>00/00/2026</span></li>
              <li><span>Término</span><span>00/00/2026</span></li>
              <li><span>Coordenador</span><span>Nome do coordenador</span></li>
              <li><span>Períodos</span><span>2026/1 · 2026/2</span></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="block alt">
    <div class="container">
      <span class="sec-label">// Equipe</span>
      <h2 class="sec-title">Participantes</h2>
      <div class="table-wrap mt-4 table-responsive">
        <table class="table table-tech table-hover">
          <thead><tr><th>Estudante</th><th>Função</th><th>Contribuição</th></tr></thead>
          <tbody>
            <tr><td><a href="#">Nome do estudante</a></td><td>Função exercida</td><td>Descrição da contribuição do estudante.</td></tr>
            <tr><td><a href="#">Nome do estudante</a></td><td>Função exercida</td><td>Descrição da contribuição do estudante.</td></tr>
            <tr><td><a href="#">Nome do estudante</a></td><td>Função exercida</td><td>Descrição da contribuição do estudante.</td></tr>
          </tbody>
        </table>
      </div>
      <a href="#" class="btn btn-ghost mt-4"><i class="fa-solid fa-arrow-left me-2"></i>Voltar para atividades</a>
    </div>
  </section>

  <section class="block">
    <div class="container">
      <span class="sec-label">// Resultados</span>
      <h2 class="sec-title">Conquistas</h2>
      <div class="achievement mt-4">
        <div class="d-flex gap-3 align-items-start">
          <div class="trophy"><i class="fa-solid fa-trophy"></i></div>
          <div><span class="badge badge-status px-2 py-1 mb-2">00/00/0000</span><h3 class="h5 text-white">Título da conquista</h3><p class="text-muted-2 mb-0">Descrição da conquista associada à atividade.</p></div>
        </div>
      </div>
    </div>
  </section>
  
  <jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>