<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<t:layout titulo="pagina-nova-atividade">

	<jsp:include page="/WEB-INF/includes/header.jsp" />

	<header class="page-head circuit-bg">
    <div class="container">
      <nav aria-label="breadcrumb"><ol class="breadcrumb"><li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/"><fmt:message key="atividade.breadcrumb.inicio" /></a></li><li class="breadcrumb-item"><a href="#"><fmt:message key="atividade.breadcrumb.gerenciar" /></a></li><li class="breadcrumb-item active" aria-current="page"><fmt:message key="atividade.nova.titulo" /></li></ol></nav>
      <span class="sec-label">// <fmt:message key="atividade.nova.secao" /></span>
      <h1><fmt:message key="atividade.nova.titulo" /></h1>
      <p><fmt:message key="atividade.nova.subtitulo" /></p>
    </div>
  </header>

  <jsp:include page="/WEB-INF/includes/mensagens.jsp" />

  <section class="block">
    <div class="container">
      <div class="row g-4">
        <div class="col-lg-8">
          <div class="form-panel">
            <form action="${pageContext.request.contextPath}/admin" method="post">
              <input type="hidden" name="acao" value="gravarAtividade">
              <div class="row g-3">
                <div class="col-md-8"><label for="titulo" class="form-label"><fmt:message key="atividade.label.titulo" /> *</label>
                <input name="titulo" type="text" class="form-control" id="titulo" value="<c:out value='${atividade.titulo}' />" placeholder="<fmt:message key='atividade.placeholder.titulo' />" required>
                </div>
                <div class="col-md-4">
                <label for="tipo" class="form-label"><fmt:message key="atividade.label.tipo" /> *</label>
                <select name="tipo" class="form-select" id="tipo" required>
                <option value="" selected disabled><fmt:message key="atividade.select.selecione" /></option>
                <c:forEach var="t" items="${tipos}">
                  <option value="${t}" ${atividade.tipo == t ? 'selected' : ''}><c:out value="${t}" /></option>
                </c:forEach>
                </select>
                </div>
                
                <div class="col-12"><label for="descricao" class="form-label"><fmt:message key="atividade.label.descricao" /></label>
                <textarea name="descricao" class="form-control" id="descricao" rows="4" placeholder="<fmt:message key='atividade.placeholder.descricao' />"><c:out value="${atividade.descricao}" /></textarea></div>
                <div class="col-md-4"><label for="inicio" class="form-label"><fmt:message key="atividade.label.inicio" /></label><input name="inicio" type="date" class="form-control" id="inicio" value="${atividade.inicio}"></div>
                <div class="col-md-4"><label for="fim" class="form-label"><fmt:message key="atividade.label.termino" /></label><input name="fim" type="date" class="form-control" id="fim" value="${atividade.fim}"></div>
                <div class="col-md-4"><label for="situacao" class="form-label"><fmt:message key="atividade.label.situacao" /> *</label><select name="situacao" class="form-select" id="situacao" required><option value="" selected disabled><fmt:message key="atividade.select.selecione" /></option><c:forEach var="sit" items="${situacoes}"><option value="${sit}" ${atividade.situacao == sit ? 'selected' : ''}><c:out value="${sit}" /></option></c:forEach></select></div>
                <div class="col-12"><label for="coordenador" class="form-label"><fmt:message key="atividade.label.coordenador" /></label><select name="coordenadorId" class="form-select" id="coordenador"><option value="" selected><fmt:message key="atividade.select.selecione" /></option><c:forEach var="coord" items="${coordenadores}"><option value="${coord.id}" ${atividade.coordenador.id == coord.id ? 'selected' : ''}><c:out value="${coord.nome}" /></option></c:forEach></select></div>
                <div class="col-12">
                  <label class="form-label d-block"><fmt:message key="atividade.label.periodos" /> *</label>
                  <c:forEach var="per" items="${periodos}" varStatus="status">
                    <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="periodos" id="per-${status.index}" value="${per.id}" <c:if test="${periodosSelecionados != null && periodosSelecionados.contains(per.id)}">checked</c:if>>
                    <label class="form-check-label" for="per-${status.index}"><c:out value="${per.nome}" /></label>
                    </div>
                  </c:forEach>
                  <div class="form-text"><fmt:message key="atividade.help.periodos" /></div>
                </div>
              </div>
              <div class="d-flex gap-2 mt-4">
                <button type="submit" class="btn btn-neon px-4"><i class="fa-solid fa-floppy-disk me-2"></i><fmt:message key="atividade.botao.salvar" /></button>
                <a href="${pageContext.request.contextPath}/admin?acao=listarAtividades" class="btn btn-ghost px-4"><fmt:message key="atividade.botao.cancelar" /></a>
              </div>
            </form>
          </div>
        </div>
        <div class="col-lg-4"><div class="side-note"><strong><fmt:message key="atividade.aviso.titulo" /></strong><br><fmt:message key="atividade.aviso.texto" /></div></div>
      </div>
    </div>
  </section>

	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>