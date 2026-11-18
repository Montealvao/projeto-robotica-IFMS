 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<t:layout titulo="index">

    <jsp:include page="/WEB-INF/includes/header.jsp" />
    
     <header class="page-head circuit-bg">
    <div class="container">
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item active" aria-current="page">Participações</li></ol></nav>
      <span class="sec-label">// Registros</span>
      <h1>Participações</h1>
      <p>Quem participou de cada atividade, com a função e a contribuição de cada pessoa.</p>
    </div>
  </header>

  <section class="block">
    <div class="container">
      <div class="filter-bar mb-4">
        <div class="row g-2 align-items-end">
          <div class="col-md-5"><label for="filtro-ativ" class="form-label">Atividade</label><select class="form-select" id="filtro-ativ"><option>Todas</option><option>Negrótica — 2026</option><option>Estágio — 2026/2</option></select></div>
          <div class="col-md-4"><label for="filtro-est" class="form-label">Estudante</label><select class="form-select" id="filtro-est"><option>Todos</option><option>Nome do estudante</option></select></div>
          <div class="col-md-3 d-grid"><button type="button" class="btn btn-neon"><i class="fa-solid fa-magnifying-glass me-1"></i>Filtrar</button></div>
        </div>
      </div>
      <div class="d-flex justify-content-end mb-3"><a href="#" class="btn btn-outline-neon btn-sm"><i class="fa-solid fa-link me-1"></i>Nova participação</a></div>
      <div class="table-wrap table-responsive">
        <table class="table table-tech table-hover">
          <thead><tr><th>Estudante</th><th>Atividade</th><th>Função</th><th>Contribuição</th><th>Períodos</th></tr></thead>
          <tbody>
            <tr><td><a href="#">Nome do estudante</a></td><td><a href="#">Negrótica — 2026</a></td><td>Função exercida</td><td>Descrição da contribuição.</td><td>2026/1 · 2026/2</td></tr>
            <tr><td><a href="#">Nome do estudante</a></td><td><a href="#">Negrótica — 2026</a></td><td>Função exercida</td><td>Descrição da contribuição.</td><td>2026/1 · 2026/2</td></tr>
            <tr><td><a href="#">Nome do estudante</a></td><td><a href="#">Negrótica — 2026</a></td><td>Função exercida</td><td>Descrição da contribuição.</td><td>2026/1 · 2026/2</td></tr>
            <tr><td><a href="#">Nome do estudante</a></td><td><a href="#">Negrótica — 2026</a></td><td>Função exercida</td><td>Descrição da contribuição.</td><td>2026/1 · 2026/2</td></tr>
            <tr><td><a href="#">Nome do estudante</a></td><td><a href="#">Negrótica — 2026</a></td><td>Função exercida</td><td>Descrição da contribuição.</td><td>2026/1 · 2026/2</td></tr>
          </tbody>
        </table>
      </div>
      <nav class="mt-4" aria-label="Paginação">
        <ul class="pagination justify-content-center mb-0">
          <li class="page-item disabled"><a class="page-link" href="#">Anterior</a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">Próxima</a></li>
        </ul>
      </nav>

    </div>
  </section>
  
    <jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>