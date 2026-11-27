<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:if test="${not empty mensagemSucesso}">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <i class="fa-solid fa-circle-check me-2"></i>
        <c:out value="${mensagemSucesso}" />
        <button type="button" class="btn-close" data-bs-dismiss="alert"
            aria-label="<fmt:message key='geral.botao.fechar' />"></button>
    </div>
    <c:remove var="mensagemSucesso" scope="session" />
</c:if>

<c:if test="${not empty erros}">
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <ul class="list-unstyled mb-0">
            <c:forEach var="erro" items="${erros}">
                <li>
                    <i class="fa-solid fa-triangle-exclamation me-2"></i>
                    <c:out value="${erro}" />
                </li>
            </c:forEach>
        </ul>
        <button type="button" class="btn-close" data-bs-dismiss="alert"
            aria-label="<fmt:message key='geral.botao.fechar' />"></button>
    </div>
    <c:remove var="erros" scope="session" />
</c:if>