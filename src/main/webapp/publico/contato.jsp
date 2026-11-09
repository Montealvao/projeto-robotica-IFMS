  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<t:layout titulo="index">

    <jsp:include page="/WEB-INF/includes/header.jsp" />
    
 <header class="page-head circuit-bg">
    <div class="container">
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="#">Início</a></li><li class="breadcrumb-item active" aria-current="page">Contato</li></ol></nav>
      <span class="sec-label">// Contato</span>
      <h1>Fale com o laboratório</h1>
      <p>Informações institucionais, redes sociais e créditos do portal.</p>
    </div>
  </header>

  <section class="block">
    <div class="container">
      <div class="row g-5">
        <div class="col-lg-6">
          <span class="sec-label">// Onde estamos</span>
          <h2 class="sec-title">Informações institucionais</h2>
          <div class="info-row"><i class="fa-solid fa-building-columns"></i><div><strong>Instituição</strong><span>Instituto Federal de Mato Grosso do Sul</span></div></div>
          <div class="info-row"><i class="fa-solid fa-location-dot"></i><div><strong>Campus</strong><span>Campo Grande — endereço completo</span></div></div>
          <div class="info-row"><i class="fa-solid fa-door-open"></i><div><strong>Laboratório</strong><span>Bloco / sala do Laboratório de Robótica</span></div></div>
          <div class="info-row"><i class="fa-solid fa-envelope"></i><div><strong>E-mail</strong><span>contato@exemplo.ifms.edu.br</span></div></div>
          <div class="info-row"><i class="fa-solid fa-clock"></i><div><strong>Atendimento</strong><span>Dias e horários de funcionamento</span></div></div>
        </div>
        <div class="col-lg-6">
          <span class="sec-label">// Redes</span>
          <h2 class="sec-title">Acompanhe as novidades</h2>
          <div class="achievement mt-4" style="border-color:rgba(25,230,180,.4);background:linear-gradient(135deg,rgba(25,230,180,.08),transparent 60%),var(--panel)">
            <div class="d-flex gap-3 align-items-start">
              <div class="trophy" style="color:var(--neon)"><i class="fa-brands fa-instagram"></i></div>
              <div>
                <h3 class="h5 text-white">@robotican.cg</h3>
                <p class="text-muted-2">Fotos, eventos, oficinas e bastidores dos projetos do laboratório.</p>
                <a href="https://www.instagram.com/robotican.cg" target="_blank" rel="noopener" class="btn btn-outline-neon btn-sm">Abrir no Instagram <i class="fa-solid fa-arrow-up-right-from-square ms-1"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="block alt">
    <div class="container">
      <span class="sec-label">// Créditos</span>
      <h2 class="sec-title">Quem desenvolveu o portal</h2>
      <div class="row g-4 mt-2">
        <div class="col-md-6"><div class="tcard d-flex gap-3"><div class="avatar flex-shrink-0"><i class="fa-solid fa-code"></i></div><div><h4>Integrante 1</h4><p>TSI — IFMS Campo Grande</p></div></div></div>
        <div class="col-md-6"><div class="tcard d-flex gap-3"><div class="avatar flex-shrink-0"><i class="fa-solid fa-code"></i></div><div><h4>Integrante 2</h4><p>TSI — IFMS Campo Grande</p></div></div></div>
      </div>
      <p class="text-muted-2 mt-4 mb-0 small">Projeto da disciplina de Linguagem de Programação II — Tecnologia em Sistemas para Internet.</p>
    </div>
  </section>
  
      <jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>